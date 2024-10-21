import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:universal_html/html.dart' as html;

Future<String?> getJwtToken() async {
  if (kIsWeb) {
    // Para web, recuperar o token dos cookies
    String? cookies = html.window.document.cookie;
    if (cookies != null) {
      List<String> cookiesList = cookies.split(';');
      for (var cookie in cookiesList) {
        if (cookie.trim().startsWith('jwt_token=')) {
          return cookie.split('=')[1];
        }
      }
    }
    return null;
  } else {
    // Para dispositivos móveis, recuperar do armazenamento seguro
    const storage = FlutterSecureStorage();
    return await storage.read(key: 'jwt_token');
  }
}
