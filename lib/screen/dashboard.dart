import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_day/cubit/name_cubit.dart';
//import 'package:my_day/modules/data_model.dart';
import 'package:my_day/screen/bottomNavigationBar.dart';
import 'package:provider/provider.dart';
// import 'package:shared_preferences/shared_preferences.dart';
import '../constants/colors.dart';
import '../constants/size_config.dart';
import '../modules/task_data.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    // final datamodel = Provider.of<DataModel>(context);

    return Scaffold(
        appBar: AppBar(
          backgroundColor: link,
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: const Text(
            'DashBoard',
          ),
        ),
        backgroundColor: white,
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(children: [
                        CircleAvatar(
                          maxRadius: w(16, context),
                          backgroundColor: white,
                          child: SvgPicture.asset(
                            "assets/svgs/Profile.svg",
                            semanticsLabel: 'Profile',
                            height: h(15, context),
                            width: w(25, context),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            BlocBuilder<NameCubit, String>(
                              builder: (context, state) {
                                return Text(
                                  'Hello $state',
                                  style: TextStyle(
                                    color: black,
                                    fontSize: h(16, context),
                                    fontWeight: FontWeight.w400,
                                  ),
                                );
                              },
                            ),
                          ],
                        )
                      ]),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: w(10, context), right: w(10, context)),
                      child: Container(
                        height: h(182, context),
                        width: w(327, context),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(32),
                          color: link,
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(
                            w(30, context),
                          ),
                          child: Row(
                            children: [
                              Text(
                                'Overall Tasks:',
                                style: TextStyle(
                                    fontSize: w(20, context),
                                    color: white,
                                    fontWeight: FontWeight.w600,
                                    decoration: TextDecoration.underline),
                              ),
                              const Spacer(),
                              Text(
                                '${Provider.of<TaskData>(context).taskCount}',
                                style: TextStyle(
                                  fontSize: w(18, context),
                                  color: white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                'Tasks',
                                style: TextStyle(
                                  fontSize: w(18, context),
                                  color: white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const Spacer(),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: const BottomScreen());
  }
}
// BlocProvider.of<NameCubit>(context).toString()