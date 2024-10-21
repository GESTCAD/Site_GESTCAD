import 'package:flutter/material.dart';
import 'package:gestcad/services/exceptions_messagens.dart';
import 'package:gestcad/services/login/fetch.dart';
import 'package:gestcad/services/login/validateEmail.dart';

Future<bool> validateLogin(
    {required TextEditingController controllerName,
    required TextEditingController controllerPassword,
    context}) async {
  String nome = controllerName.text;
  String senha = controllerPassword.text;

  // Verifica se o nome (email) e a senha estão vazios
  if (nome.isEmpty || senha.isEmpty) {
    return Future.delayed(const Duration(seconds: 5), () {
      ScaffoldMessenger.of(context).showSnackBar(snackBarFailIsEmpty);
      return false;
    });
  }

  // Verifica se o nome (email) é válido
  if (!isValidEmail(nome)) {
    return Future.delayed(const Duration(seconds: 5), () {
      ScaffoldMessenger.of(context).showSnackBar(snackBarInvalidEmail);
      return false;
    });
  }

  // Chama a mock API para validar login
  bool loginSuccess = await mockApiLogin(nome, senha);

  if (loginSuccess) {
    return Future.delayed(const Duration(seconds: 5), () {
      ScaffoldMessenger.of(context).showSnackBar(snackBarSucess);
      return true;
    });
  } else {
    return Future.delayed(const Duration(seconds: 5), () {
      ScaffoldMessenger.of(context).showSnackBar(snackBarFailIsIcorret);
      return false;
    });
  }
}
