
class User 
{
  int id;
  String email;
  String pass;
  String userName;
  String avatarURL;
  DateTime dateCreate;
  int idRole;
  
  User
  (
    {
      required this.id,
      required this.email,
      required this.pass,
      required this.userName,
      this.avatarURL="",
      DateTime? dateCreate,
      required this.idRole
    }
  ): this.dateCreate=dateCreate??DateTime.now();
}