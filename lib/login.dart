import 'package:demo/app_button.dart';
import 'package:demo/app_snackBar.dart';
import 'package:demo/homeMain.dart';
import 'package:demo/utils/colors.dart';
import 'package:demo/utils/sizeConfig.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController pwdController = TextEditingController();
  bool isVisibilty = false;
  bool isPressed = false;

  bool isError = false;
  bool terms = false;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var h = SizeConfig.screenHeight / 812;
    var b = SizeConfig.screenWidth / 375;
    var outlineInputBorder = const OutlineInputBorder(
      borderSide: BorderSide(
        color: borderColor,
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: b * 30, vertical: h * 16),
          child: Column(
            children: [
              sh(40),
              FlutterLogo(
                size: b * 120,
              ),
              sh(29),
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Login ",
                      style: TextStyle(
                        fontSize: b * 24,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 0.65,
                      ),
                    ),
                    sh(30),
                    TextFormField(
                      style: TextStyle(
                        fontSize: b * 14,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0,
                      ),
                      controller: emailController,
                      validator: (value) {
                        Pattern emailPattern =
                            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                        RegExp regex = new RegExp(emailPattern.toString());
                        if (value!.isEmpty) {
                          setState(() {
                            isError = true;
                          });
                          return "*Field cannot be empty";
                        } else if ((!regex.hasMatch(value.trim()))) {
                          setState(() {
                            isError = true;
                          });
                          return "*Enter a valid email address";
                        } else {
                          return null;
                        }
                      },
                      keyboardType: TextInputType.text,
                      maxLines: 1,
                      minLines: 1,
                      decoration: InputDecoration(
                        isDense: true,
                        hintText: "Enter Email",
                        hintStyle: TextStyle(
                          fontSize: b * 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black.withOpacity(0.7),
                          letterSpacing: 0,
                        ),
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: b * 12,
                          vertical: 12,
                        ),
                        focusedBorder: outlineInputBorder,
                        focusedErrorBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                        ),
                        border: outlineInputBorder,
                        errorBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                        ),
                        enabledBorder: outlineInputBorder,
                      ),
                    ),
                    sh(20),
                    TextFormField(
                      style: TextStyle(
                        fontSize: b * 14,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0,
                      ),
                      controller: pwdController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          setState(() {
                            isError = true;
                          });
                          return "*Field cannot be empty";
                        } else {
                          return null;
                        }
                      },
                      keyboardType: TextInputType.text,
                      maxLines: 1,
                      minLines: 1,
                      decoration: InputDecoration(
                        isDense: true,
                        hintText: "Enter Password",
                        hintStyle: TextStyle(
                          fontSize: b * 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black.withOpacity(0.7),
                          letterSpacing: 0,
                        ),
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: b * 12,
                          vertical: 12,
                        ),
                        focusedBorder: outlineInputBorder,
                        focusedErrorBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                        ),
                        border: outlineInputBorder,
                        errorBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                        ),
                        enabledBorder: outlineInputBorder,
                      ),
                    ),
                    sh(20),
                    InkWell(
                      onTap: () {
                        // Navigator.of(context).push(
                        //   MaterialPageRoute(
                        //     builder: (context) => ForgotPasswordScreen(),
                        //   ),
                        // );
                      },
                      child: Text(
                        "Forgot Password" + "?",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                          fontSize: b * 14,
                        ),
                      ),
                    ),
                    sh(20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Checkbox(
                          side: BorderSide(
                              color: const Color(0xffcccccc), width: b * 1),
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          visualDensity: VisualDensity.compact,
                          activeColor: primaryColor,
                          checkColor: Colors.white,
                          value: terms,
                          onChanged: (v) {
                            setState(() {
                              terms = v!;
                            });
                          },
                        ),
                        sb(8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "By creating your account, you agree to the",
                              style: TextStyle(
                                height: 1.6,
                                fontSize: b * 13,
                                color: const Color(0xff3A3A3A),
                              ),
                            ),
                            sh(2),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: Text(
                                    "Terms and Conditions",
                                    style: TextStyle(
                                      fontSize: b * 13,
                                      color: secondaryColor,
                                    ),
                                  ),
                                ),
                                Text(
                                  ' and ',
                                  style: TextStyle(
                                    fontSize: b * 13,
                                    color: const Color(0xff3A3A3A),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Text(
                                    "Privacy Policy" + ".",
                                    style: TextStyle(
                                      fontSize: b * 14,
                                      color: secondaryColor,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                    sh(22),
                    Center(
                      child: (isPressed && terms)
                          ? const LoadingButton()
                          : AppButton(
                              label: "LOGIN",
                              onPressed: () {
                                if (terms) {
                                  if (!_formKey.currentState!.validate())
                                    return null;

                                  isPressed = true;
                                  setState(() {});

                                  Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                      builder: (_) => HomeMain(),
                                    ),
                                  );
                                } else {
                                  appSnackBar(
                                    context: context,
                                    msg:
                                        "Please accept terms & conditions and privacy policy to proceed",
                                    isError: true,
                                  );
                                }
                              },
                            ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
