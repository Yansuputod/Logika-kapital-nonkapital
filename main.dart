void main() {
  String kata = "cari tEmpat PKL yg nyaman";

  Judul judul = Judul();
  Kalimat kalimat = Kalimat();

  judul.main(kata);
  kalimat.main(kata);
}

class Judul {
  void main(String kata) {
    String result = "";
    List<String> pisahKata = kata.split(" ");

    for (int i = 0; i < pisahKata.length; i++) {
      String text = pisahKata[i];
      String? hasil;
      String hasil1 = "";

      for (int j = 0; j < text.length; j++) {
        if (j == 0) {
          hasil = text[j].toUpperCase();
        } else {
          hasil = text[j].toLowerCase();
        }
        hasil1 = hasil1 + hasil;
      }

      result = result + " " + hasil1;
    }
    print(result);
  }
}

class Kalimat {
  void main(String kata) {
    String result = "";
    List<String> pisahKata = kata.split(" ");

    for (int i = 0; i < pisahKata.length; i++) {
      String text = pisahKata[i];
      String hasil1 = "";

      for (int j = 0; j < text.length; j++) {
        if (i == 0) {
          if (j == 0) {
            hasil1 = hasil1 + text[j].toUpperCase();
          } else {
            hasil1 = hasil1 + text[j].toLowerCase();
          }
        } else {
          hasil1 = hasil1 + text[j].toLowerCase();
        }
      }

      result = result + " " + hasil1;
    }
    print(result);
  }
}
