// ignore_for_file: must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_day/modules/data_model.dart';
import 'package:my_day/screen/dashboard.dart';
import 'package:my_day/widgets/text_field.dart';
import 'package:provider/provider.dart';
import '../constants/colors.dart';
import '../constants/size_config.dart';
import '../widgets/button.dart';
import '../widgets/title.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController nameController = TextEditingController();
  TextEditingController nickNameController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  // this formkey makes the content of the form available for use everywhere in my code

  @override
  Widget build(BuildContext context) {
    return Consumer<DataModel>(builder: (
      BuildContext context,
      dataModel,
      Widget? child,
    ) {
      return Scaffold(
        backgroundColor: white,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(
              top: h(200, context),
              left: w(24, context),
              right: w(24, context),
            ),
            child: Form(
              key: _formKey,
              child: ListView(children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            title(context, "Name "),
                            textField(
                                nameController, TextInputType.emailAddress,
                                hintText: "John Doe", onchanged: (value) {
                              dataModel.setUserName(value);
                              // This part listens to thr username and as such i can use it every where in my code
                            }),
                            title(context, "Nickname "),
                            textField(
                              onchanged: (value) {
                                dataModel.setnickName(value);
                              },
                              nickNameController,
                              TextInputType.emailAddress,
                              hintText: "Gold24",
                            ),
                            button('Continue', () {
                              if (_formKey.currentState!.validate()
                                  // This part is to make sure the user fills in the form before moving to the next page
                                  ) {
                                Get.to(() => const Dashboard());
                              }
                            }, white, link, white, 70, 327),
                          ],
                        )),
                  ],
                ),
              ]),
            ),
          ),
        ),
      );
    });
  }
}
