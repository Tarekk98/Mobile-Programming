void main(List<String> args) {
  //A-Iteratif döngüler
  //loops => döngüler

  for (var i = 1; i <= 15; i++) {
    print(i);
  }

  print("-------------------------------------");
  //************************************************************ */
  int sayac = 1;
  while (sayac <= 15) {
    print(sayac);
    sayac++;
  }
  print("-------------------------------------");
  //*********************************************************** */
  sayac = 1;
  do {
    print(sayac);
    sayac++;
  } while (sayac <= 15);
//**************************************************************** */
/*  //infinite loops/sonsuz döngüler
  for (;;) {
    print("İşlem");
    //if (true) break;  //döngüden tamamen çıkar
    // continue // alt satrıları çalışıma döngü başına döner
  }*/

  //**************************************************************** */

  /*while (true) {
    //break; continue;
    //işlemler
  }*/

//****************************************************** */

//for in dongusu
  List<int> list1 = [1, 2, 3];
  for (var element in list1) {
    print(element);
  }

//*********************************************************** */

//recursive
//recursive döngüler /Özyinelemeli
//Fib   0 1 1 2 3 5 8 13 21 .....
  int Fibonacci(int index) {
    if (index == 0 || index < 0) return 0;
    if (index == 1 || index == 2) return 1;

    return Fibonacci(index - 1) + Fibonacci(index - 2);
  }

  for (var i = 0; i <= 5; i++) {
    //0,1,2,3,4,5
    print(Fibonacci(i));
  }

/**************************************************** */
  /*void main(List<String> args) {//quiz örneği
    int Fibonacci(int index) {
      if (index <= 0) {
        return 0;
      } else if (index % 2 == 0) {
        return index + Fibonacci(index - 1);
      }

      return index * Fibonacci(index - 2);
    }

    for (var i = 1; i <= 5; i++) {
      //0,1,2,3,4,5
      print(Fibonacci(i));
      print("000000000000000000000000000000000000000000000");
    }
*/
/******************************************************** */
//1 den n e kadar olan sayıların top:
  int Toplam(int n) {
    if (n == 0) return 0;
    var top = n + Toplam(n - 1);
    return top;
  }

  print(Toplam(5));
}
