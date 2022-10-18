/* A subclass can also be a super-class.
parent  - superclass for child_1.
child_1 - subclass for parent and superclass for child_2.
child_2 - subclass for child_1
*/

class parent;
  task print();
    $display("INSIDE PARENT");
  endtask
endclass

class child_1 extends parent;
  task display();
    $display("INSIDE CHILD_1");
    super.print();
  endtask
endclass

class child_2 extends child_1;
  task display();
    $display("INSIDE CHILD_2");
    super.display();
  endtask
endclass

module tb;
  child_2 c2;
  initial begin
    c2 = new();
    c2.display();
  end
endmodule

//------OUTPUT-------

INSIDE CHILD_2
INSIDE CHILD_1
INSIDE PARENT
