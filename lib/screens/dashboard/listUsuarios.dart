import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../controllers/controllerActividad.dart';
import '../../controllers/controller_user.dart';

class listUsuarios extends StatefulWidget {
  listUsuarios({Key? key}) : super(key: key);

  @override
  State<listUsuarios> createState() => _StatelistUsuarios();
}

class _StatelistUsuarios extends State<listUsuarios> {
  UserController _userControl = new UserController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de usuarios"),
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
              future: _userControl.listUsers(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(snapshot.data[index].userName),
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
