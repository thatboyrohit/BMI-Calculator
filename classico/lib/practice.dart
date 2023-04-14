import 'dart:io';
void main() {
  print('hello');

var myc = myclass();
myc.add(5,6);
myc.add(200, 300);
/*myc.printname("hello guys ");

myc.printname("welcome");

myc.printname("bad liar");*/

}
class myclass{
  void printname(String name){
    print(name);
  }
  int add(int no1 , int no2){
    int sum = no1+no2;
    print(sum);
    return sum;
  }
}



