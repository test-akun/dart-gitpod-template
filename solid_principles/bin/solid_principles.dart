void main(List<String> arguments) {
  
  
  // SOLID Principle

  //// **** S-ingle Responsibility Principle ****
  ///
  /// jangan membuat super class
  /// class sebaiknya memiliki responsibility khusus
  /// untuk mencapai satu tujuan tertentu
  /// 
  
  //// ***** O-pen / Closed Principle *****
  ///
  /// Closed untuk modification
  /// Open untuk extention
  ///
  
  //// **** L-iskov Subtitution Principle ****
  ///
  /// Setiap class yang merupakan turunan dari parent-class
  /// harus memiliki sifat atau perilaku dari parent-class nya
  ///
  
  //// ***** I-nterface Segregation Principle ******
  ///
  /// Saat membuat interface, sebaiknya spesifik
  /// untuk tujuan tertentu.
  /// 
  /// jangan memaksakan class harus mengimplementasikan
  /// sesuatu yang tidak dibutuhkan
  /// 
  
  //// ***** D-ependency Inversion Principle ******
  ///
  /// Dalam prinsip ini, high level modul tidak boleh
  /// bergantung pada low level modul...
  /// 
  /// Kedua nya harus bergantung pada abstraction..
  /// 
  /// Sedangkan abstraction tidak boleh bergantung 
  /// pada detail.. Detaillah yang harus 
  /// bergantung pada abstraction..
  /// 
  /// Pada sebuah system, ada fitur yang global di implementasikan
  /// dengan sesuatu yang detail..
  /// 
  /// Yang global tidak mudah berubah, detail mudah berubah..
  /// ex:
  ///   - sebuah system punya fitur saveUser() => GLOBAL(HIGH LEVEL MODULE)
  ///   - implementasi saveUser() => bisa menggunakan firebase, suatu saat 
  ///     bisa pindah ke mysql server, atau pindah lagi di local database
  ///     => ini yang disebut LOW LEVEL MODULE
  /// 
  /// LOW LEVEL MODULE & HIGH LEVEL MODULE SEBAIKNYA TERPISAH
  /// 
  /// Supaya bisa terpisah, kita buat abstraction (seperti kontrak)
  ///   => jadi di high level module ada alat yang bisa dipakai untuk
  ///      saveUser()..
  ///      Apa alatnya high level module tidak peduli..
  /// 
  ///      Di low level module hanya bergantung pada kontrak, bahwa dia
  ///      punya kontrak untuk ngesave data user..
  ///      Dia tidak peduli data user siapa yang ngasih, siapa yang manggil..
  ///      Yang dia tau dia harus bisa save user ke database yang dituju.. 
}
