import 'package:demo/app_button.dart';
import 'package:demo/app_snackBar.dart';
import 'package:demo/app_text_field.dart';
import 'package:demo/utils/sizeConfig.dart';
import 'package:flutter/material.dart';

class DialogBoxAdd extends StatefulWidget {
  @override
  _DialogBoxAddState createState() => _DialogBoxAddState();
}

class _DialogBoxAddState extends State<DialogBoxAdd> {
  bool isPressed = false;
  TextEditingController nameCont = TextEditingController();
  TextEditingController priceCont = TextEditingController();
  TextEditingController discountCont = TextEditingController();
  TextEditingController inventoryCont = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var b = SizeConfig.screenWidth / 375;
    var h = SizeConfig.screenHeight / 812;
    return Dialog(
      insetPadding: EdgeInsets.symmetric(horizontal: b * 15),
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(b * 4),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(b * 20, h * 20, b * 20, h * 20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Add an item",
                style: TextStyle(
                  fontSize: b * 24,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.italic,
                  decoration: TextDecoration.underline,
                ),
              ),
              sh(20),
              AppTextField(
                  label: "Name",
                  controller: nameCont,
                  suffix: null,
                  hint: "Enter Name",
                  isVisibilty: null,
                  validator: (value) {}),
              sh(10),
              AppTextField(
                  label: "Price",
                  controller: priceCont,
                  suffix: null,
                  inputType: TextInputType.number,
                  hint: "Enter Price",
                  isVisibilty: null,
                  validator: (value) {}),
              sh(10),
              AppTextField(
                  label: "Percentage",
                  controller: discountCont,
                  suffix: null,
                  inputType: TextInputType.number,
                  hint: "Enter Discount",
                  isVisibilty: null,
                  validator: (value) {}),
              sh(10),
              AppTextField(
                  label: "Available",
                  controller: inventoryCont,
                  suffix: null,
                  inputType: TextInputType.number,
                  hint: "Enter Inventory",
                  isVisibilty: null,
                  validator: (value) {}),
              sh(10),
              AppTextField(
                  label: "Image Url",
                  controller: inventoryCont,
                  suffix: null,
                  hint: "Enter Image Url",
                  isVisibilty: null,
                  validator: (value) {}),
              sh(20),
              isPressed
                  ? LoadingButton()
                  : AppButton(
                      vertPad: h * 14,
                      label: "Add item",
                      onPressed: () {
                        setState(() {
                          isPressed = true;
                        });
                        Navigator.pop(context);
                        appSnackBar(
                          context: context,
                          msg: "The item is successfully added",
                          isError: false,
                        );
                      })
            ]),
          ),
        ],
      ),
    );
  }
}

void dialogBoxAdd(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: true,
    barrierColor: Colors.black.withOpacity(0.7),
    builder: (BuildContext context) {
      return DialogBoxAdd();
    },
  );
}
