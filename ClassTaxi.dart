import 'ClassAbstractTransportasi.dart';

class Taxi extends Transportasi {
  double jarak;

  Taxi(
    String id,
    String namaTransportasi,
    double _tarifDasar,
    int kapasitas,
    this.jarak,
  ) : super(id, namaTransportasi, _tarifDasar, kapasitas);

  double hitungTarif(int jumlahPenumpang) {
    return tarifDasar * jarak;
  }

  void tampilInfo() {
    super.tampilInfo();
    print("Jarak: $jarak km");
  }
}
