import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:universal_html/html.dart' as html;

Future<void> deleteJwtToken() async {
  if (kIsWeb) {
    // Para web, remover o token dos cookies
    html.window.document.cookie =
        "jwt_token=; expires=Thu, 01 Jan 1970 00:00:00 GMT; path=/;";
  } else {
    // Para dispositivos móveis, remover do armazenamento seguro
    const storage = FlutterSecureStorage();
    await storage.delete(key: 'jwt_token');
  }
}
