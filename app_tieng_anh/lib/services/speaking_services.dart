import 'package:app_tieng_anh/models/noi.dart';

class SpeakingServices 
{
  List<Noi> baiNois=[];


  //Các phương thức
  //Tổng số lượng bài nghe (admin quản lý)
  Future<int> tongSoLuongBaiNoi() async
  {
    return baiNois.length;
  }

  Future<List<Noi>> timBaiNoiTheoBH(int idBH) async
  {
    return baiNois.where((x)=> x.idBaiHoc==idBH).toList();
  }

  //Thêm bài nghe mới (admin quản lý)
  Future<void> themBaiNoi(Noi baiNoi) async
  {
    baiNois.add(baiNoi);
  }

  //Xóa bài nghe (admin quản lý)
  Future<void> xoaBaiNoi(int id) async
  {
    baiNois.removeWhere((x) => x.id == id);
  }

  //Cập nhật thông tin bài nghe (admin quản lý)
  Future<String> capNhatBaiNoi(Noi newbaiNoi) async
  {
    //Tìm index của bài nghe cần cập nhật
    int index = baiNois.indexWhere((x) => x.id == newbaiNoi.id);
    if (index != -1)
    {
      baiNois[index] = newbaiNoi;//Cập nhật thông tin bài nghe tại index tìm được
      return "Cập nhật bài nghe thành công!";
    }
    return "Cập nhật bài nghe không thành công!";
  }
}