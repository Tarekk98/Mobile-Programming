void main(List<String> args) {}

//interface: Sınıf değildir,extend edilemez, concrete(somut) üye barıdıramak
//abstract: Sınıftır, sanal metot barındırabilir, instance alınamaz,sadece miras alınabilir

//dart dilince Interface yoktur, abstract sınıfları kullanırız
//abstract sınıflar dart ta hem extend hem de implemente edilebilir.

abstract class Matematik {
  // الملخص: إنها فئة، يمكن أن تحتوي على أساليب افتراضية، ولا يمكن إنشاء مثيل لها، ويمكن توريثها فقط.
  

  double toplama(double a, double b);
  double cikarma(double a, double b);
  double carpma(double a, double b);
  double bolme(double a, double b);
}

abstract class IleriMatematik {
  double intergral(double f, double x);
  double turev(double f, double x);
  double sureklilik(double f, double x);
}

class HesapMakinesi {
  //.....
}
class HesapMakinesii {
  //.....
}

class DortIslem extends HesapMakinesi implements Matematik, IleriMatematik {
  //https://1kodum.com/dart-dilinde-interface-kavrami/
  @override
  // TODO: implement PI
  double get PI => throw UnimplementedError();
//Dart'taki "=>" ifadesi kısa, tek satırlık işlevleri veya özellikleri tanımlamak için kullanılır 
//ve genellikle kodun daha okunabilir olmasına yardımcı olur.

//UnimplementedError()'u at; İfade, Dart programlama dilinde bir işlemin veya özelliğin henüz uygulanmadığını veya yürütülmediğini belirtmek için kullanılır. 
//Bu ifade, programın beklenmeyen bir durumla karşılaştığını ve bir hata oluştuğunu belirten bir istisna atar.

//`throw` kelimesi, Dart dilinde bir hata (exception) fırlatmak için kullanılır. `throw` ifadesi, bir programın çalışma zamanında bir hatayla karşılaşıldığında, programın normal akışını durdurarak hatayı işlemek için kullanılır. 

  @override
  double bolme(double a, double b) {
    // TODO: implement bolme
    throw UnimplementedError();
  }

  @override
  double carpma(double a, double b) {
    // TODO: implement carpma
    throw UnimplementedError();
  }

  @override
  double cikarma(double a, double b) {
    // TODO: implement cikarma
    throw UnimplementedError();
  }

  @override
  double intergral(double f, double x) {
    // TODO: implement intergral
    throw UnimplementedError();
  }

  @override
  double sureklilik(double f, double x) {
    // TODO: implement sureklilik
    throw UnimplementedError();
  }

  @override
  double toplama(double a, double b) {
    // TODO: implement toplama
    throw UnimplementedError();
  }

  @override
  double turev(double f, double x) {
    // TODO: implement turev
    throw UnimplementedError();
    
  }
}
