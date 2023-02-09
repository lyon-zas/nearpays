import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:nearpays/app/utils.dart/color_lib.dart';

class CustomRaisedButton extends StatelessWidget {
   bool isLoading;
   String? title;
  double? size;
  Color? titleColor, buttonColor;
  double? width;
  Icon? icon;
  final Function()? onPress;
  CustomRaisedButton(
     {super.key, 
     this.icon,
    this.title,
    this.onPress,
    this.titleColor,
    this.buttonColor,
    this.width,
    this.size,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: width,
      child: FloatingActionButton(
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        backgroundColor: buttonColor?? ColorsLib.primary,
        splashColor: buttonColor,
        onPressed: isLoading ? null : onPress,
        child: isLoading
            ? Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  width: 20,
                  height: 20,
                  child:
                      CircularProgressIndicator(backgroundColor: Colors.white),
                ),
              )
            : Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  icon ?? Text(""),
                   Text(
                      title.toString(),
                      style: TextStyle(
                          color: titleColor ?? Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: size != null ? size : 16),
                    )
                  
                ],
              ),
      ),
    );
  }
}
