import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nearpays/app/routes/app_pages.dart';
import 'package:nearpays/app/utils.dart/color_lib.dart';
import 'package:nearpays/app/utils.dart/widget/custom_button.dart';

import '../controllers/category_controller.dart';

class CategoryView extends StatefulWidget {
  const CategoryView({super.key});

  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  var selectedTab = 1;
  Widget selectedWidget = const MerchantWidget();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: ListView(
        children: [
          SizedBox(
            height: 8,
          ),
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
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Choose your Category",
            textAlign: TextAlign.start,
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Color(0xFF2E312F)),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    selectedTab = 1;
                    selectedWidget = const MerchantWidget();
                  });
                },
                child: Container(
                  height: 115,
                  width: MediaQuery.of(context).size.width / 2.3,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: selectedTab == 1
                          ? ColorsLib.secondary
                          : const Color(0xFFE3EDE8)),
                  child: Center(
                    child: Text(
                      'Merchant',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: selectedTab == 1
                              ? const Color(0xFFE3EDE8)
                              : ColorsLib.secondary),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    selectedTab = 2;
                    selectedWidget = const Users();
                  });
                },
                child: Container(
                  height: 115,
                  width: MediaQuery.of(context).size.width / 2.3,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: selectedTab == 2
                          ? ColorsLib.secondary
                          : const Color(0xFFE3EDE8)),
                  child: Center(
                    child: Text(
                      'Users',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: selectedTab == 2
                              ? const Color(0xFFE3EDE8)
                              : ColorsLib.secondary),
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 26,
          ),
          Container(child: selectedWidget),
          SizedBox(
            height: MediaQuery.of(context).size.width * 0.2,
          ),
          CustomRaisedButton(
              title: 'Proceed',
              buttonColor: ColorsLib.primary,
              width: MediaQuery.of(context).size.width,
              onPress: () {
                selectedTab == 1
                    ? Get.toNamed('/merchants-personal-info')
                    : Get.toNamed('/users-personal-info');
              })
        ],
      ),
    )));
  }
}

class MerchantWidget extends StatelessWidget {
  const MerchantWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: const Color(0xFFF2F4F7)),
      padding: const EdgeInsets.all(12),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 3.5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            "As a merchant:",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w300,
                color: Color(0xff2E312F)),
            textAlign: TextAlign.start,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              SizedBox(
                width: 5,
              ),
              Text(
                "• ",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: Color(0xff6A706C)),
              ),
              Expanded(
                child: Text(
                  "Create and manage a Virtual Card",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: Color(0xff6A706C)),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              SizedBox(
                width: 5,
              ),
              Text("• "),
              Expanded(
                child: Text(
                  "Create and manage a Virtual Card",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: Color(0xff6A706C)),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              SizedBox(
                width: 5,
              ),
              Text("• "),
              Expanded(
                child: Text(
                  "Make instant in-app and bank transfers ",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: Color(0xff6A706C)),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class Users extends StatelessWidget {
  const Users({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: const Color(0xFFF2F4F7)),
      padding: const EdgeInsets.all(12),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 3.5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            "As a user:",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w300,
                color: Color(0xff2E312F)),
            textAlign: TextAlign.start,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              SizedBox(
                width: 5,
              ),
              Text("• "),
              Expanded(
                child: Text(
                  "Operate a virtual Point of Sale (POS) with \nany NFC-enabled smartphone",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: Color(0xff6A706C)),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              SizedBox(
                width: 5,
              ),
              Text("• "),
              Expanded(
                child: Text(
                  "Receive payments in your virtual wallet.",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: Color(0xff6A706C)),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              SizedBox(
                width: 5,
              ),
              Text("• "),
              Expanded(
                child: Text(
                  "Instantly transfer money to your bank \naccount with just 5% charge.",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: Color(0xff6A706C)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
