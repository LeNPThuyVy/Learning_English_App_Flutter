import 'dart:convert';
import 'dart:ffi';

import 'package:app_tieng_anh/models/roles.dart';
import 'package:app_tieng_anh/models/user.dart';
import 'package:collection/collection.dart';
import 'package:crypto/crypto.dart';

class UserServices 
{
  List<User> users=[];

  Future<String> hashPassword(String pass) async
  {
    final bytes=utf8.encode(pass);
    final digest=sha256.convert(bytes);

    return digest.toString();
  }

  //Xác thực người dùng
  Future<User?> authUSer(String email ,String password ) async
  {
    if (users.isEmpty)
    {
      return null;
    }

    return users.firstWhereOrNull((x)=>x.email==email && x.pass==password);
  }

  //Đăng kí tài khoản mới 
  Future<void> registUser(User u) async
  {
    u.pass=await hashPassword(u.pass);
    users.add(u);
  }

  //Lấy thông tin người dùng
  Future<User?> getUserById(Long id) async
  {
    return users.firstWhereOrNull((x)=>x.id==id);
  }

  //Cập nhật thông tin
  Future<void> updateUserInfo(User newUser) async
  {
    User ?oUser=users.firstWhereOrNull((x)=>x.id==newUser.id);
    if(oUser!=null)
    {
      oUser.userName=newUser.userName;
      oUser.email=newUser.email;
    }

  }

  //Cập nhật avartar
  Future<void> updateAvartar(Long id,String avaURL) async
  {
    User ?u=users.firstWhereOrNull((x)=>x.id==id);
    if(u!=null)
    {
      u.avatarURL=avaURL;
      print("Cập nhật avatar thành công!");
      return;
    }
    print("Cập nhật avatar không thành công!");
  }

  //Đổi mật khẩu
  Future<void> updatePass(Long id,String newMK) async
  {
    User ?u=users.firstWhereOrNull((x)=>x.id==id);
    if(u!=null)
    {
      u.pass=await hashPassword(newMK);
      print("Cập nhật password thành công!");
      return;
    }
    print("Cập nhật password không thành công!");
  }

  //Kiểm tra quyền người dùng
  Future<Roles?>GetRole(User u,) async
  {
    //Lấy ra role của nguoif dùng rồi mapping với danh sách role
    List<Roles> ?roles;
    if(roles!=null)
    {
      return roles.firstWhereOrNull((x)=>x.id==u.idRole);
    }
  }
}