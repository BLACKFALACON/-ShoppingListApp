import 'dart:convert';

class Item{
  int id;
  String name;
  bool isCompleted;
  bool isArchived;
  Item({this.id,this.name,this.isArchived,this.isCompleted});

  factory Item.fromJson(Map<String, dynamic> map) {
    return Item(
      id: map['id'],
      name: map['name'],
      isCompleted: map['isCompleted'],
      isArchived: map['isArchived']
    );
  }

    String toJson(){
    var map=Map<String ,dynamic>();
    map["name"]=name;
    map["isComplated"]=isCompleted;
    map["isArchived"] =isArchived;

      return json.encode(map);
    }
}