// async , await

/*void main(List<String> args) async {
  print("İşler Başladı");

  Future.delayed(Duration(seconds: 2), () async {
    for (var i = 0; i < 5; i++) {
      await Future.delayed(Duration(seconds: 1));
      print("sayi $i");
    }
    print("sayiler bitti");
  });

  Future.delayed(Duration(days: 0), () async {
    for (var i = 0; i < 10; i++) {
      print("renk $i");
      await Future.delayed(Duration(seconds:1));
    }
    print("renkler bitti");
  });

  print("****** Çok acil bir iş bitti *****");

  print("Tüm işler bitti");
}*/



void main(List<String> args) async {
  print("İşler Başladı");

  await Future.delayed(Duration(seconds: 2), () async {
    for (var i = 0; i < 5; i++) {
      await Future.delayed(Duration(seconds: 1));
      print("sayi $i");
    }
    print("sayiler bitti");
  });

  await Future.delayed(Duration(days: 0), () async {
    for (var i = 0; i < 10; i++) {
      print("renk $i");
      await Future.delayed(Duration(seconds:1));
    }
    print("renkler bitti");
  });

  print("****** Çok acil bir iş bitti *****");

  print("Tüm işler bitti");
}


























/************************************************************* */

/*void main(List<String> args) async {
  print("işler başladı");
  Future.delayed(Duration(seconds: 3), () {
    print("tarek");
  });
  print("işler bitti");
}*/
/******************************************************** */
/*void main(List<String> args) async {
  print("işler başladı");
  await Future.delayed(Duration(seconds: 3), () {
    print("tarek");
  });
  print("işler bitti");
}*/
/********************************************************** */
/*void main(List<String> args) async {
  var a;
  print("işler başladı");
  Future.delayed(Duration(seconds: 3), () {
    a = 10;
    print("tarek");
  });
  print("işler bitti $a");
}*/
/***************************************************************** */
/*void main(List<String> args) async {
  var a;
  print("işler başladı");
  await Future.delayed(Duration(seconds: 3), () {
    a = 10;
    print("tarek");
  });
  print("işler bitti $a");
}*/
