/* we have three classes (class base_1, base_2, base_3 respectively) and these three classes have their three extended classes(class ext_1,ext_2,ext_3 respectively)
Now the three extended classes have their handles c1,c2 and c3 respectively. 
Only these three handles are given to you and you're supposed to tell base class of each extended handle. 
All the classes are encrypted and nothing can be changed inside them. And no errors should be there while we simulate the code.*/

class base_1;
  task display();
    $display("BASE_1");
  endtask
endclass

class base_2;
  task display();
    $display("BASE_2");
  endtask
endclass

class base_3;
  task display();
    $display("BASE_3");
  endtask
endclass

class ext_1 extends base_1;
  task display();
    $display("ext_1");
    super.display();
  endtask
endclass

class ext_2 extends base_2;
  task display();
    $display("ext_2");
    super.display();
  endtask
endclass

class ext_3 extends base_3;
  task display();
    $display("ext_3");
    super.display();
  endtask
endclass

module tb;
  ext_1 c1;
  ext_2 c2;
  ext_3 c3;
  base_1 b1;
  base_2 b2;
  base_3 b3;
  
  initial begin
    c1 = new();
    c2 = new();
    c3 = new();
    b1 = new();
    b2 = new();
    b3 = new();
    if($cast(b1,c1))
      $display("the base class of c1 is base_1");
    else if ($cast(b2,c1))
      $display("the base class of c1 is base_2");
    else if ($cast(b3,c1))
      $display("the base class of c1 is base_3");
    
    if($cast(b1,c2))
      $display("the base class of c2 is base_1");
    else if ($cast(b2,c2))
      $display("the base class of c2 is base_2");
    else if ($cast(b3,c2))
      $display("the base class of c2 is base_3"); 
    
    if($cast(b1,c3))
      $display("the base class of c3 is base_1");
    else if ($cast(b2,c3))
      $display("the base class of c3 is base_2");
    else if ($cast(b3,c3))
      $display("the base class of c3 is base_3");   
  end
endmodule

//-----OUTPUT------
the base class of c1 is base_1
the base class of c2 is base_2
the base class of c3 is base_3
