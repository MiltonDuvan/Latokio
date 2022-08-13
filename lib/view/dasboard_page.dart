import 'package:flutter/material.dart';

class DasboardPage extends StatefulWidget {
  static String id = 'dasboard_page';

  @override
  _DasboardPageState createState() => _DasboardPageState();
}

class _DasboardPageState extends State<DasboardPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //res
        resizeToAvoidBottomInset: false,
        endDrawer: Drawer(),
        body: Center(
          child: Column(
            children: [
              Container(
                child: Padding(
                  padding: EdgeInsets.all(0),
                  child: AppBar(
                    backgroundColor: Color.fromARGB(255, 16, 11, 67),
                    title: Container(
                      child: TextField(
                        autofocus: false,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromARGB(255, 231, 231, 231),
                          hintText: "¿Que estas buscando?",
                          prefixIcon: Icon(Icons.search),
                          hintStyle: TextStyle(
                            fontSize: 20.0,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(216, 0, 0, 0),
                                width: 2.5),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          contentPadding: EdgeInsets.all(10),
                        ),
                      ),
                    ),
                    leading: IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: () => null,
                    ),
                  ),
                ),
              ),
              _iconText(),
              SizedBox(
                height: 15.0,
              ),
              _container1(),
              SizedBox(
                height: 15.0,
              ),
               _container2(),
                 SizedBox(
                height: 50.0,
              ),
              _navigationbar(),


            ],
          ),
        ),
      ),
    );
  }

  _iconText() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 16, 11, 67),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(32.0),
              bottomRight: Radius.circular(32.0),
            )),
        child: new SizedBox(
          height: 60.0,
          child: new Center(
            child: new Text(
              "Hola, Andres ",
              style: new TextStyle(fontSize: 20.0, color: Colors.white),
            ),
          ),
        ),
      );
    });
  }

  Widget _container1() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 94, 0, 141),
            borderRadius: BorderRadius.circular(30)),
        child: new SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 200.0,
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 10.0,
              ),
              const ListTile(
                title: Text(
                  "Ahora tus puntos",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.normal,
                      fontSize: 22),
                ),
                subtitle: Text('VALEN MÁS \n CON LATOKIO',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                    )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 0, 30),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Container(
                        // alignment: Alignment.center,
                        padding: EdgeInsets.all(0.0),
                        child: Text('Conoce mas aqui'),
                      ),
                      style: ElevatedButton.styleFrom(
                        alignment: Alignment.center,
                        fixedSize: Size(160, 20),
                        padding: EdgeInsets.all(0.0),
                        textStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        primary: Colors.white54,
                        onPrimary: Color.fromARGB(229, 255, 255, 255),
                        elevation: 10,
                        shape: StadiumBorder(),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Image.asset(
                      'assets/logo.png',
                      //se le quita el color para mostrar la imagen
                      color: Colors.white60,
                      height: 100.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    });
  }

  Widget _container2() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 94, 0, 141),
            borderRadius: BorderRadius.circular(30)),
        child: new SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 200.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              //aqui puedes poner un texto opcional
              Align(
                alignment: Alignment.centerRight,
                child: new Text("   "),
              ),
              Expanded(
                child: RichText(
                  text: TextSpan(
                    text: 'Visita nuestra \n',
                    style: TextStyle(
                        fontSize: 23.0,
                        fontWeight: FontWeight.normal,
                        color: Colors.white70),
                    children: [
                      TextSpan(
                          text: 'TIENDA',
                          style: TextStyle(
                            fontSize: 35.0,
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                ),
              ),

              Expanded(
                child: IconButton(
                  padding: const EdgeInsets.fromLTRB(0, 0, 80, 50),
                  icon: Icon(
                    Icons.store_rounded,
                    color: Colors.blueAccent,
                    size: 120,
                  ),
                  onPressed: () => null,
                ),
              )
            ],
          ),
        ),
      );
    });
  }
  
 Widget _navigationbar() {
  return StreamBuilder(
    

        builder: (BuildContext context, AsyncSnapshot snapshot) {
          
      return BottomNavigationBar( items: const [
       
        BottomNavigationBarItem(
          
          icon: Icon(Icons.home),
          label: 'Inicio'
        ),
         BottomNavigationBarItem(
          icon: Icon(Icons.store),
          label: 'Tienda'
        ),
         BottomNavigationBarItem(
          icon: Icon(Icons.account_circle_rounded),
          label: 'Mi Cuenta'
        ),
      ],

      );
 }
  );
}
}




 
//   
// }



// TextField(
                
//                       autofocus: true,
//                       decoration: InputDecoration(
//                         contentPadding: const EdgeInsets.symmetric(
//                             vertical: 0, horizontal: 20),
//                         filled: true,
//                         fillColor: Colors.grey.shade300,
//                         suffixIcon: const Icon(Icons.close),
//                         hintText: 'Shear her',
//                         border: OutlineInputBorder(
//                             borderSide: BorderSide.none,
//                             borderRadius: BorderRadius.circular(30)),
//                       ),
                      
//                 ),
//               ),
//                const SizedBox(
//                     width: 10,
//                   ),
//                   // This button is used to close the search modal
//                   TextButton(
//                       onPressed: () => Navigator.of(context).pop(),
//                       child: const Text('Cancel'))





// AppBar(
//                   leading: IconButton(
//                     icon: Icon(Icons.arrow_back, color: Colors.blue),
//                     onPressed: () => Navigator.of(context).pop(),
//                   ),





// barra con iconos

// backgroundColor: Colors.white,
//       appBar: MyCustomAppBar(
//         height: kToolbarHeight * 2,
//         appBar: AppBar(
//           backgroundColor: Colors.transparent,
//           title: Text("hello world"),
//         ),
//         bottomWidget: Container(
//           padding: const EdgeInsets.all(8),
//           decoration: BoxDecoration(
//             color: Colors.blue,
//           ),
//           child: Row(
//             children: [
//               Icon(Icons.add),
//               Icon(Icons.add_alert),
//               Icon(Icons.add_circle),
//             ],
//           ),
//         ),
//       ),
//       ),
//     );
//   }
// }

// class MyCustomAppBar extends StatelessWidget implements PreferredSize {
//   final AppBar appBar;
//   final Widget bottomWidget;
//   final double height;

//   const MyCustomAppBar({
//      Key? key,
//      required this.appBar,
//      required this.bottomWidget,
//      required this.height,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: height,
//       child: Stack(
//         children: [
//           Container(
//             color: Colors.red,
//             child: appBar,
//             height: height / 1.2,
//           ),
//           Positioned(
//             left: 30,
//             right: 30,
//             bottom: 0,
//             child: Material(
//               elevation: 10,
//               child: bottomWidget,
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   @override
//   Widget get child => this;

//   @override
//   Size get preferredSize => Size.fromHeight(height);
// }