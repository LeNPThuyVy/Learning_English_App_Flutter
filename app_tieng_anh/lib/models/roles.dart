
class Roles 
{
  int?id;
  String tenRole;
  Roles
  (
    {
      this.id,
      required this.tenRole
    }
  );

  Map<String, dynamic> toMap() 
  {
    return
    {
      'id': id,
      'tenRole': tenRole,
    };
  }

  factory Roles.fromMap(Map<String, dynamic> map) {
    return Roles(
      id: map['id'] as int?,
      tenRole: map['tenRole'] as String,
    );
  }
}