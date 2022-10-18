// Without super keyword, the over-riding the members/methods of super class is not possible in subclass

class parent;
  task display();
    $display("INSIDE PARENT CLASS");
  endtask
endclass

class child extends parent;
  task display();
    $display("INSIDE CHILD CLASS");
  endtask
endclass

module tb;
  parent p;
  child c;
  initial begin
    p = new();
    c = new();
    p.display();
    c.display();
  end
endmodule

//-------OUTPUT--------

INSIDE PARENT CLASS
INSIDE CHILD CLASS
