import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import '../models/model_user.dart';
import '../models/model_actividad.dart';

class ActividadController {
  CollectionReference actividades =
      FirebaseFirestore.instance.collection("Actividad");
  CollectionReference users = FirebaseFirestore.instance.collection("otp");

  //get all actividades using fromJson
  Future<List<ModelActividad>> getAllActividades() async {
    List<ModelActividad> actividades = [];
    await this.actividades.get().then((value) {
      value.docs.forEach((element) {
        ModelActividad m = ModelActividad(
          url: "",
          id: "",
          idUser: "",
          nombre: "",
          fechaInicio: "",
          fechaFinal: "",
          descripcion: "",
          prioridad: "",
          estado: "",
          idCategory: "",
        );
        m.setUrl = element['url'];
        m.setId = element.id;
        m.setIdUser = element['idUser'];
        m.setNombre = element['nombre'];
        m.setFechaInicio = element['fechaInicio'];
        m.setFechaFinal = element['fechaFinal'];
        m.setDescripcion = element['descripcion'];
        m.setPrioridad = element['prioridad'];
        m.setEstado = element['estado'];
        m.setIdCategory = element['idCategory'];
        actividades.add(m);
      });
    });

    return actividades;
  }
}
