
import '../model/user_model.dart';
import '../services/api_provider.dart';

class UserRepository {
  UserRepository({required this.apiProvider});

  final ApiProvider apiProvider;

  Future<List<UserModel>> getUsers() async => apiProvider.getUsersList();
}