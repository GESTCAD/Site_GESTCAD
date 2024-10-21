import 'package:flutter/material.dart';

Widget textFieldWidget(double wscreen,
    {required BuildContext context,
    bool isPassword = false,
    String hintText = "Search Store",
    IconData icon = Icons.search,
    required TextEditingController controller,
    bool hasError = false,
    String errorMessage = "",
    bool isReactive = false,
    Function? action}) {
  return SizedBox(
    width: wscreen,
    child: TextField(
      obscureText: isPassword,
      controller: controller,
      onSubmitted: (value) async {
        // Quando o usuário pressiona Enter, navegar para a página desejada
        if (isReactive) {
          await action!();
        }
      },
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
            horizontal: 10, vertical: wscreen > 1400 ? 20 : 15),
        enabled: true,
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 20, right: 10),
          child: Icon(
            icon,
            size: 30,
          ),
        ),
        hintText: hintText,

        fillColor: const Color(0xff7C7C7C),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: hasError ? Colors.red : Colors.black.withOpacity(.5),
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: hasError ? Colors.red : Colors.blue,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        errorText: hasError
            ? errorMessage
            : null, // Exibe a mensagem de erro se hasError for true
      ),
    ),
  );
}
