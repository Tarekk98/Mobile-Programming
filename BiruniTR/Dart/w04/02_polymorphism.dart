void main(List<String> args) {
  isYaptir(Insan());
  isYaptir(Canli());
  isYaptir(Balik());
  isYaptir(Kus());

  iletisim(SmsService());
  iletisim(EmailService());

}


abstract class MessageService {//فئة
  void SendMessage();//أساليب افتراضية
  void ReadMessage();//أساليب افتراضية
  
}

void iletisim(MessageService messenger) {
  //.....
  messenger.SendMessage();
}

void isYaptir(Canli c ) {
  c.hareketEt();
}

class Canli {
  void hareketEt() {
    print("Canli hareket etti");
  }
}

class Kus extends Canli {
  @override
  void hareketEt() {
    print("Kuş uçmaya başladı");
  }
}

class Balik extends Canli {
  @override
  void hareketEt() {
    print("Balık yüzmeye başladı");
  }
}

class Insan extends Canli {
  @override
  void hareketEt() {
    print("Insan yürümeye başladı");
  }
}
