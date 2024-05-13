// ignore_for_file: prefer_const_constructors, avoid_print

import 'home.dart';
import 'home2.dart';
import 'signin.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String _errorMessage = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Proyecto final Web',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.green,
          ),
        ),
        centerTitle: true, // Esta propiedad centrará el título en la AppBar
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 90.0,
              width: 90,
              child: Image.asset(
                "assets/images/logoBuap.png",
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(labelText: 'Username'),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(labelText: 'Password'),
            ),
            SizedBox(height: 8.0),
            Text(
              _errorMessage,
              style: TextStyle(color: Colors.red),
            ),
            SizedBox(height: 14.0),
            ElevatedButton(
              onPressed: () {
                _login();
                // Navegar a la nueva pantalla solo si el login es exitoso
                if (_loginExitoso) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home2()),
                  );
                }
              },
              child: Text('Ingresar'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SigninPage()),
                );
              },
              child: Text('Crear cuenta'),
            ),
          ],
        ),
      ),
    );
  }

  bool _loginExitoso = false;

  void _login() {
    // Verificar si el nombre de usuario y la contraseña coinciden
    String username = _usernameController.text;
    String password = _passwordController.text;

    // Ejemplo de credenciales (puedes cambiar esto según tus necesidades)
    String correctUsername = 'uno';
    String correctPassword = 'dos';

    if (username == correctUsername && password == correctPassword) {
      // Login exitoso, actualizamos la variable y mostramos un mensaje en la consola.
      setState(() {
        _loginExitoso = true;
        print('Login exitoso');
      });
    } else {
      // Login fallido, actualizamos la variable y mostramos un mensaje de error.
      setState(() {
        _loginExitoso = false;
        _errorMessage = 'Usuario o contraseña incorrectos. Inténtalo de nuevo.';
      });
    }
  }
}
