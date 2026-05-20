import 'package:app_tieng_anh/models/ngu_phap.dart';

class NguPhapServices 
{
  List<NguPhap> nguPhaps=[];


  //Các phương thức
  //Tổng số lượng bài ngữ pháp (admin quản lý)
  Future<int> tongSoLuongNguPhap() async
  {
    return nguPhaps.length;
  }

  Future<List<NguPhap>?> timNguPhapTheoBH(int idBH) async
  {
    return nguPhaps.where((x)=> x.idBaiHoc==idBH).toList();
  }

  //Thêm bài ngữ pháp mới (admin quản lý)
  Future<void> themNguPhap(NguPhap NguPhap) async
  {
    nguPhaps.add(NguPhap);
  }

  //Xóa bài ngữ pháp (admin quản lý)
  Future<void> xoaNguPhap(int id) async
  {
    nguPhaps.removeWhere((x) => x.id == id);
  }

  //Cập nhật thông tin bài ngữ pháp (admin quản lý)
  Future<String> capNhatNguPhap(NguPhap newNguPhap) async
  {
    //Tìm index của bài ngữ pháp cần cập nhật
    int index = nguPhaps.indexWhere((x) => x.id == newNguPhap.id);
    if (index != -1)
    {
      nguPhaps[index] = newNguPhap;//Cập nhật thông tin bài ngữ pháp tại index tìm được
      return "Cập nhật bài ngữ pháp thành công!";
    }
    return "Cập nhật bài ngữ pháp không thành công!";
  }
}