// The example shows the over-riding of contraints

class parent;
  rand int var1;
  constraint ABC{var1>0 ; var1<100;} 
endclass

class child extends parent;
  constraint ABC{var1>50 ; var1<70;} 
endclass

module tb;
  child c;
  initial begin
    c = new();
    for(int i; i<9; i=i+1)
      begin
        c.randomize();
        $display("value of var = %0d",c.var1);
      end
  end
endmodule

//----OUTPUT-----
value of var = 54
value of var = 55
value of var = 62
value of var = 65
value of var = 55
value of var = 53
value of var = 68
value of var = 55
value of var = 62
