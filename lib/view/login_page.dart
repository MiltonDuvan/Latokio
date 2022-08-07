
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  static String id = 'login_page';

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child:Column (
            children: [
              Image.asset('assets/logo.png',
              height: 100.0,
              ),
              SizedBox(height: 15.0,),
              _userTextField(),
              SizedBox(height: 15.0,),
              _passwordTextField(),
              SizedBox(height: 20.0,),
              

            ],
          ),
        ),
      ),
      );
  }
  

  Widget _userTextField() {
    return StreamBuilder(
      builder: (BuildContext context, AsyncSnapshot snapshot){
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: TextField(
            decoration: InputDecoration(
               icon: Icon(Icons.email),
              hintText: 'Correo',
              labelText: 'Correo',
            ),
          ),
        );
      }
      );
  }
  
  Widget _passwordTextField() {
    return StreamBuilder(
      builder: (BuildContext context, AsyncSnapshot snapshot){
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            obscureText: true,
            decoration: InputDecoration(
              icon: Icon(Icons.security),
              hintText: 'contraseña',
              labelText: 'Contraseña',
       ),
       onChanged: (value){

       },
          ),
        );
      }
      );
  }
  

}