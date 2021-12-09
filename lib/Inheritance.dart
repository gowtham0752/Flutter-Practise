
void main(){

 var ss = A();
 // ss.getData();
  ss.getDatas();

}

class A extends B {

}

class B  extends C{

  void getDatas(){
    print("B class");
  }
}

class C{

  void getDatas(){
    print("C class");
  }
}

class D{

  void getDatas(){
    print("D class");
  }
}