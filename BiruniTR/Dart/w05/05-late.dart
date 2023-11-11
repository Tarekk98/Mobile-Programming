void main(List<String> args) {
  Student o1 = Student(2);
  o1.adi = "";

  print(o1.id);
}

class Student {
  /*
   int? id;  //risksiz//?= isim olarak:  no lable
   String? adi;  //risksiz
   */

  late int id; //riskli//id =null kesin olamaz
  late String adi; //riskli //adi =null kesin olamaz

  final int department;
  Student(this.department) {
    //risksiz//hata üretmez
  }
}
