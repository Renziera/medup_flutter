import 'package:http/http.dart';
import 'dart:convert';
import 'dokter.dart';

/**
 * Class untuk mengakses API MedUp
 * Gunakan async dan await untuk pemanggilan
 */

class TembakAPI {
  static const String BASE_URL = 'https://api.medup.id';

  static void getSpesialis() async {
    Response response = await get('$BASE_URL/spesialisasi');
  }

  static Future<List<Dokter>> searchDokter(
      {String nama = '',
      String jadwal_hari = '',
      String lokasi = '',
      String jenis_kelamin = '',
      String gelar_depan = '',
      String spesialisasi = '',
      int page = 1}) async {
    Map<String, String> data = {
      'nama': nama,
      'jadwal_hari': jadwal_hari,
      'lokasi': lokasi,
      'jenis_kelamin': jenis_kelamin,
      'gelar_depan': gelar_depan,
      'spesialisasi': spesialisasi,
    };

    Response response = await post('$BASE_URL/search_doctor?page=$page', body: data);

    if (response.statusCode == 200) {
      Map<String, dynamic> data = json.decode(response.body);
      //karena nested
      data = data['data'];
      int currentPage = data['current_page'];
      int lastPage = data['last_page'];
      List<Map> dataDokter = List<Map>.from(data['data']);
      List<Dokter> listDokter = List();
      for (Map item in dataDokter) {
        listDokter.add(Dokter.fromJson(item));
      }
      return listDokter;
    } else {
      return null;
    }
  }
}
