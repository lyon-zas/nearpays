import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UsersPersonalInfoController extends GetxController {
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  late TextEditingController fullNameController,
      companyNameController,
      emailController,
      passwordController,
      phoneNumberController;

  var companyName = '';
  var fullName = '';
  var email = '';
  var password = '';
  var phoneNumber = '';

  @override
  void onInit() {
    super.onInit();
    fullNameController = TextEditingController();
    companyNameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    phoneNumberController = TextEditingController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
  }

  String? validateEmail(String value) {
    if (!GetUtils.isEmail(value)) {
      return "Provide a valid Email";
    }
    return null;
  }

  String? validatePassword(String value) {
    if (value.length < 6) {
      return "Password must be of 6 characters";
    }
    return null;
  }

  String? validatePhoneNumber(String value) {
    if (value.length < 11) {
      return "Phone must be of 11 characters";
    }
    return null;
  }

  String? validateCompany(String value) {
    if (value.isEmpty) {
      return "Company name can't be empty";
    }
    return null;
  }

  String? validateFullName(String value) {
    if (value.isEmpty) {
      return "Full name can't be empty";
    }
    return null;
  }

  void checkLogin() {
    final isValid = loginFormKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    loginFormKey.currentState!.save();
  }
}
