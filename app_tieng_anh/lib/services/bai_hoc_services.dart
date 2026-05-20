import 'package:app_tieng_anh/models/bai_hoc.dart';
import 'package:collection/collection.dart';

class BaiHocServices 
{

  List<BaiHoc> BaiHocs=[];
 

  Future<void> themBaiHoc(BaiHoc baiHoc) async
  {
    BaiHocs.add(baiHoc);
  }

  Future<void> xoaBaiHoc(BaiHoc baiHoc) async
  {
    BaiHocs.remove(baiHoc);
  }

  Future<void> xoaBaiHocTheoId(int id) async
  {
    BaiHocs.removeWhere((baiHoc)=> baiHoc.id==id);
  }

  Future<String> capNhatBaiHoc(BaiHoc newBai) async
  {
    int idx=BaiHocs.indexWhere((baiHoc)=>baiHoc.id==newBai.id);
    if(idx!=-1)
    {
      BaiHocs[idx]=newBai;
      return "Cập nhật bài học thành công!";
    }
    return "Cập nhật bài học không thành công!";
  }

  Future<List<BaiHoc>> layBaiHocTheoKH(int idKhoaHoc) async
  {
    return BaiHocs.where((x)=>x.idKH==idKhoaHoc).toList();
  }
}