class User 
{
  int id;
  String email;
  String pass;
  String userName;
  DateTime dateCreate=DateTime.now();
  int idRole;
  
  User
  (
    {
      required this.id,
      required this.email,
      required this.pass,
      required this.userName,
      required this.idRole
    }
  );
}