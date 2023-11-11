void main(List<String> args) async {
  print("Başlangıç");

  // await isA();

  /*await Future.delayed(Duration(seconds: 2), () async {
    var sonuc = await islerB();//1
    print(sonuc);//3
  });*/

 /* await*/ islerA().then((sonuc) {
    //...
    print(sonuc);
  }).onError((error, stackTrace) {
    //....
  }).whenComplete(() {
    //whenComplete=fainaly=bir hata olup olmadığını bile bu komutlar gerçekleştirir
    print("tarek");
  });

  print("Acil İş");
  print("Bitiş");
}

Future islerA() async {
  await Future.delayed(Duration(seconds: 2), () async {
    for (var i = 0; i < 5; i++) {
      await Future.delayed(Duration(seconds: 1));
      print("sedra $i");
    }
    print("sedra bitirdi");
  });
  return 60;
}



Future<int> islerB() async {//2
  await Future.delayed(Duration(seconds: 2), () async {
    for (var i = 0; i < 6; i++) {
      await Future.delayed(Duration(seconds: 1));
      print("sama $i");
    }
  });

  return 60;
}
















/******************************************************* */
/*void main(List<String> args) async {
//Asynchronous غير متزامنة
// Synchronous  متزامنة
  int sayi = await ShowDartInfo();
  print("sayi $sayi");
  print("araba");
}

Future<int> ShowDartInfo() async {
  await Future.delayed(Duration(seconds: 5), () {
    print("tarek");
  });
  return 60;
}*/

/************************************************* */
//then

/*void main(List<String> args) async {
//Asynchronous غير متزامنة
// Synchronous  متزامنة
  //int sayi = await ShowDartInfo();
  int sayi=0;
  /*await*/ ShowDartInfo().then((value) {
    print("$value");
  });
  print("sayi $sayi");
  print("araba");
}

Future<int> ShowDartInfo() async {
  await Future.delayed(Duration(seconds: 5), () {
    print("tarek");
  });
  return 60;
}*/
