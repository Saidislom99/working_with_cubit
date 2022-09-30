import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:working_with_cubit/teacher/cubit/user/user_cubit.dart';
import 'package:working_with_cubit/teacher/data/repositories/user_repository.dart';
import 'package:working_with_cubit/teacher/data/services/api_client.dart';
import 'package:working_with_cubit/teacher/data/services/api_provider.dart';
import 'package:working_with_cubit/teacher/view/user_page/users_screen.dart';

import 'assistant/views/home/cubit/mainCubit.dart';
import 'assistant/views/home/views/main_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          useMaterial3: true,
          colorScheme: const ColorScheme.light(
              primary: CupertinoColors.quaternarySystemFill,
              brightness: Brightness.light)),
      home:
      BlocProvider(
         create: (context) => UserCubit(userRepository: UserRepository(apiProvider: ApiProvider(apiClient: ApiClient()))), child: const UsersPage()),

      // BlocProvider(
      //     create: (context) => MainCubit(), child: const MainHome()),
    );
  }
}