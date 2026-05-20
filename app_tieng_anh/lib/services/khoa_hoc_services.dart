
import 'package:app_tieng_anh/models/khoa_hoc.dart';

class KhoaHocServices 
{
  List<KhoaHoc> KhoaHocs;
  KhoaHocServices
  (
    {
      required this.KhoaHocs
    }
  );

  //Các phương thức
  //Tổng số lượng khóa học (admin quản lý)
  Future<int> tongSoLuongKhoaHoc() async
  {
    return KhoaHocs.length;
  }

  //Tìm khóa học theo tên (user và admin)
  List<KhoaHoc> timKhoaHocTheoTen(String tenKhoaHoc)
  {
    return KhoaHocs.where((khoaHoc) => khoaHoc.tenKhoaHoc.toLowerCase().contains(tenKhoaHoc.toLowerCase())).toList();
  }

  //Thêm khóa học mới (admin quản lý)
  Future<void> themKhoaHoc(KhoaHoc khoaHoc) async
  {
    KhoaHocs.add(khoaHoc);
  }

  //Xóa khóa học (admin quản lý)
  Future<void> xoaKhoaHoc(int id) async
  {
    KhoaHocs.removeWhere((khoaHoc) => khoaHoc.id == id);
  }

  //Cập nhật thông tin khóa học (admin quản lý)
  String capNhatKhoaHoc(KhoaHoc newKhoaHoc)
  {
    //Tìm index của khóa học cần cập nhật
    int index = KhoaHocs.indexWhere((khoaHoc) => khoaHoc.id == newKhoaHoc.id);
    if (index != -1)
    {
      KhoaHocs[index] = newKhoaHoc;//Cập nhật thông tin khóa học tại index tìm được
      return "Cập nhật khóa học thành công!";
    }
    return "Cập nhật khóa học không thành công!";
  }

}