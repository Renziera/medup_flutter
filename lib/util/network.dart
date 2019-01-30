import 'package:http/http.dart';
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

  static Future<String> test() async {
    return await true ? 'Helol' : 'World';
  }

  static void searchDokter({String spesialis}) async{
    Response response = await post('$BASE_URL/search_doctor');
    print(response.body);
    
  }
}