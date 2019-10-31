import 'package:control_escolar/principalPage.dart';
import 'package:flutter/material.dart';

class MyLoginPage extends StatefulWidget {

  @override
  _MyLoginPageState createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {

  TextEditingController nameGroupEditingController = TextEditingController();

  TextEditingController nameMateEditingConrtoller = TextEditingController();

  final _formKey = GlobalKey<FormState>();



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      //backgroundColor: Color.fromRGBO(249, 170, 51, 1),
      key: _formKey,
      body: Container(
decoration: BoxDecoration(
  gradient: new LinearGradient(colors: [
    Color.fromRGBO(249, 170, 51, 1),
    Color.fromRGBO(249, 170, 51, 0.8),
    Color.fromRGBO(249, 170, 51, 0.6),
    Color.fromRGBO(249, 170, 51, 0.3),
  ],
    begin: const FractionalOffset(1.0, 0.1),
    end: const FractionalOffset(1, 0.9),
  ),
),
        child: Column(
          children: <Widget>[
            Container(
              height: 300,

              decoration: BoxDecoration(
               // image: DecorationImage(
                //  image: AssetImage('assets/images/background.jpg'),
               // ) ,
                //color: Color.fromRGBO(249, 170, 51,1 ),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    child: Container(
                      child: Center(
                        child: Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(30.0),
              child: Column(
                children: <Widget>[
                  textFormField(
                    nameGroupEditingController,
                      "Email",
                      "Introduzca el Email",
                      Icons.alternate_email,

                      ),
                  textFormField(
                    nameMateEditingConrtoller,
                      "Contraseña",
                      "Introduzca la contraseña",
                      Icons.vpn_key,
                     ),
                  SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    height: 50,
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      color: Color.fromRGBO(249, 170, 51, 0),
                      child: Center(
                        child: Text(
                          "Ingresar",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 20),
                        ),
                      ),
                      onPressed: () {

                        Navigator.pushNamed(context, '/accept');
                      },
                    ),
                  ),


                  SizedBox(
                    height: 20,
                  ),

                  //Boton Crear Cuenta

                  SizedBox(
                    height: 50,
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      color: Colors.white,
                      disabledColor: Colors.white,
                      child: Center(
                        child: Text(
                          "Crear Cuenta",
                          style: TextStyle(
                              color: Color.fromRGBO(249, 170, 51, 1),
                              fontWeight: FontWeight.w500,
                              fontSize: 20),
                        ),
                      ),
                      onPressed: (){
                        //Navigator.of(context).pop();
                      },
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
textFormField(TextEditingController t, String label, String hint,
    IconData iconData) {
  return Padding(
      padding: const EdgeInsets.only(
        top: 10,
      ),
child:
      Container(
        padding: EdgeInsets.all(5),
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
          prefixIcon: Icon(iconData, color: Color.fromRGBO(249, 170, 51, 0.2),),
          hoverColor: Color.fromRGBO(249, 170, 51, 0.7),
          fillColor: Color.fromRGBO(249, 170, 51, 0.7),
          hintText: label,
          border:
          InputBorder.none,
          hintStyle: TextStyle(color: Colors.grey[400]),

      ),

    ),
      )
  );
}


