class Client {



  int id;



  String nameGroup;



  String nameMate;







  Client({this.id, this.nameGroup, this.nameMate});







  //Para insertar los datos en la base de datos, tenemos que convertirlo en un "Map"







  Map<String, dynamic> toMap() => {



    "id": id,



    "nameGroup": nameGroup,



    "nameMate": nameMate,



  };







  //Para recibir los datos se se necesita pasar de Map a json







  factory Client.fromMap(Map<String, dynamic> json) => new Client(



    id: json["id"],



    nameGroup: json["nameGroup"],



    nameMate: json["nameMate"],



  );







}