import 'package:flutter/material.dart';

class AlertDialogApp extends StatelessWidget {
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
            _alertDialog(context);
          },
        ),
      ),
    );
  }
}
/*
Navigator.of(context).push(MaterialPageRoute<Null>(
                        builder: (BuildContext context) {
                      return new Gorros();
*/
void _alertDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text("Pregunta"),
        content: Text("Está seguro de eliminar?"),
        actions: [
          FlatButton(
            child: Text("Si"),
            onPressed: () {
              Navigator.pop(context);
            },
            textColor: Colors.white,
          ),
          FlatButton(
            child: Text("No"),
            onPressed: () {
              Navigator.pop(context);
            },
            textColor: Colors.white,
          )
        ],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        backgroundColor: Colors.cyan,
      );
    },
    barrierDismissible: false,
  );
}
