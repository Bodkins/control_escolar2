import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController newUserController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var _isEnable = null;

    return Scaffold(
      key: _formKey,
      body: Container(
        decoration: BoxDecoration(
          gradient: new LinearGradient(
            colors: [
              Color.fromRGBO(249, 170, 51, 1),
              Color.fromRGBO(249, 170, 51, 0.8),
              Color.fromRGBO(249, 170, 51, 0.6),
              Color.fromRGBO(249, 170, 51, 0.3),
            ],
            begin: const FractionalOffset(1.0, 0.1),
            end: const FractionalOffset(1.0, 0.9),
          ),
        ),
        child: Column(
          children: <Widget>[
            Container(
              height: 300,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    child: Container(
                      child: Center(
                        child: Text(
                          "Crear cuenta",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  textFormField(newUserController, "Nombre",
                      "Nombre de usuario", Icons.person, "Nombre"),
                  textFormField(passwordController, "Contraseña",
                      "Ingresa tu contraseña", Icons.vpn_key, "Contraseña"),
                  textFormField(confirmPasswordController, "Confirmar",
                      "Confirma tu contraseña", Icons.vpn_key, "Confirmar"),
                  SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                    height: 50,
                    child: RaisedButton(
                      color: Colors.blueGrey,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text(
                          "Aceptar",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 20),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/loginPage');
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  textFormField(TextEditingController t, String label, String hint,
      IconData iconData, String initialValue) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
      ),
      child: TextFormField(
        validator: (value) {
          if (value.isEmpty) {
            return 'Introduce algun texto';
          }
        },
        controller: t,
        textCapitalization: TextCapitalization.words,
        decoration: InputDecoration(
            prefixIcon: Icon(iconData),
            hintText: label,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
      ),
    );
  }
}
