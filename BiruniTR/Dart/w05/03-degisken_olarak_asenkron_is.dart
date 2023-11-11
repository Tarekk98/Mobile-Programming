import 'dart:async';

void main(List<String> args) async {
  var islem =  Future.delayed(Duration(seconds: 5), () {
    
    int top = 0;
    for (var i = 0; i <= 5; i++) {
      top += i;
    }
    return top;
  });

  var sonuc = await islem;

  print("hello $sonuc");
}
