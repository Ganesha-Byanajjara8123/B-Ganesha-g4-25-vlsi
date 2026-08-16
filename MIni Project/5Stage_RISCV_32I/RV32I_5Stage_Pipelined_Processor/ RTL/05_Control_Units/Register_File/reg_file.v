/* key-notes
write prots : CPU stores the data into regs
if wrEn=1 data will be stored in regs or wrEn=0 data will not stored in regs
destination addr: This selects WHICH register to write.
write data: 32-bit data entering the regfile
*/


module register_file(
input        clk,                    //Global ports
input        rst,
input        WrEn_in,                //write ports
input [4:0]  des_addr_in,
input [31:0] des_data_in, 
input [4:0]  src_addr1_in,          //Read ports  
input [4:0]  src_addr2_in,

output [31:0] src_data1_out,
output [31:0] src_data2_out

);

reg[31:0] my_regs[0:31];   //32-regs and each have 32-bits

integer i;

always@(posedge clk or posedge rst) begin
if(rst) begin
for(i = 0; i < 32; i = i + 1)
my_regs[i] = 32'b0;
end

    else if (WrEn_in) begin
    if(des_addr_in != 5'b00000)
    my_regs[des_addr_in] <= des_data_in;
end
end

assign src_data1_out = (WrEn_in && (des_addr_in != 0) && (des_addr_in == src_addr1_in))
                        ? des_data_in : my_regs[src_addr1_in];
											
						
assign src_data2_out = (WrEn_in && (des_addr_in != 0) && (des_addr_in == src_addr2_in))
                        ? des_data_in : my_regs[src_addr2_in];

endmodule
	
	
	
	
//WrEn_in- Is someone writing into the register file?
//des_addr_in != 0 - x0 is always zero. RISC-V never writes x0. So ignore it.
//des_addr_in == src_addr2_in :
 /*                             Suppose  WB is writing x2 = 20 then des_addr_in = 2
								Now ID wants src_addr2_in = 2,  Compare 2 == 2 TRUE : The register I am writing is exactly the register someone is reading.
				If TRUE:
						then ? des_data_in means Don't read memory. instead return 20, directly like 
						WB
                        20
						 │
                         ▼
                        src_data2_out

                        without touching memory
						This is called Bypassing or Forwarding inside Register File
				If FALSE:
				         Suppose WB writes x8 ID reads x2 , Now 8 == 2, FALSE so ... my_regs[src_addr2_in] Simply read normal memory.



*/




//this is only for single Cycle pro
//assign src_data1_out = my_regs[src_addr1_in];  //go to register selected by address return stored value
//assign src_data2_out = my_regs[src_addr2_in];
 

/*

Step 1: Your Original Register File

Your register file was:

assign src_data1_out = my_regs[src_addr1_in];
assign src_data2_out = my_regs[src_addr2_in];

This simply means:

"Whatever address comes in, go to that register and return its value."

For example, if

my_regs[1] = 10
my_regs[2] = 20

src_addr1_in = 1
src_addr2_in = 2

Then

src_data1_out = 10
src_data2_out = 20

Simple.

Step 2: Where did it fail?

Consider this program.

addi x1,x0,10
addi x2,x0,20
or   x5,x1,x2

Suppose we are in Cycle 6.

At this instant,

WB stage is writing

x2 = 20

At the same instant,

ID stage is trying to read

x2

So both are happening together.

            SAME CLOCK

WB ----------------> Register File
          Write x2=20

ID <---------------- Register File
          Read x2

Now imagine the register file memory.

Before clock edge

x2 = 0

After clock edge

x2 = 20

Question is:

During this clock edge, what should ID receive?

Without bypass,

it receives

0

because the array hasn't reflected the write yet.

That was your bug.

Step 3: What Claude added

Instead of directly reading memory,

he added a condition.

assign src_data2_out =
        (condition)
        ? des_data_in
        : my_regs[src_addr2_in];

Looks scary.

Let's simplify.

Step 4: The operator ?

This is called the ternary operator.

General syntax

(condition)
    ? value_if_true
    : value_if_false;

Exactly same as

if(condition)
    output = value_if_true;
else
    output = value_if_false;

Example

assign y = (a>b) ? a : b;

means

if(a>b)

    y=a;

else

    y=b;

Nothing more.

Step 5: Now let's decode YOUR line
assign src_data2_out =
(
WrEn_in &&
(des_addr_in != 0) &&
(des_addr_in == src_addr2_in)
)
?
des_data_in
:
my_regs[src_addr2_in];

We'll read it like English.

Condition 1
WrEn_in

Means

Is someone writing into the register file?

If no,

read memory normally.

Condition 2
des_addr_in != 0

Remember

x0 is always zero.

RISC-V never writes x0.

So ignore it.

Condition 3
des_addr_in == src_addr2_in

This is the magic.

Suppose

WB is writing

x2 = 20

Then

des_addr_in = 2

Now ID wants

src_addr2_in = 2

Compare

2 == 2

TRUE

Means

The register I am writing is exactly the register someone is reading.

Step 6: If TRUE

Then

?
des_data_in

means

Don't read memory.

Instead,

return

20

directly.

WB

20
 │
 │
 ▼

src_data2_out

without touching memory

This is called

Bypassing

or

Forwarding inside Register File

Step 7: If FALSE

Suppose

WB writes

x8

ID reads

x2

Now

8 == 2

FALSE

So

:
my_regs[src_addr2_in]

Simply read normal memory.

Step 8: Visual Diagram
Before
             Register File

      +----------------------+
      |                      |
Read--|--> my_regs[x2]=0 -----|----> ID
      |                      |
Write-|--> x2=20             |
      +----------------------+

Result

ID gets 0
After
                 Is write address
                 same as read address?

                      YES
                       │
                       ▼

             +-------------------+
Write Data -->|  MUX (Bypass)     |-----> ID
Memory ------>|                   |
             +-------------------+

ID gets 20 immediately

This is exactly what that single line of code is doing.

Step 9: Why didn't the forwarding unit solve this?

Excellent question.

Your forwarding unit works after the ID/EX register, in the EX stage:

Register File
      │
      ▼
ID
      │
      ▼
ID/EX Register
      │
      ▼
Forward MUX
      │
      ▼
ALU

The new bypass is inside the register file itself, before the ID stage even latches the operands:

Write Back
      │
      ▼
Register File (Bypass)
      │
      ▼
ID Stage

So they solve different timing problems:

Register-file bypass fixes a same-cycle WB → ID read/write conflict.
Forwarding unit fixes EX/MEM or MEM/WB → EX data hazards.
One sentence to remember forever

If the register being written in the current clock cycle is the same register being read, don't wait for the memory array to update—forward the write data directly to the read port.

That one sentence explains the entire code.
