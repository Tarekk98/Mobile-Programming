void main(List<String> args) {
  Kuyruk<double> reel = Kuyruk();
  Kuyruk<int> tamsayi = Kuyruk();
  Kuyruk<String> isimler = Kuyruk();

  islem<int>(1, 1);//işlem
}

void dugum<K,V>(K key){
 //.... 
}

void islem<T>(T a,T b) {
  ///....
  ///
  ///
}

//built in - generic class

List<int> list = [];
//1. `List<int> list = [];`: ينشئ هذا السطر `list`، int (عدد صحيح) وهي قائمة فارغة سيتم استخدامها لتخزين البيانات من النوع .
// يتم استخدام العبارة `[]` لإنشاء قائمة فارغة. يمكن أن تحتوي هذه القائمة على قيم عددية فقط
List<String> list2 = [];
Map<int, String> coll = {};
//Bu kod satırı, Dart programlama dilinde boş bir eşleme (Map) oluşturur. `coll` adını taşıyan bu eşleme, 
//int (tam sayı) türünde anahtarlarla String (metin) türünde değerleri saklamak için kullanılır.
//`{}` ifadesi, Dart'ta boş bir eşleme oluşturmak için kullanılır. Bu eşleme, anahtar-değer çiftlerini saklamak için kullanılır.
// Bu durumda, anahtarlar int türünde olacak ve değerler String türünde olacak.

//user defined

class SayiKuyrugu {
  List<int> list = [];
  void ekle(int a) {//Bu bir fonksiyondur
    list.add(a);
  }

  int cikar() {//Bu bir fonksiyondur
    var removed = list.first;
    list.remove(list.first);
    return removed;
  }
  //4. `int cikar() { ... }`: Bu sınıf içinde tanımlanan bir işlevdir. "cikar" adını taşır ve hiçbir parametre almaz.
  // Bu işlev, listenin ilk (en önce eklenen) elemanını kuyruktan çıkarır ve bu elemanı döndürür. Yani,
  // kuyruğun başındaki elemanı kuyruktan çıkarır ve bu elemanı geri verir.
}

//generic user defined class
class Kuyruk<T> {
  // `<T>` ifadesi, sınıfın generic (genel tür) olduğunu ve bu sınıfın farklı türlerdeki verileri saklamak için kullanılabileceğini belirtir. 
  //`T`, kullanıcı tarafından belirlenecek olan türdür.
//generic user defined method
  List<T> list = [];
  void ekle(T a) {
    list.add(a);
  }

  T cikar() {//T==int double ....her şey olabilir
    var removed = list.first;
    list.remove(list.first);
    return removed;
  }
  //db yaz...
}
