import 'ClassTaxi.dart';
import 'ClassBus.dart';
import 'ClassPesawat.dart';
import 'ClassPemesanan.dart';
import 'ClassAbstractTransportasi.dart';

//Fungsi Global untuk membuat pemesanan
Pemesanan buatPemesanan(Transportasi t, String nama, int jumlahPenumpang) {
  String idPemesanan = "P${DateTime.now().millisecondsSinceEpoch}";
  return Pemesanan(idPemesanan, nama, t, jumlahPenumpang);
}

//Fungsi Global untuk menampilkan semua pemesanan
void tampilSemuaPemesanan(List<Pemesanan> daftar) {
  for (var pemesanan in daftar) {
    pemesanan.cetakStruk();
    print("");
  }
}

void main() {
  //Objek transportasi
  Taxi taksi = Taxi("T001", "Taksi Online", 10000, 4, 15);
  Bus bus = Bus("B003", "Bus Trans Metro Bandung", 25000, 25, true);
  Pesawat pesawat = Pesawat("W005", "Wings", 700000, 150, "Bisnis");

  Pemesanan order1 = buatPemesanan(taksi, "Izzah", 3);
  Pemesanan order2 = buatPemesanan(bus, "Asse", 5);
  Pemesanan order3 = buatPemesanan(pesawat, "Zikra", 1);

  List<Pemesanan> daftarPemesanan = [order1, order2, order3];

  tampilSemuaPemesanan(daftarPemesanan);
}
