import 'package:flutter/material.dart';
import 'package:gestcad/components/banner.component.dart';
import 'package:gestcad/components/button_with_icon.component.dart';
import 'package:gestcad/components/header.component.dart';
import 'package:gestcad/components/text_field.component.dart';
import 'package:gestcad/services/login/validate_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool stateButton = false;
  TextEditingController controllerName = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();
  ScrollController controllerScroll = ScrollController();
  @override
  Widget build(BuildContext context) {
    double wscreen = MediaQuery.of(context).size.width;
    double screenSize = wscreen > 400 ? 400 : wscreen;
    return Scaffold(
      body: Scrollbar(
        controller: controllerScroll,
        trackVisibility: true,
        thumbVisibility: true,
        child: SingleChildScrollView(
          controller: controllerScroll,
          child: Column(
            children: [
              header(wscreen),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 50),
                width: screenSize,
                child: Column(
                  children: [
                    const SizedBox(height: 50),
                    banner(wscreen),
                    const SizedBox(height: 50),
                    Align(
                        alignment: const Alignment(-0.95, 0),
                        child: Text(
                          "Login",
                          style: TextStyle(
                              fontSize: wscreen > 1400 ? 19 : 15,
                              fontWeight: FontWeight.bold),
                        )),
                    const SizedBox(height: 10),
                    textFieldWidget(wscreen,
                        icon: Icons.email,
                        hintText: "Email",
                        context: context,
                        controller: controllerName),
                    // =================================
                    const SizedBox(height: 20),
                    Align(
                        alignment: const Alignment(-0.95, 0),
                        child: Text(
                          "Password",
                          style: TextStyle(
                              fontSize: wscreen > 1400 ? 19 : 15,
                              fontWeight: FontWeight.bold),
                        )),
                    const SizedBox(height: 10),
                    textFieldWidget(wscreen,
                        icon: Icons.password,
                        hintText: "Password",
                        context: context,
                        controller: controllerPassword),
                    const SizedBox(height: 50),
                    // =================================
                    !stateButton
                        ? buttonWithIcon(wscreen, ontap: () async {
                            setState(() {
                              stateButton = true;
                            });
                            bool isValid = await validateLogin(
                                context: context,
                                controllerName: controllerName,
                                controllerPassword: controllerPassword);
                            setState(() {
                              stateButton = false;
                            });
                          },
                            text: "Sign in",
                            icon: Icons.login,
                            color: const Color(0xff00856F))
                        : const CircularProgressIndicator(),
                    const SizedBox(height: 100)
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
