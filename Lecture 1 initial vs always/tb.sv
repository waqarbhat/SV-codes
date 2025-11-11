// Code your testbench here
// or browse Examples

module tb;
  reg clk;
  reg [4:0] counter = 0;
  
  initial begin
//     #10
    clk = 0;
    $display ("Simulation started at time = %0t ns", $time);
  end
   
  always #5 clk = ~clk;
  
  always @(posedge clk) begin
    counter <= counter + 1;
    $display ("Time = %0t ns | Counter = %0d", $time, counter);
  end
  
  initial begin
    $dumfile("dump.vcd");
    $dumpvars;
  end
  
  initial begin
    $display ("Inside this block = %0t ns", $time);
    #200 $finish;
  end
  
endmodule


