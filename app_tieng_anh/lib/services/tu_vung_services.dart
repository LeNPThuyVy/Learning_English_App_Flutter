import 'package:app_tieng_anh/models/tu_vung.dart';

class TuVungServices 
{
  List<TuVung> tuVungs=[];


  //Các phương thức
  //Tổng số lượng từ vựng (admin quản lý)
  Future<int> tongSoLuongTuVung() async
  {
    return tuVungs.length;
  }

  Future<List<TuVung>> timTuVungTheoBH(int idBH) async
  {
    return tuVungs.where((x)=> x.idBaiHoc==idBH).toList();
  }

  //Thêm từ vựng mới (admin quản lý)
  Future<void> themTuVung(TuVung TuVung) async
  {
    tuVungs.add(TuVung);
  }

  //Xóa từ vựng (admin quản lý)
  Future<void> xoaTuVung(int id) async
  {
    tuVungs.removeWhere((x) => x.id == id);
  }

  //Cập nhật thông tin từ vựng (admin quản lý)
  Future<String> capNhatTuVung(TuVung newTuVung) async
  {
    //Tìm index của từ vựng cần cập nhật
    int index = tuVungs.indexWhere((x) => x.id == newTuVung.id);
    if (index != -1)
    {
      tuVungs[index] = newTuVung;//Cập nhật thông tin từ vựng tại index tìm được
      return "Cập nhật từ vựng thành công!";
    }
    return "Cập nhật từ vựng không thành công!";
  }
}