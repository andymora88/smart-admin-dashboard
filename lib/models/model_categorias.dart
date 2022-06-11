class ModelCategory {
  String id;
  String idUser;
  String nombre;
  String url;

  ModelCategory({
    required this.id,
    required this.idUser,
    required this.nombre,
    required this.url,
  });

  //setter and getter
  String get getId => id;
  String get getIdUser => idUser;
  String get getNombre => nombre;
  String get getUrl => url;

  set setId(String id) => this.id = id;
  set setIdUser(String idUser) => this.idUser = idUser;
  set setNombre(String nombre) => this.nombre = nombre;
  set setUrl(String url) => this.url = url;

  factory ModelCategory.fromJson(Map<String, dynamic> json) {
    return ModelCategory(
      id: json['id'],
      idUser: json['idUser'],
      nombre: json['nombre'],
      url: json['url'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'idUser': idUser,
      'nombre': nombre,
      'url': url,
    };
  }
}
