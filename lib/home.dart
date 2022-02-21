import 'package:flutter/cupertino.dart';
import 'package:logger/logger.dart';
import 'model/api.dart';
import 'model/apiitems.dart';
import 'package:flutter/services.dart';
import 'model/services/apiService.dart';
import 'package:dio/dio.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var logger = Logger();
  List<APIItems> allData = [];
  AppDetailsAPI? api;
  Future<void> getApi() async {
    logger.i("test");
    final dio = Dio();
    final client = RestClient(dio);
    client.getAllData().then((it) async {
      logger.i(it.api![0].appDataUrl);
      api = it.api![0];
      getAllData(it.api![0].appDataUrl!);
    }).catchError((Object obj) {
      switch (obj.runtimeType) {
        case DioError:
        // Here's the sample to get the failed response error code and message
          final res = (obj as DioError).response;
          //internetProblem();
          /*if (res.statusCode == 500) {}*/
          logger.e("Got error : ${res!.statusCode} -> ${res.statusMessage}");

          break;
        default:
      }
    });
  }
  Future<void> getAllData(String url) async {
    final dio = Dio();
    final client = RestClient(dio, baseUrl: url);
    client.getData().then((it) async {
      allData = it.allitems!;
      logger.i(allData[0].title);
      //navigationPage();
    }).catchError((Object obj) {
      switch (obj.runtimeType) {
        case DioError:
        // Here's the sample to get the failed response error code and message
        //final res = (obj as DioError).response;
          //internetProblem();
          /*if (res.statusCode == 500) {}
          logger.e("Got error : ${res.statusCode} -> ${res.statusMessage}");*/

          break;
        default:
      }
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getApi();
  }
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
