import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:working_with_cubit/teacher/data/model/user_model.dart';
import 'package:working_with_cubit/teacher/data/repositories/user_repository.dart';

part 'user_state.dart';


class UserCubit extends Cubit<UserState> {
  UserCubit({required UserRepository userRepository})
      : _userRepository = userRepository,
        super(UserInitial());

  final UserRepository _userRepository;

  Future<void> fetchUsers() async {
    emit(UsersGetInProgress());
    try {
      var users = await _userRepository.getUsers();
      emit(UsersGetInSuccess(users: users));
    } catch (error) {
      emit(UsersGetInFailure(errorText: error.toString()));
    }
  }
  Future<void> updateUsers() async {
    emit(UsersGetInProgress());
    try {
      var users = await _userRepository.getUsers();
      emit(UsersGetInSuccess(users: users));
    } catch (error) {
      emit(UsersGetInFailure(errorText: error.toString()));
    }
  }
}