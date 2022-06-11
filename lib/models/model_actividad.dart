import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class ModelActividad {
  String url;
  String id;
  String idUser;
  String idCategory;
  String nombre;
  String fechaInicio;
  String fechaFinal;
  String descripcion;
  String prioridad;
  String estado;

  ModelActividad(
      {required this.url,
      required this.id,
      required this.idUser,
      required this.idCategory,
      required this.nombre,
      required this.fechaInicio,
      required this.fechaFinal,
      required this.descripcion,
      required this.prioridad,
      required this.estado});

  //setter and getter
  String get getUrl => url;
  String get getId => id;
  String get getIdUser => idUser;
  String get getIdCategory => idCategory;
  String get getNombre => nombre;
  String get getFechaInicio => fechaInicio;
  String get getFechaFinal => fechaFinal;
  String get getDescripcion => descripcion;
  String get getPrioridad => prioridad;
  String get getEstado => estado;

  set setUrl(String url) => this.url = url;
  set setId(String id) => this.id = id;
  set setIdUser(String idUser) => this.idUser = idUser;
  set setIdCategory(String idCategory) => this.idCategory = idCategory;
  set setNombre(String nombre) => this.nombre = nombre;
  set setFechaInicio(String fechaInicio) => this.fechaInicio = fechaInicio;
  set setFechaFinal(String fechaFinal) => this.fechaFinal = fechaFinal;
  set setDescripcion(String descripcion) => this.descripcion = descripcion;
  set setPrioridad(String prioridad) => this.prioridad = prioridad;
  set setEstado(String estado) => this.estado = estado;

  factory ModelActividad.fromJson(Map<String, dynamic> json) {
    return ModelActividad(
      url: json['url'],
      id: json['id'],
      idUser: json['idUser'],
      idCategory: json['idCategory'],
      nombre: json['nombre'],
      fechaInicio: json['fechaInicio'],
      fechaFinal: json['fechaFinal'],
      descripcion: json['descripcion'],
      prioridad: json['prioridad'],
      estado: json['estado'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'url': url,
      'id': id,
      'idUser': idUser,
      'idCategory': idCategory,
      'nombre': nombre,
      'fechaInicio': fechaInicio,
      'fechaFinal': fechaFinal,
      'descripcion': descripcion,
      'prioridad': prioridad,
      'estado': estado,
    };
  }
}
