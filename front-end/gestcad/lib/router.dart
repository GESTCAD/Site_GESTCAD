import 'package:gestcad/services/fade_transition.dart';
import 'package:gestcad/view/home.page.dart';
import 'package:gestcad/view/login.page.dart';
import 'package:go_router/go_router.dart';

final routes = GoRouter(
  initialLocation: '/home',
  routes: [
    GoRoute(
      name: 'Login',
      path: '/login',
      pageBuilder: (context, state) => fadeTransition(const LoginPage()),
    ),
    GoRoute(
      name: 'Inicio',
      path: '/home',
      pageBuilder: (context, state) => fadeTransition(const HomePage()),
    ),
    // GoRoute(
    //   name: 'search',
    //   path: '/search',
    //   pageBuilder: (context, state) {
    //     String product = '';
    //     try {
    //       product = state.uri.queryParameters['product']!;
    //     } catch (e) {
    //       context.go('/404');
    //     }
    //     return fadeTransition(PageSearch(product: product));
    //   },
    // ),
    // GoRoute(
    //   name: 'login',
    //   path: '/login',
    //   pageBuilder: (context, state) => fadeTransition(const PageLogin()),
    //   redirect: (context, state) async {
    //     final jwt = await getJwtToken();
    //     if (jwt == null) {
    //       return '/login';
    //     }
    //     return '/user';
    //   },
    // ),
    // GoRoute(
    //   name: 'register',
    //   path: '/register',
    //   pageBuilder: (context, state) => fadeTransition(const PageRegister()),
    //   redirect: (context, state) async {
    //     final jwt = await getJwtToken();
    //     if (jwt == null) {
    //       return '/register';
    //     }
    //     return '/user';
    //   },
    // ),
    // GoRoute(
    //   name: 'usuario',
    //   path: '/user',
    //   pageBuilder: (context, state) => fadeTransition(const PageUser()),
    //   redirect: (context, state) async {
    //     final jwt = await getJwtToken();
    //     if (jwt == null) {
    //       return '/login';
    //     }
    //     bool check = await fetchIsValidToken(jwt);
    //     if (!check) {
    //       await deleteJwtToken();
    //       return '/login';
    //     }
    //     return '/user';
    //   },
    // ),
    // GoRoute(
    //   name: 'minhas compras',
    //   path: '/user/minhas-compras',
    //   pageBuilder: (context, state) =>
    //       fadeTransition(const PageItensComprados()),
    //   redirect: (context, state) async {
    //     final jwt = await getJwtToken();
    //     if (jwt == null) {
    //       return '/login';
    //     }
    //     bool check = await fetchIsValidToken(jwt);
    //     if (!check) {
    //       await deleteJwtToken();
    //       return '/login';
    //     }
    //     return '/user/minhas-compras';
    //   },
    // ),
    // GoRoute(
    //   name: 'carrinho de comprar',
    //   path: '/cart',
    //   pageBuilder: (context, state) => fadeTransition(const PageCart()),
    // ),
    // GoRoute(
    //   name: 'Compra realizada com sucesso',
    //   path: '/cart/sucess',
    //   pageBuilder: (context, state) =>
    //       fadeTransition(const PageSucessBuyCart()),
    //   redirect: (context, state) async {
    //     final jwt = await getJwtToken();
    //     if (jwt == null) {
    //       return '/';
    //     }
    //     bool check = await fetchIsValidToken(jwt);
    //     if (!check) {
    //       await deleteJwtToken();
    //       return '/';
    //     }
    //     return '/cart/sucess';
    //   },
    // ),
    // GoRoute(
    //   name: 'produto',
    //   path: '/produto',
    //   pageBuilder: (context, state) {
    //     String productId = '';
    //     String productProvider = '';
    //     try {
    //       productId = state.uri.queryParameters['d']!;
    //       productProvider = state.uri.queryParameters['p']!;
    //     } catch (e) {
    //       context.go('/404');
    //     }
    //     return fadeTransition(
    //         PageProduct(id: productId, provider: productProvider));
    //   },
    // ),
  ],
);
  // errorPageBuilder: (context, state) => fadeTransition(const PageNotFound())