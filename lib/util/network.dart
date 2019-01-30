import 'package:http/http.dart';
import 'dokter.dart';

/**
 * Class untuk mengakses API MedUp
 * Gunakan async dan await untuk pemanggilan
 */

class TembakAPI {

  static const String BASE_URL = 'https://api.medup.id';

  static void getSpesialis() {
    var response = get('$BASE_URL/spesialisasi');

  }

  static void searchDokter({String spesialis}) async{
    var response = await post('$BASE_URL/search_doctor');
    print(response.body);
    
  }

  static void fetchData() async {
    print('Gonna req');
    Response result = await get('https://jsonplaceholder.typicode.com/photos');
    print('Done');
  }

}