import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHelpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              Container(
                  child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'Esta es la página de ayuda de la aplicación \n \n \n',
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Login \n ',
                      style: TextStyle(color: Colors.orange.withOpacity(0.8)),
                    ),
                  ],
                ),
              )),
              Container(
                padding: EdgeInsets.all(10),
                child: Image.asset(
                  'assets/images/flutter_04.png',
                  frameBuilder: (BuildContext context, Widget child, int frame,
                      bool wasSynchronouslyLoaded) {
                    if (wasSynchronouslyLoaded) {
                      return child;
                    }
                    return AnimatedOpacity(
                      child: child,
                      opacity: frame == null ? 0 : 1,
                      duration: const Duration(milliseconds: 1500),
                      curve: Curves.easeOut,
                    );
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  padding: EdgeInsets.all(10),
                  child: RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                      text:
                          'Esta es la página que se encarga el ingreso de los usuarios, asignando el correo y la contraseña. ',
                      style: TextStyle(
                          color: Colors.orange,
                          fontSize: 30,
                          fontWeight: FontWeight.w100),
                    ),
                  )),
              SizedBox(
                height: 50,
              ),
              Container(
                child: RichText(
                  text: TextSpan(
                    text: 'Crear Cuenta',
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Image.asset('assets/images/flutter_05.png', frameBuilder:
                    (BuildContext context, Widget child, int frame,
                        bool wasSynchronouslyLoaded) {
                  if (wasSynchronouslyLoaded) {
                    return Padding(
                      padding: EdgeInsets.all(20.0),
                      child: child,
                    );
                  }
                  return AnimatedOpacity(
                    child: child,
                    opacity: frame == null ? 0 : 1,
                    duration: const Duration(milliseconds: 1500),
                    curve: Curves.easeOut,
                  );
                }),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  padding: EdgeInsets.all(10),
                  child: RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                      text:
                          'Esta es la página que se encarga de crear una cuenta nueva, esta se abre al dar clic en el botón de crear cuenta nueva en la página del login. ',
                      style: TextStyle(
                          color: Colors.orange,
                          fontSize: 30,
                          fontWeight: FontWeight.w100),
                    ),
                  )
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                child: RichText(
                  text: TextSpan(
                    text: 'Página de grupos',
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.all(10),
                child: Image.asset('assets/images/flutter_02.png', frameBuilder:
                    (BuildContext context, Widget child, int frame,
                    bool wasSynchronouslyLoaded) {
                  if (wasSynchronouslyLoaded) {
                    return Padding(
                      padding: EdgeInsets.all(20.0),
                      child: child,
                    );
                  }
                  return AnimatedOpacity(
                    child: child,
                    opacity: frame == null ? 0 : 1,
                    duration: const Duration(milliseconds: 1500),
                    curve: Curves.easeOut,
                  );
                }),
              ),
              Container(
                  padding: EdgeInsets.all(10),
                  child: RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                      text:
                      'En esta pagina se pueden observar todos y cada uno de los grupos, todos ellos enlistados los cuales cuenta con el nombre del grupo, así como la materia.'
                          'Para agregar un nuevo grupo solo basta con presionar el botón gris con el icono de mas en la parte inferior de la pantalla, la cual desplegara una página como la siguiente:',
                      style: TextStyle(
                          color: Colors.orange,
                          fontSize: 30,
                          fontWeight: FontWeight.w100),
                    ),
                  )
              ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.all(10),
                child: Image.asset('assets/images/flutter_06.jpg', frameBuilder:
                    (BuildContext context, Widget child, int frame,
                    bool wasSynchronouslyLoaded) {
                  if (wasSynchronouslyLoaded) {
                    return Padding(
                      padding: EdgeInsets.all(20.0),
                      child: child,
                    );
                  }
                  return AnimatedOpacity(
                    child: child,
                    opacity: frame == null ? 0 : 1,
                    duration: const Duration(milliseconds: 1500),
                    curve: Curves.easeOut,
                  );
                }),
              ),
SizedBox(height: 20,),
              Container(
                  padding: EdgeInsets.all(10),
                  child: RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                      text:
                      'Este es el formulario para agregar nuevos grupos, este consta de dos campos obligatorios los cuales son el nombre del grupo y la materia.',
                      style: TextStyle(
                          color: Colors.orange,
                          fontSize: 30,
                          fontWeight: FontWeight.w100),
                    ),
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
