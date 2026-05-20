import 'package:app_tieng_anh/models/nghe.dart';

class ListeningServices 
{
   List<Nghe> baiNghes=[];


  //Các phương thức
  //Tổng số lượng bài nghe (admin quản lý)
  Future<int> tongSoLuongBaiNghe() async
  {
    return baiNghes.length;
  }

  List<Nghe> timBaiNgheTheoBH(int idBH)
  {
    return baiNghes.where((x)=> x.idBaiHoc==idBH).toList();
  }

  //Thêm bài nghe mới (admin quản lý)
  Future<void> themBaiNghe(Nghe BaiNghe) async
  {
    baiNghes.add(BaiNghe);
  }

  //Xóa bài nghe (admin quản lý)
  Future<void> xoaBaiNghe(int id) async
  {
    baiNghes.removeWhere((x) => x.id == id);
  }

  //Cập nhật thông tin bài nghe (admin quản lý)
  Future<String> capNhatBaiNghe(Nghe newBaiNghe) async
  {
    //Tìm index của bài nghe cần cập nhật
    int index = baiNghes.indexWhere((x) => x.id == newBaiNghe.id);
    if (index != -1)
    {
      baiNghes[index] = newBaiNghe;//Cập nhật thông tin bài nghe tại index tìm được
      return "Cập nhật bài nghe thành công!";
    }
    return "Cập nhật bài nghe không thành công!";
  }
}