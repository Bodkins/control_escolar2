import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MyHelpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
              end: const FractionalOffset(1, 0.9),
            ),
          ),
          child: Column(
            children: <Widget>[
              SizedBox(height: 50,),
              Container(
                  child: RichText(
                    textAlign: TextAlign.justify,

                    text: TextSpan(
                      text: 'Esta es la pagina de ayuda de la aplicación \n \n \n',

                      style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold, ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Login \n ',
                          style: TextStyle(color: Colors.white.withOpacity(0.8)),
                        ),

                      ],
                    ),
                  )
              ),
              DecoratedBox(
                decoration: BoxDecoration(

                  color: Colors.white,
                  border: Border.all(),

                ),

                child:Image.asset('assets/images/background.jpg',

    frameBuilder: (BuildContext context, Widget child, int frame, bool wasSynchronouslyLoaded) {
      if (wasSynchronouslyLoaded) {
        return child;
      }
      return AnimatedOpacity(
        child: child,
        opacity: frame == null ? 0 : 1,
        duration: const Duration(milliseconds: 1500),
        curve: Curves.easeOut,
      );
    }
                ),

              ),
              SizedBox(height: 500,),

              Container(
                  child: RichText(
                    text: TextSpan(
                      text: 'Hello ',
                      style: DefaultTextStyle.of(context).style,
                      children: <TextSpan>[
                        TextSpan(text: 'bold', style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: ' world!'),
                      ],
                    ),
                  )
              ),
              DecoratedBox(
                decoration: BoxDecoration(

                  color: Colors.transparent,
                  border: Border.all(),

                ),

                child:Image.asset('assets/images/background.jpg',

                    frameBuilder: (BuildContext context, Widget child, int frame, bool wasSynchronouslyLoaded) {

                      if (wasSynchronouslyLoaded) {
                        return Padding(
                          padding:EdgeInsets.all(20.0),
                          child: child,
                        );
                      }
                      return AnimatedOpacity(
                        child:  child,

                        opacity: frame == null ? 0 : 1,
                        duration: const Duration(milliseconds: 1500),
                        curve: Curves.easeOut,
                      );
                    }
                ),

              ),


            ],
          ) ,
        ),


      ),
    );
  }
}

