
import 'package:app_tieng_anh/models/roles.dart';
import 'package:collection/collection.dart';

class User 
{
  int?id;
  String email;
  String pass;
  String userName;
  String avatarURL;
  DateTime dateCreate;
  int idRole;
  
  User
  (
    {
      this.id,
      required this.email,
      required this.pass,
      required this.userName,
      this.avatarURL=" ",
      DateTime? dateCreate,
      required this.idRole
    }
  ): this.dateCreate=dateCreate??DateTime.now();

  Future<Roles?> getRoleUser() async
  {
    //Lấy ra role của người dùng rồi mapping với danh sách role
    List<Roles> ?roles;
    if(roles!=null)
    {
      return roles.firstWhereOrNull((x)=>x.id==idRole);
    }
    return null;
  }

  Map<String, dynamic> toMap() 
  {
    return 
    {
      'id': id,
      'email': email,
      'pass': pass,
      'userName': userName,
      'avatarURL': avatarURL,
      'dateCreate': dateCreate,
      'idRole': idRole,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) 
  {
    return User
    (
      id: map['id'] as int?,
      email: map['email'] as String,
      pass: map['pass'] as String,
      userName: map['userName'] as String,
      avatarURL: map['avatarURL'] as String,
      dateCreate: map['dateCreate'] as DateTime,
      idRole: map['idRole'] as int,
    );
  }
}