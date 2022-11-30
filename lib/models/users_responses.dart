import 'dart:convert';

class UsersResponses {
    UsersResponses({
        required this.id,
       required this.usuario,
       required this.clave,
    });

    String id;
    String usuario;
    String clave;


    factory UsersResponses.fromJson(String str) => UsersResponses.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory UsersResponses.fromMap(Map<String, dynamic> json) => UsersResponses(
        id: json["id"],
        usuario: json["usuario"],
        clave: json["clave"],
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "usuario": usuario,
        "clave": clave,
    };
}
