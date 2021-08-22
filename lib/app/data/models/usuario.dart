// To parse this JSON data, do
//
//     final usuarioModel = usuarioModelFromJson(jsonString);

import 'dart:convert';

UsuarioModel usuarioModelFromJson(String str) =>
    UsuarioModel.fromJson(json.decode(str));

String usuarioModelToJson(UsuarioModel data) => json.encode(data.toJson());

class UsuarioModel {
  UsuarioModel({
    required this.nombre,
  });

  String nombre;

  factory UsuarioModel.fromJson(Map<String, Object?> json) => UsuarioModel(
        nombre: json["nombre"]! as String,
      );

  Map<String, Object?> toJson() => {
        "nombre": nombre,
      };
}
