import 'package:flutter/material.dart';

class SimpleDialogApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Dialog App"),
      ),
      body: Center(
        child: FlatButton(
          child: Text("Mostrar"),
          onPressed: () {
            _showDialog(context);
          },
        ),
      ),
    );
  }

  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: Text("Seleccione opción"),
          children: [
            FloatingActionButton(onPressed: null),
            ListTile(
              title: Text("Mis Contactos"),
              leading: Icon(Icons.contact_phone),
              onTap: () {
                Navigator.pushNamed(context, '/contactos');
              },
            ),
            ListTile(
              title: Text("Redes Sociales"),
              leading: Icon(Icons.people),
              onTap: () {
                Navigator.pushNamed(context, '/redes');
              },
            ),
            ListTile(
              title: Text("Datos Personales"),
              leading: Icon(Icons.person),
              onTap: () {
                Navigator.pushNamed(context, '/datos');
              },
            ),
            ListTile(
              title: Text("Mis Cursos"),
              leading: Icon(Icons.book),
              onTap: () {
                Navigator.pushNamed(context, '/cursos');
              },
            ),
          ],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        );
      },
      barrierDismissible: false,
    );
  }
}
