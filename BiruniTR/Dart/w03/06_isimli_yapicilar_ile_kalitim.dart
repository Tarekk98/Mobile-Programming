void main(List<String> args) {
  Bclass b = Bclass(2);
  Bclass c1 = Bclass.ym2(2, 2);
  Cclass c = Cclass(2);
}

int? a;

class Aclass {
  Aclass();

  Aclass.ym1(int a) {
    //....
  }

  Aclass.ym2(int a, int b);

  void m() {}
}

class Bclass extends Aclass {
  //bir alt sınıfın üst sınıfındaki bir üyenin çağrılmasını ifade eden bir anahtar kelimedir//super=this
  Bclass(int a) : super.ym1(a) {
    //....
  }
  Bclass.ym2(int a, int b) : super.ym2(a, b);
}

class Cclass extends Bclass {
  Cclass(int a) : super(a) {
    //....
  }
}
