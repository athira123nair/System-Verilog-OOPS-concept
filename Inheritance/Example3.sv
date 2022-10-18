/*This exaple shows over-riding of Data Members.
The vale of j is assigned to 5 in parent class, while i is assigned to 4 in child class.
In module, value of j is modified to 3 (by c.j). This modification is only reflected in child class.
Meanwhile, the value of j is still 5 in parent class. This can be modified by p.j = 3 
*/

class parent;
  int j = 5;
  task print();
    $display ("value of j = %0d",j);
  endtask
endclass

class child extends parent;
  int i = 4;
  task display();
    $display ("value of i = %0d",i);
    $display ("value of j = %0d",j);
    super.print();
  endtask
endclass

module tb;
  parent p;
  child c;
  initial begin
    c = new();
    $display("BEFORE OVER_RIDING");
    c.display();
    c.j = 0+3;
    $display("AFTER OVER_RIDING");
    c.display;
    p = new();
    p.print();
  end
endmodule

//----OUTPUT------

BEFORE OVER_RIDING
value of i = 4
value of j = 5
value of j = 5
AFTER OVER_RIDING
value of i = 4
value of j = 3
value of j = 3
value of j = 5
