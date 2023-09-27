// ignore_for_file: must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:my_day/cubit/name_cubit.dart';
// import 'package:my_day/modules/data_model.dart';
import 'package:my_day/screen/dashboard.dart';
import 'package:my_day/widgets/text_field.dart';
// import 'package:provider/provider.dart';
import '../constants/colors.dart';
import '../constants/size_config.dart';
import '../widgets/button.dart';
import '../widgets/title.dart';
// import 'package:shared_preferences/shared_preferences.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController nickNameController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  // this formkey makes the content of the form available for use everywhere in my code

  @override
  Widget build(BuildContext context) {
    final nameCubit = BlocProvider.of<NameCubit>(context);

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
                          TextFormField(
                            controller: nameController,
                            onChanged: (value) =>
                                nameCubit.updateNameInput(value),
                            maxLength: 50,
                            keyboardType: TextInputType.name,
                            obscureText: false,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'This field is empty';
                              }
                              return null;
                            },
                            decoration: decoration('John Doe'),
                            style: textstyle(),
                          ),
                          title(context, "Nickname "),
                          TextFormField(
                            controller: nickNameController,
                            onChanged: (value) =>
                                nameCubit.updateNickNameInput(value),
                            maxLength: 25,
                            autocorrect: false,
                            obscureText: false,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'This field is empty';
                              }
                              return null;
                            },
                            decoration: decoration('Speed'),
                            style: textstyle(),
                            textCapitalization: TextCapitalization.sentences,
                          ),
                          button('Continue', () {
                            if (_formKey.currentState!.validate()
                                // This part is to make sure the user fills in the form before moving to the next page
                                ) {
                              // _formKey.currentState!.save();
                              // saveName(_nickName);
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
  }
}
