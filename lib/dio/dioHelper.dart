import 'package:dio/dio.dart';
import 'package:untitled/models/testModel.dart';

class DioHelper{

  TestModel? testModel;
  Future<TestModel?> getSuccessData() async{
    Response response = await Dio().get('http://159.89.4.181:2000/api/v1/success-stories');
    testModel = TestModel.fromMap(response.data);
    return testModel;
  }
}