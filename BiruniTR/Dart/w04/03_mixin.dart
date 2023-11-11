
//mixin   ويستخدم لإضافة وظائف إضافية إلى الفئات

void main(List<String> args) {
  Kus sonono = Kus();
  sonono.tur();
}

mixin Ucabilen {
  int a = 1;
  void uc() {
    print("Uçabilirim");
  }
}

mixin Yuzebilen {
  int b = 2;
  void yuz() {
    print("Yüzebilirim");
  }
}

mixin Kosabilen {
  int c = 3;
  void kos() {
    print("Koşabilirim");
  }
}


//`with` kelimesi, Dart dilinde mixin kullanımını sağlar. 
//Mixin, bir sınıfa başka bir sınıfın özelliklerini eklemek için kullanılan bir mekanizmadır. 
class Kus with Ucabilen, Kosabilen,Yuzebilen {
  //....
  void tur() {
    print(a);
    print(b);
    print(c);
    uc();
    kos();
  }
}
