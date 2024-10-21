import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:universal_html/html.dart' as html;

Future<void> storeJwtToken(String token) async {
  if (kIsWeb) {
    // Para web, armazenar o token em cookies
    html.window.document.cookie = "jwt_token=$token; path=/;";
  } else {
    // Para dispositivos móveis, armazenar no armazenamento seguro
    const storage = FlutterSecureStorage();
    await storage.write(key: 'jwt_token', value: token);
  }
}
