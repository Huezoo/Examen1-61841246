class Lista {
  final String titulo;
  final String descripcion;
  final String fecha_objetivo;


  Lista(this.titulo,
      {required this.descripcion, required this.fecha_objetivo});

  factory Lista.fromJson(Map<String, dynamic> json) => Lista(
        json["titulo"],
        descripcion: json["descripcion"],
        fecha_objetivo: json["fecha_objetivo"],
      );

  Map<String, dynamic> toJson() => {
        "titulo": titulo,
        "descripcion": descripcion,
        "fecha_objetivo": fecha_objetivo,
      };
}