import 'package:dio/dio.dart';
import 'package:untitled/models/SuccessModel.dart';

class ApiProvider{
  SuccessModel? successModel;
  Future<SuccessModel?> getSuccessStories()async{

    Response response = await Dio().get('http://159.89.4.181:2000/api/v1/success-stories');
    successModel = SuccessModel.fromMap(response.data);
    print(response.data['model'][0]['id']);
    return successModel;
  }
}