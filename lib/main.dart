import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:my_day/cubit/name_cubit.dart';
import 'package:my_day/modules/task_data.dart';
import 'package:my_day/modules/data_model.dart';
import 'package:my_day/screen/landing_page.dart';
import 'package:provider/provider.dart';
// import 'package:my_day/task_tile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<NameCubit>(
      create: (context) => NameCubit(),
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider<TaskData>(
            create: (BuildContext context) => TaskData(),
          ),
          ChangeNotifierProvider<DataModel>(
            create: (context) => DataModel(),
          )
        ],
        child: const GetMaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomeScreen(),
        ),
      ),
    );
  }
}
