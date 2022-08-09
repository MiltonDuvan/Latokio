import 'package:flutter/material.dart';

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
              SizedBox(
                height: 50.0,
              ),
              Flexible(
                child: Image.asset(
                  'assets/logo.png',
                  height: 100.0,
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              _iconText(),
              SizedBox(
                height: 15.0,
              ),
              _userTextField(),
              SizedBox(
                height: 15.0,
              ),
              _passwordTextField(),
              SizedBox(
                height: 15.0,
              ),
              _buttonlogin(),
              SizedBox(
                height: 10.0,
              ),
              _ForgotPassTextField(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _iconText() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        child: Text(
          "LATOKIO",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.normal,
            fontSize: 30,
          ),
        ),
      );
    });
  }

  Widget _userTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        height: 50.0,
        width: 390,
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Usuario',
            hintStyle: TextStyle(fontSize: 20.0),
            enabledBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: Color.fromARGB(45, 91, 92, 91), width: 2.5),
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
        ),
      );
    });
  }

  Widget _passwordTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        height: 50.0,
        width: 390,
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          obscureText: true,
          decoration: InputDecoration(
            hintText: 'contraseña',
            hintStyle: TextStyle(fontSize: 20.0),
            enabledBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: Color.fromARGB(45, 91, 92, 91), width: 2.5),
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
          onChanged: (value) {},
        ),
      );
    });
  }

  Widget _buttonlogin() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return ElevatedButton(
        onPressed: () {},
        child: Container(
          constraints: BoxConstraints(
            maxWidth: 400,
            minHeight: 50,
          ),
          alignment: Alignment.center,
          padding: EdgeInsets.all(0.0),
          child: Text('Iniciar Sesión'),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFFFF02EC), Color(0xFF5D176A)],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        style: ElevatedButton.styleFrom(
          fixedSize: Size(350, 50),
          padding: EdgeInsets.all(0.0),
          textStyle: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          // primary: Colors.yellow,
          onPrimary: Colors.white,
          elevation: 15,
          shadowColor: Colors.red,
          shape: StadiumBorder(),
        ),

        // style: ButtonStyle(
        //   shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        //     RoundedRectangleBorder(
        //         borderRadius: BorderRadius.circular(18.0),
        //         side: BorderSide(color: Color.fromARGB(255, 244, 54, 54),
        //         ),
        //         ),
        //   ),
        // ),
      );
    });
  }

  Widget _ForgotPassTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        child: new GestureDetector(onTap: () {
          Navigator.pushNamed(context, LoginPage.id, arguments: "1");
          child:
          new Text(
            "¿Has olvidado tu contraseña?"
           
          );
        }),
      );
    });
  }
}
//   
// }
