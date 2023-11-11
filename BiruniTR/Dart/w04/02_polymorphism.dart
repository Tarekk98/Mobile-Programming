void main(List<String> args) {
  //isYaptir(Insan()); //fonksiyon
  //isYaptir(Canli());
  //isYaptir(Balik());
  //isYaptir(Kus());

  iletisim(SmsService());//1
  iletisim(EmailService());//1
}


abstract class MessageService {
  
  //فئة
  void SendMessage(); //أساليب افتراضية

  void ReadMessage(); //أساليب افتراضية
}

class SmsService implements MessageService {//4

  @override
  void SendMessage() {//4
    print("Sms message sent!");
  }

  @override
  void ReadMessage() {
    print("Sms message read!");
  }  
}

class EmailService implements MessageService {

   @override
  void SendMessage() {
    print("Email message sent!");
  }

  @override
  void ReadMessage() {
    print("Email message read!");
  }
}

void iletisim(MessageService messenger) {//2 messenger yerine geldi SmsService(),
//void iletisim(MessageService SmsService()) {
  //........
  messenger.SendMessage();//3
 // SmsService().SendMessage();//3
  messenger.ReadMessage();
}
//************************************************************************* */
/*void isYaptir(Canli c) {
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
}*/
