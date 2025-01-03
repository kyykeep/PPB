void cetakPesan(String pesan) {
  // Fungsi untuk mencetak pesan
  print(pesan);
}

int perkalian(int a, int b) {
  // Fungsi untuk menghitung perkalian dua angka
  return a * b;
}

void main() {
  // Memanggil fungsi perkalian
  int hasil = perkalian(7, 3);
  print("Hasil perkalian: $hasil");

  // Memanggil fungsi cetakPesan
  cetakPesan("Kamu Hebat!");
}
