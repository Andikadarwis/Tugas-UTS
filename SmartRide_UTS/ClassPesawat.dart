import 'ClassAbstractTransportasi.dart';

//Kelas Pesawat
class Pesawat extends Transportasi {
  String kelas;
  Pesawat(
    String id, 
    String nama, 
    double tarifDasar, 
    int kapasitas, 
    this.kelas) : super(id, nama, tarifDasar, kapasitas);

  double hitungTarif(int jumlahPenumpang) {
    return tarifDasar * jumlahPenumpang * (kelas == "Bisnis" ? 1.5 : 1.0);
  }

  void tampilInfo() {
    super.tampilInfo();
    print("Kelas: $kelas");
  }
}