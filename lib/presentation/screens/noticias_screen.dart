import 'package:flutter/material.dart';

class NoticiasScreen extends StatelessWidget {
  const NoticiasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Boleta de Noticias'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: <Widget>[
              _createCard2(),
              _createCard1(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _createCard1() {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
              ),
              child: Image.asset(
                'assets/images/fiesta.jpg',
                fit: BoxFit.cover,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Concurso de Disfraces',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Los integrantes de todas las carreras te invitan a formar parte de la proxima gran fiesta de disfraces!'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _createCard2() {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        child: const Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
              ),
              child: FadeInImage(
                placeholder: AssetImage('assets/images/lista_imagen.jpg'),
                image: NetworkImage('https://www.ulima.edu.pe/sites/default/files/styles/600x300/public/page/image/_mg_1861.jpg?itok=f8KkqqT4'),
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Horas de vinculacion',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Unite a nuestras actividades de vinculacion para este proximo gran congreso en la cede central!'),
            ),
          ],
        ),
      ),
    );
  }
}
