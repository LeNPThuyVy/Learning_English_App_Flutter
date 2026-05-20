import 'package:app_tieng_anh/models/cau_hoi.dart';

class CauHoiServices 
{
  List<CauHoi> cauHois=[];


  //Các phương thức
  //Tổng số lượng câu hỏi (admin quản lý)
  Future<int> tongSoLuongCauHoi() async
  {
    return cauHois.length;
  }

  //Tìm câu hỏi
  Future<List<CauHoi>> timCauHoi (String cauHoi) async
  {
    return cauHois.where((x) => x.cauHoi.toLowerCase().contains(cauHoi.toLowerCase())).toList();
  }

  //Thêm câu hỏi mới (admin quản lý)
  Future<void> themCauHoi(CauHoi khoaHoc) async
  {
    cauHois.add(khoaHoc);
  }

  //Xóa câu hỏi (admin quản lý)
  Future<void> xoaCauHoi(int id) async
  {
    cauHois.removeWhere((khoaHoc) => khoaHoc.id == id);
  }

  //Cập nhật thông tin câu hỏi (admin quản lý)
  Future<String> capNhatCauHoi(CauHoi newKhoaHoc) async
  {
    //Tìm index của câu hỏi cần cập nhật
    int index = cauHois.indexWhere((khoaHoc) => khoaHoc.id == newKhoaHoc.id);
    if (index != -1)
    {
      cauHois[index] = newKhoaHoc;//Cập nhật thông tin câu hỏi tại index tìm được
      return "Cập nhật câu hỏi thành công!";
    }
    return "Cập nhật câu hỏi không thành công!";
  }
}