import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../controllers/controllerActividad.dart';

class listActividades extends StatefulWidget {
  listActividades({Key? key}) : super(key: key);

  @override
  State<listActividades> createState() => _StatelistActividades();
}

class _StatelistActividades extends State<listActividades> {
  ActividadController _actividadController = new ActividadController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de actividades"),
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
              future: _actividadController.getAllActividades(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(snapshot.data[index].nombre),
                        subtitle: Text(snapshot.data[index].descripcion),
                        trailing: Icon(Icons.keyboard_arrow_right),
                        onTap: () {},
                      );
                    },
                  );
                } else {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
