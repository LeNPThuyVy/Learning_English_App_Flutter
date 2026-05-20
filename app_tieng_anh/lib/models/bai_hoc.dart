
class BaiHoc 
{
  int? id;
  int idKH;
  String name;
  BaiHoc
  (
    {
      this.id,
      required this.idKH,
      required this.name
    }
  );

  //Chuyển từ Object sang dạng map
  Map<String, dynamic> toMap()
  {
    return
    {
      'id':id,
      'idKH':idKH,
      'name':name
    };
  }

  //Chuyển từ Map thành Object 
  factory BaiHoc.fromMap(Map<String,dynamic> map)
  {
    return BaiHoc
    (
      id: map['id'] as int?,
      idKH: map['idKH'] as int, 
      name: map['name'] as String
    );
  }
  
}