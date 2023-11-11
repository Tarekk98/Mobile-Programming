import 'araba.dart';

void main(List<String> args) {
  Araba araba1 = Araba(); //varsayılan obje oluşurucu

  Araba araba2 = Araba.markaIle(
    marka: "Mercedes",
  ); //isimli obje oluşturucu

  Araba araba3 = Araba.markaModelIle(
    "Mercedes",
    "AMG",
  ); //isimli obje oluşturucu

  Araba araba4 = Araba.markaModelYilIle(
    model: "AMG",
    marka: "Mercedes",
    yil: 2012,
  ); //isimli obje oluşturucu
}
