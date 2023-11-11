void main(List<String> args) {


  List<String> isimler = [];
  //List  isimler = <String> [];
  //List<String>  isimler = <String> [];
  isimler.add("Aydın");
  isimler.add("Mehmet");
  var sonuc = isimler.where((element) => element.startsWith("A"));
  for (var element in sonuc) {
    print(element);
  }


  print("---------------------");
  for (var i = 0; i < isimler.length; i++) {
    print(isimler[i]);
  }
  print("---------------------");
  for (var element in isimler) {
    print(element);
  }
    print("---------------------");


  isimler.add("Mustafa");

  isimler[1] = "Ahmet";

  print(isimler.length);
  print(isimler.isEmpty);
  var birlestir = isimler.join("@");
  print(birlestir);
  var dizi = birlestir.split("@");
  print(dizi);

  List<dynamic> liste2 = [1, true, "Aydın", DateTime(2025)];
  //`dynamic` tipi, bu listenin her türden veri içerebileceği anlamına gelir.
}
