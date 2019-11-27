import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'db/moor_database.dart';



//bool _formComplete = false;
String _password ;
String _passwordConfirm ;
class SignUpPage extends StatefulWidget {

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController newUserController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
//    var _isEnable = null;


    return Scaffold(

      body:Form(
        key: _formKey,
        child:Container(
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
              height: 150,
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
                  textFormFieldName(newUserController, "Nombre",
                      "Nombre de usuario", Icons.person, "Nombre"),
                  textFormField(emailController, "Email", "Cuenta de email",
                      Icons.alternate_email, "Email"),
                  textFormFieldPassword(passwordController, "Contraseña",
                      "Ingresa tu contraseña", Icons.vpn_key, "Contraseña"),
                  textFormFieldConfirmPassword(
                      confirmPasswordController,
                      "Confirmar contraseña",
                      "Confirma tu contraseña",
                      Icons.vpn_key,
                      "Confirmar"),
                  SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                    height: 50,
                    child: FlatButton(
                      color: Colors.transparent,
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
                          if (_formKey.currentState.validate()) {
                            _formKey.currentState.save();
                            final database = Provider.of<QueriesDao>(context);
                            final user = User(
                              emailUser: emailController.text,
                              passwordUser: passwordController.text
                              );
                              database.insertUser(user);
                           
                           //print(database.users.emailUser);
                           //print(database.users.passwordUser);
                           //print(database.users.primaryKey);
                            //print(_password);
                            //print(_passwordConfirm);
                            
                            
                            Navigator.pushNamed(context, '/loginPage');
                          }


                      },
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    child: FlatButton(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text(
                          "Cancelar",
                          style: TextStyle(
                              color: Color.fromRGBO(249, 170, 51, 0.5),
                              fontWeight: FontWeight.w500,
                              fontSize: 20),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/loginPage');
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      )
    );
  }

  textFormField(TextEditingController t, String label, String hint,
      IconData iconData, String initialValue) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(249, 170, 51, 0.5),
              blurRadius: 5.0,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: TextFormField(
          cursorColor: Colors.deepOrangeAccent,
          style: TextStyle(color: Color.fromRGBO(249, 170, 51, 1)),
          validator: (value) {
            if (value.isEmpty) {
              return 'Introduce algun texto';
            }
            else {
              if(!value.contains('@')){
                return 'Email invalido';
              }

            }
          },
          controller: t,
          textCapitalization: TextCapitalization.words,
          decoration: InputDecoration(
            prefixIcon: Icon(
              iconData,
              color: Color.fromRGBO(249, 170, 51, 0.2),
            ),
            hoverColor: Color.fromRGBO(249, 170, 51, 0.7),
            fillColor: Color.fromRGBO(249, 170, 51, 0.7),
            hintText: label,
            border: InputBorder.none,
            hintStyle: TextStyle(color: Colors.grey[400]),
          ),
        ),
      ),
    );
  }
}

textFormFieldName(TextEditingController t, String label, String hint,
    IconData iconData, String initialValue) {
  return Padding(
    padding: const EdgeInsets.only(
      top: 10,
    ),
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(249, 170, 51, 0.5),
            blurRadius: 5.0,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: TextFormField(
        cursorColor: Colors.deepOrangeAccent,
        style: TextStyle(color: Color.fromRGBO(249, 170, 51, 1)),
        validator: (value) {
          if (value.isEmpty) {
            return 'Introduce algun texto';
          }
        },
        controller: t,
        textCapitalization: TextCapitalization.words,
        decoration: InputDecoration(
          prefixIcon: Icon(
            iconData,
            color: Color.fromRGBO(249, 170, 51, 0.2),
          ),
          hoverColor: Color.fromRGBO(249, 170, 51, 0.7),
          fillColor: Color.fromRGBO(249, 170, 51, 0.7),
          hintText: label,
          border: InputBorder.none,
          hintStyle: TextStyle(color: Colors.grey[400]),
        ),
      ),
    ),
  );
}


textFormFieldPassword(TextEditingController t, String label, String hint,
    IconData iconData, String initialValue) {
  return Padding(
    padding: const EdgeInsets.only(
      top: 10,
    ),
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(249, 170, 51, 0.5),
            blurRadius: 5.0,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: TextFormField(
        obscureText: true,
        cursorColor: Colors.deepOrangeAccent,
        style: TextStyle(color: Color.fromRGBO(249, 170, 51, 1)),


        validator: (value) {
          if (value.isEmpty) {
            return 'Introduce contraseña';
          }
          else{
            if(value.length<=8){
              return 'La contraseña debe de ser de al menos 8 caracteres';
            }
          }
        },
        onSaved: (value) => _password = value ,

        controller: t,
        textCapitalization: TextCapitalization.words,
        decoration: InputDecoration(
          prefixIcon: Icon(
            iconData,
            color: Color.fromRGBO(249, 170, 51, 0.2),
          ),
          hoverColor: Color.fromRGBO(249, 170, 51, 0.7),
          fillColor: Color.fromRGBO(249, 170, 51, 0.7),
          hintText: label,
          border: InputBorder.none,
          hintStyle: TextStyle(color: Colors.grey[400]),
        ),
      ),
    ),
  );
}


textFormFieldConfirmPassword(TextEditingController t, String label, String hint,
    IconData iconData, String initialValue) {
  return Padding(
    padding: const EdgeInsets.only(
      top: 10,
    ),
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(249, 170, 51, 0.5),
            blurRadius: 5.0,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: TextFormField(
        obscureText: true,
        cursorColor: Colors.deepOrangeAccent,
        style: TextStyle(color: Color.fromRGBO(249, 170, 51, 1)),
        onSaved: (value) => _passwordConfirm = value ,
        validator: (value) {
          if (value.isEmpty) {
            return 'Confirmar contraseña';
          }
          else{
            if(_passwordConfirm!=_password){

return 'la contraseña no son iguales';
            }

          }
        },
        controller: t,
        textCapitalization: TextCapitalization.words,
        decoration: InputDecoration(
          prefixIcon: Icon(
            iconData,
            color: Color.fromRGBO(249, 170, 51, 0.2),
          ),
          hoverColor: Color.fromRGBO(249, 170, 51, 0.7),
          fillColor: Color.fromRGBO(249, 170, 51, 0.7),
          hintText: label,
          border: InputBorder.none,
          hintStyle: TextStyle(color: Colors.grey[400]),
        ),
      ),
    ),
  );
}