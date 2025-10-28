import 'ClassAbstractTransportasi.dart';

//Kelas Bus
class Bus extends Transportasi {
  bool adaWifi;
  Bus(
    String id, 
    String nama, 
    double tarifDasar, 
    int kapasitas, 
    this.adaWifi) : super(id, nama, tarifDasar, kapasitas);

  double hitungTarif(int jumlahPenumpang) {
    return (tarifDasar * jumlahPenumpang) + (adaWifi ? 5000 : 0);
  }

  void tampilInfo() {
    super.tampilInfo();
    print("Ada Wifi: ${adaWifi ? 'Ya' : 'Tidak'}");
  }
}