import 'package:dio/dio.dart';
import 'package:untitled6/models/user_model.dart';

import 'apiconstent.dart';
import 'models/data_response.dart';
import 'models/error_model.dart';


class AuthApiProvider{

  late Dio _dio;
  Future<dynamic> signIn(UserModel userModel) async{

    try{
      Response response = await _dio.post(ApiConstants.logIn, data: userModel);
      var dataResponse = DataResponse<UserModel>.fromJson(response.data, (data) =>
          UserModel.fromJson(data as Map<String, dynamic>));
      return dataResponse;
    }catch(error){
      final res = (error as dynamic).response;
      if(res!=null) return ErrorModel.fromJson(res?.data);
      return ErrorModel(message: error.toString());
    }
  }
}