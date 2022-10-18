/* This example shows how to over-ride a class. 
A superclass class "parent" is created which a method "display"
A subclass/extended/derived class "child" is created which also has the method "display"
Super keyword is used in derived class to refer to the members, methods of super class. This is used when the members/method of super class is over-ridden by subclass
*/

class parent;
  task display();
    $display("INSIDE PARENT CLASS");
  endtask
endclass

class child extends parent;
  task display();
    super.display();
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

//------OUTPUT--------

INSIDE PARENT CLASS
INSIDE PARENT CLASS
INSIDE CHILD CLASS
