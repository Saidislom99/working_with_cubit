import 'package:dio/dio.dart';

import '../model/user_model.dart';
import 'api_client.dart';

class ApiProvider {
  final ApiClient apiClient;

  ApiProvider({required this.apiClient});

  Future<List<UserModel>> getUsersList() async {
    Response response =
    await apiClient.dio.get("https://jsonplaceholder.typicode.com/users");

    if (response.statusCode! >= 200 && response.statusCode! < 300) {
      return (response.data as List?)
          ?.map((item) => UserModel.fromJson(item))
          .toList() ??
          [];
    } else {
      throw Exception();
    }
  }
}