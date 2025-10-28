//Kelas Induk Abstrak Transportasi
abstract class Transportasi {
  String id;
  String namaTransportasi;
  double _tarifDasar;
  int kapasitas;
  Transportasi(this.id, this.namaTransportasi, this._tarifDasar, this.kapasitas);

  double hitungTarif(int jumlahPenumpang);

  void tampilInfo() {
    print("ID: $id, Nama: $namaTransportasi, Tarif Dasar: $_tarifDasar, Kapasitas: $kapasitas");
  }

  double get tarifDasar => _tarifDasar;
}