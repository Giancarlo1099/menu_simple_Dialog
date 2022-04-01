
import 'package:flutter/material.dart';
import 'package:menu/screens/contactos.dart';
import 'package:menu/screens/cursos.dart';
import 'package:menu/screens/datos.dart';
import 'package:menu/screens/redes.dart';
//import 'package:menu/screens/alertdialog.dart';
import 'package:menu/screens/simpledialog.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: "/",
      routes: {
        "/": (BuildContext context) => SimpleDialogApp(),
        "/contactos":(BuildContext context) => MisContactos(),
        "/redes":(BuildContext context) => RedesSociales(),
        "/datos":(BuildContext context) => DatosPersonales(),
        "/cursos":(BuildContext context) => MisCursos(),
        //"/alertd": (BuildContext context) => AlertDialogApp(),
      },
    );
  }
}
