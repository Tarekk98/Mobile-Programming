
//mixin هو مفهوم مستخدم في لغة برمجة Dart ويستخدم لإضافة وظائف إضافية إلى الفئات

void main(List<String> args) {
  Kus k = Kus();
  k.m();
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

class Kus with Ucabilen, Kosabilen,Yuzebilen {
  //....
  void m() {
    print(a);
    uc();
    kos();
  }
}
