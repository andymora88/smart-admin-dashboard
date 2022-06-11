import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class listCategorias extends StatefulWidget {
  listCategorias({Key? key}) : super(key: key);

  @override
  State<listCategorias> createState() => _StatelistCategorias();
}

class _StatelistCategorias extends State<listCategorias> {
  listCategorias _userControl = new listCategorias();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de categorias"),
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
              future: null,
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
