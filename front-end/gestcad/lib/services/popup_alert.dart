import 'package:go_router/go_router.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';
import 'package:flutter/material.dart';

void showLoginAlertIslogin(BuildContext context, width) {
  QuickAlert.show(
    width: width,
    context: context,
    type: QuickAlertType.confirm,
    title: 'Login Necessário',
    text: 'Você precisa estar logado para adicionar itens ao carrinho.',
    showCancelBtn: true,
    cancelBtnText: 'Cancelar',
    confirmBtnText: 'Fazer Login',
    onConfirmBtnTap: () {
      context.pop();
      context.go('/login'); // Redireciona para a tela de login
    },
  );
}

// void showLoginAlertIslogoff(BuildContext context, width) {
//   QuickAlert.show(
//     width: width,
//     context: context,
//     type: QuickAlertType.confirm,
//     title: 'Logoff',
//     text: 'Você deseja sair da conta ?',
//     showCancelBtn: true,
//     cancelBtnText: 'Cancelar',
//     confirmBtnText: 'Sair',
//     onConfirmBtnTap: () async {
//       await deleteJwtToken();
//       context.pop();
//       context.go('/'); // Redireciona para a tela de login
//       ScaffoldMessenger.of(context).showSnackBar(snackBarLogoff);
//       context.go('/');
//     },
//   );
// }

void showLoginAlertIsloginCheck(BuildContext context) {
  double witdh = MediaQuery.of(context).size.width;

  QuickAlert.show(
    width: witdh > 700 ? 500 : witdh,
    context: context,
    type: QuickAlertType.confirm,
    title: 'Login Necessário',
    text: 'Você precisa estar logado para acessar a página de carrinho.',
    showCancelBtn: true,
    cancelBtnText: 'Ir para Início',
    confirmBtnText: 'Fazer Login',
    barrierDismissible:
        false, // Impede que o usuário feche o alerta ao clicar fora dele
    onConfirmBtnTap: () {
      context.pop();
      context.go('/login'); // Redireciona para a tela de login
    },
    onCancelBtnTap: () {
      context.pop();
      context.go('/'); // Redireciona para a tela inicial
    },
  );
}

void showLoginAlertExpiredSession(BuildContext context) {
  double witdh = MediaQuery.of(context).size.width;

  QuickAlert.show(
    width: witdh > 700 ? 500 : witdh,
    context: context,
    type: QuickAlertType.confirm,
    title: 'Login expirado',
    text: 'Realize o login novamente para voltas as aatividades',
    showCancelBtn: true,
    cancelBtnText: 'Ir para Início',
    confirmBtnText: 'Fazer Login',
    barrierDismissible:
        false, // Impede que o usuário feche o alerta ao clicar fora dele
    onConfirmBtnTap: () {
      context.pop();
      context.go('/login'); // Redireciona para a tela de login
    },
    onCancelBtnTap: () {
      context.pop();
      context.go('/'); // Redireciona para a tela inicial
    },
  );
}

void showIsAlertTheCartIsEmpty(BuildContext context) {
  double width = MediaQuery.of(context).size.width;

  QuickAlert.show(
    width: width > 700 ? 500 : width,
    context: context,
    type: QuickAlertType.info, // Tipo de alerta informativo
    title: 'Carrinho vazio',
    text:
        'Visite nossa página inicial e comece adicionando itens ao carrinho :)',
    confirmBtnText: 'Ir para Loja',
    barrierDismissible:
        false, // Impede que o usuário feche o alerta ao clicar fora dele
    onConfirmBtnTap: () {
      Navigator.pop(context);
      context.go('/'); // Redireciona para a página de compras
    },
  );
}

void showIsAlertTheCartHasBuyIsEmpty(BuildContext context) {
  double width = MediaQuery.of(context).size.width;

  QuickAlert.show(
    width: width > 700 ? 500 : width,
    context: context,
    type: QuickAlertType.info, // Tipo de alerta informativo
    title: 'Você ainda não fez compras',
    text:
        'Visite nossa página inicial e comece adicionando itens ao carrinho :)',
    confirmBtnText: 'Ir para Loja',
    barrierDismissible:
        false, // Impede que o usuário feche o alerta ao clicar fora dele
    onConfirmBtnTap: () {
      context.pop();
      context.go('/'); // Redireciona para a página de compras
    },
  );
}

void showIsAlertTheCartIsEmptyHasBuy(BuildContext context) {
  double width = MediaQuery.of(context).size.width;

  QuickAlert.show(
    width: width > 700 ? 500 : width,
    context: context,
    type: QuickAlertType.info, // Tipo de alerta informativo
    title: 'Você ainda não nenhuma compra',
    text:
        'Visite nossa página inicial e comece adicionando itens ao carrinho :)',
    confirmBtnText: 'Ir para Loja',
    barrierDismissible:
        false, // Impede que o usuário feche o alerta ao clicar fora dele
    onConfirmBtnTap: () {
      context.pop();
      context.go('/'); // Redireciona para a página de compras
    },
  );
}
