
import 'package:app_tieng_anh/models/tien_do.dart';
import 'package:app_tieng_anh/services/activity_user_services.dart';
import 'package:collection/collection.dart';

class TienDoServices 
{
  //Khởi tạo ActivityUserService bên trong để phối hợp xử lý
  final ActivityUserServices activityUserService = ActivityUserServices();
  
  // Giả lập Database lưu trữ tiến độ
  final List<TienDo> tienDo = [];

  //Lấy tiến độ của một người dùng trong một bài học 
  Future<TienDo?> getEntityProgress(int userId, String loaiTienDo, int maEntity) async {

      return tienDo.firstWhereOrNull((x) => x.userId == userId && x.loaiTienDo == loaiTienDo && x.maEntity == maEntity);
   
  }

  //Cập nhật tiến độ khi User hoàn thành bài học/câu hỏi
  Future<TienDo> saveProgress({required int userId,required String loaiTienDo,required int maEntity,required double diemSo,required int xpThuong,}) async 
  {
    
    //Kiểm tra xem trước đó user đã làm bài này chưa
    TienDo? progress = await getEntityProgress(userId, loaiTienDo, maEntity);

    if (progress == null) 
    {
      //Nếu user lần đầu làm bài này thì tạo mới bản ghi tiến độ
      progress = TienDo(id: DateTime.now().millisecondsSinceEpoch,userId: userId,loaiTienDo: loaiTienDo,maEntity: maEntity,diem: diemSo,);
      
      // Cập nhật các trạng thái hoàn thành
      progress.hoanThanh = (diemSo >= 5.0); //Trên 5 điểm mới tính là hoàn thành
      progress.ngayHoanThanh = DateTime.now();
      progress.xpEarned = xpThuong;

      tienDo.add(progress);
      
      //Lần đầu làm bài này nên được cộng XP
      await activityUserService.congDiemXP(userId, xpThuong);
      // Cập nhật chuỗi ngày học
      await activityUserService.capNhatStreak(userId, DateTime.now().subtract(Duration(days: 1))); // Giả lập ngày cuối là hôm qua để tăng streak
      
    } 
    else
    {
      //User làm lại bài cũ
      print("User đang làm lại bài cũ. Điểm cũ: ${progress.diem}, Điểm mới: $diemSo");
      
      if (diemSo > progress.diem) 
      {
        progress.diem = diemSo; // Chỉ cập nhật nếu điểm mới cao hơn điểm cũ
      }
      
      if (!progress.hoanThanh && diemSo >= 5.0) 
      {
        // Nếu lần trước tạch (hoanThanh = false), lần này đậu -> Cập nhật trạng thái
        progress.hoanThanh = true;
        progress.ngayHoanThanh = DateTime.now();
        
        //Thưởng một ít điểm khích lệ 
        await activityUserService.congDiemXP(userId, (xpThuong * 0.5).toInt());
      }
    }

    return progress;
  }
}