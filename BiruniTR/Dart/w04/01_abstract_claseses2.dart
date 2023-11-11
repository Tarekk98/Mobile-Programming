void main(List<String> args) {}

//interface: Sınıf değildir,extend edilemez, concrete(somut) üye barıdıramak
//abstract: Sınıftır, sanal metot barındırabilir, instance alınamaz,sadece miras alınabilir

//dart dilince Interface yoktur, abstract sınıfları kullanırız
//abstract sınıflar dart da hem extend hemde implemente edilebilir.

abstract class Matematik {
  // الملخص: إنها فئة، يمكن أن تحتوي على أساليب افتراضية، ولا يمكن إنشاء مثيل لها، ويمكن توريثها فقط.
  final PI = 3.14;

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

class DortIslem extends HesapMakinesi implements Matematik, IleriMatematik {
  @override
  // TODO: implement PI
  double get PI => throw UnimplementedError();
  //للتلخيص، يتم استخدام العبارة "=>" في Dart لتحديد وظائف أو خصائص قصيرة ذات سطر واحد وتساعد بشكل عام في جعل التعليمات البرمجية أكثر قابلية للقراءة.
  //رمي UnimplementedError(); يُستخدم التعبير في لغة برمجة Dart للإشارة إلى أن عملية أو ميزة لم يتم تنفيذها أو تنفيذها بعد. يطرح هذا البيان استثناءً، مما يشير إلى أن البرنامج واجه موقفًا غير متوقع وحدث خطأ.

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
