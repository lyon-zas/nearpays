import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nearpays/app/utils.dart/widget/reusable_classes.dart';

import '../../../utils.dart/color_lib.dart';
import '../../../utils.dart/widget/custom_button.dart';
import '../controllers/users_personal_info_controller.dart';

class UsersPersonalInfoView extends GetView<UsersPersonalInfoController> {
  const UsersPersonalInfoView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                      onPressed: () => Get.back(),
                      iconSize: 16,
                      color: Colors.black,
                      icon: const Icon(
                        Icons.arrow_back_ios_new,
                        // size: 16,
                      )),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              "Personal Information",
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: ColorsLib.primaryText),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              "kindly provide the following details to enable us \ncreate your secured account and verify you.",
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  color: ColorsLib.textColor),
            ),
            const SizedBox(
              height: 24,
            ),
            Form(
              key: controller.loginFormKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                children: [
                  TextFormField(
                    decoration: ReusableTextFieldDecoration.getDecoration(
                        hintText: 'Full Name (same as bank account)'),
                    keyboardType: TextInputType.name,
                    controller: controller.fullNameController,
                    onSaved: (value) {
                      controller.companyName = value!;
                    },
                    validator: (value) {
                      return controller.validateFullName(value!);
                    },
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    decoration: ReusableTextFieldDecoration.getDecoration(
                        hintText: 'Email Address'),
                    keyboardType: TextInputType.emailAddress,
                    controller: controller.emailController,
                    onSaved: (value) {
                      controller.email = value!;
                    },
                    validator: (value) {
                      return controller.validateEmail(value!);
                    },
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    decoration: ReusableTextFieldDecoration.getDecoration(
                        suffixIcon: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.visibility)),
                        hintText: 'Password'),
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    controller: controller.passwordController,
                    onSaved: (value) {
                      controller.password = value!;
                    },
                    validator: (value) {
                      return controller.validatePassword(value!);
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          width: context.width / 3.5,
                          height: 5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0xffEEF0F4),
                          )),
                      Container(
                          width: context.width / 3.5,
                          height: 5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0xffEEF0F4),
                          )),
                      Container(
                          width: context.width / 3.5,
                          height: 5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0xffEEF0F4),
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    decoration: ReusableTextFieldDecoration.getDecoration(
                        hintText: 'Phone Number'),
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    controller: controller.passwordController,
                    onSaved: (value) {
                      controller.phoneNumber = value!;
                    },
                    validator: (value) {
                      return controller.validatePhoneNumber(value!);
                    },
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  CustomRaisedButton(
                    title: 'Register',
                    width: context.width,
                    onPress: () {
                      controller.checkLogin();
                      Get.toNamed('/users-verify-phone');
                    },
                  )
                ],
              ),
            )
          ],
        ),
      )),
    ));
  }
}
