Future<bool> mockApiLogin(String nome, String senha) async {
  // Simulando um delay para a requisição
  await Future.delayed(const Duration(seconds: 2));

  // Verifique se os dados de login estão corretos (mock)
  if (nome == "admin" && senha == "12345") {
    return true; // Login bem-sucedido
  } else {
    return false; // Falha no login
  }
}
