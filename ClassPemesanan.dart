import 'ClassAbstractTransportasi.dart';

//Kelas Pemesanan
class Pemesanan {
  String idPemesanan;
  String namaPelanggan;
  Transportasi transportasi;
  int jumlahPenumpang;
  double totalTarif;

  Pemesanan(this.idPemesanan, 
  this.namaPelanggan, 
  this.transportasi, 
  this.jumlahPenumpang)
  : totalTarif = transportasi.hitungTarif(jumlahPenumpang);

  //Method Struk Pelanggan
  void cetakStruk() {
    print("Pemesanan ID: $idPemesanan");
    print("Nama Pelanggan: $namaPelanggan");
    print("Transportasi: ${transportasi.namaTransportasi}");
    print("Jumlah Penumpang: $jumlahPenumpang");
    print("Total Tarif: $totalTarif");
  }

  // Method Data Pemesanan
  Map<String, dynamic> toMap() {
    return {
      'idPemesanan': idPemesanan,
      'namaPelanggan': namaPelanggan,
      'transportasi': transportasi.namaTransportasi,
      'jumlahPenumpang': jumlahPenumpang,
      'totalTarif': totalTarif
    };
  }
}