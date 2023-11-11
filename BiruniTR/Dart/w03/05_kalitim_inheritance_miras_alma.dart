void main(List<String> args) {
//1:
  User kullan = User();
  kullan.kullaniciAdi = "asecer1";
  kullan.sifre = "123";
  kullan.girisYap();
  kullan.cikisYap();
  kullan._ozelBisey();

//********************************************************************** */
//2:
  AnonimUser anonimUser = AnonimUser();
  anonimUser.kullaniciAdi = "asecer2";
  anonimUser.sifre = "123";
  anonimUser.girisYap();
  anonimUser.ozelBisey();

  //****************************************************************** */
  //3:

  AdminUser adminUser = AdminUser();
  adminUser.kullaniciAdi = "asecer3";
  adminUser.sifre = "123";
  adminUser.girisYap();
  adminUser.ozelBisey();

/********************************************************************* */
//4:
  GucluAdminUser gucluAdminUser = GucluAdminUser();
  gucluAdminUser.kullaniciAdi = "gucluAdminUser";
  gucluAdminUser.sifre = "123";
  gucluAdminUser.girisYap();
  gucluAdminUser.ozelbisey();

/******************************************************************* */
//5:
  //polymorphism
  List<User> kullanicilar = [];
  kullanicilar.add(User());
  kullanicilar.add(AnonimUser());
  kullanicilar.add(AdminUser());
  kullanicilar.add(GucluAdminUser());

  /*for (var item in kullanicilar) {//item =üye
    //item.girisYap();
  }*/

  kullanciKontrol(AnonimUser());
  kullanciKontrol(User());
}

//polymorph örneği
void kullanciKontrol(User herhangibirisim) {
  herhangibirisim.girisYap();
}

//********************************************************************** */
//1:
class User {
  User() {
    // print("User() nesnesi oluştu....");
  }
  String? kullaniciAdi;
  String? sifre;

  void girisYap() {
    print("User Kullıcı doğrulandı 1");
    print("User Yetkiler alındı 1");
    print("User Giriş yapti 1");
  }

  void cikisYap() {
    print("User oturum temizlendi");
    print("User çıkış yaptı");
  }

  void _ozelBisey() {
    print("*************************************************");
  }
}

/***************************************************************** */
class AnonimUser extends User {
  AnonimUser() {
    // print("AnonimUser() nesnesi oluştu....");
  }

  @override //benzerlik
  void girisYap() {
    print("AnonimUser Kullıcı doğrulandı 1");
    print("AnonimUser Yetkiler alındı 1");
    print("AnonimUser Giriş yapti 1");
  }

  @override
  void cikisYap() {
    print("AnonimUser oturum temizlendi");
    print("AnonimUser çıkış yaptı");
  }

  @override
  void ozelBisey() {
    print("0000000000000000000000000000000000000000000000000");
  }

  // void A() {}
}

/******************************************************************** */
class AdminUser extends User {
  AdminUser() {
    // print("AdminUser() nesnesi oluştu....");
  }

  @override
  void girisYap() {
    print("AdminUser Kullıcı doğrulandı2");
    print("AdminUser Yetkiler alındı2");
    print("AdminUser Giriş yapti2");
  }

  @override
  void cikisYap() {
    print("AdminUser oturum temizlendi");
    print("AdminUser çıkış yaptı");
  }

  @override
  void ozelBisey() {
    print("111111111111111111111111111111111111111111111111111");
  }

  void _A() {} //private
}

/*********************************************************************** */
class GucluAdminUser extends AdminUser {
  GucluAdminUser() {
    // print("GucluAdminUser() nesnesi oluştu....");
  }

  @override
  void girisYap() {
    print("GucluAdminUser Kullıcı doğrulandı");
    print("GucluAdminUser Yetkiler alındı");
    print("GucluAdminUser Giriş yapti");
  }

  void ozelbisey() {
    print("2222222222222222222222222222222222222222222222222222");
  }
  //void C() {}
}
/*********************************************************************** */
