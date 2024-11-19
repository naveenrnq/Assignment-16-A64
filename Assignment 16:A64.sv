class generator;

  rand bit rst;
  rand bit wr;

  constraint rst_wr {
                 wr  dist {0 :/ 50, 1 :/ 50};
                 rst dist {0 :/ 30, 1 :/ 70};
                     }
  

endclass


module tb;

  generator g;
  
  initial begin
    g = new();
    
    for(int i = 0; i<20; i++) begin
      g.randomize();
      $display("Value of rst: %0d, Value of wr: %0d",g.rst,g.wr);

    end
  end


endmodule
