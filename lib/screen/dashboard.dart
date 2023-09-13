import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_day/modules/data_model.dart';
import 'package:my_day/screen/bottomNavigationBar.dart';
import 'package:provider/provider.dart';
import '../constants/colors.dart';
import '../constants/size_config.dart';
import '../modules/task_data.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final datamodel = Provider.of<DataModel>(context);
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
                            Text(
                              'Hello ${datamodel.nickName}',
                              style: TextStyle(
                                color: black,
                                fontSize: h(16, context),
                                fontWeight: FontWeight.w400,
                              ),
                            )
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
                    SizedBox(
                      height: h(20, context),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: w(25, context), right: w(15, context)),
                          child: Container(
                            height: h(180, context),
                            width: 163.5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: blue,
                            ),
                            child: const Center(child: Text('Abimbola')),
                          ),
                        ),
                        const Divider(),
                        Padding(
                          padding: EdgeInsets.only(
                              left: w(15, context), right: w(10, context)),
                          child: Container(
                            height: h(180, context),
                            width: 163.5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: blue,
                            ),
                            child: const Center(child: Text('Abimbola')),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: h(15, context),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: w(25, context), right: w(15, context)),
                          child: Container(
                            height: h(180, context),
                            width: 163.5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: blue,
                            ),
                            child: const Center(child: Text('Abimbola')),
                          ),
                        ),
                        const Divider(),
                        Padding(
                          padding: EdgeInsets.only(
                              left: w(15, context), right: w(10, context)),
                          child: Container(
                            height: h(180, context),
                            width: 163.5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: blue,
                            ),
                            child: const Center(child: Text('Abimbola')),
                          ),
                        ),
                      ],
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
