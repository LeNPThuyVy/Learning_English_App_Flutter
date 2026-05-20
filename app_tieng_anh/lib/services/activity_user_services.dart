import 'package:app_tieng_anh/models/activity_user.dart';

class ActivityUserServices 
{

  final List<ActivityUser> activities = [];

  //Lấy thông tin Activity của User
  Future<ActivityUser?> getActivityUser(int userId) async {

      // Trong thực tế: return await http.get('/activity/$userId');
      return activities.firstWhere((act) => act.userId == userId);
    
  }

  //2. Hàm cộng điểm XP cho User
  Future<void> congDiemXP(int userId, int xp) async 
  {
    ActivityUser? activity = await getActivityUser(userId);
    
    //Cộng điểm
    activity!.xpPoint += xp;
    
    //Trong thực tế: Gọi API PUT/POST để lưu lên server
    print("User $userId nhận được $xp XP. Tổng XP hiện tại: ${activity.xpPoint}");

    //Lưu vào db

  }

  //3. Hàm cập nhật Streak (Gọi khi user hoàn thành 1 bài học đầu tiên trong ngày)
  Future<void> capNhatStreak(int userId, DateTime lastActiveDate) async 
  {
    ActivityUser? activity = await getActivityUser(userId);
    DateTime today = DateTime.now();

    // Tính khoảng cách số ngày giữa hôm nay và ngày hoạt động cuối cùng
    final difference = today.difference(lastActiveDate).inDays;

    if (difference == 1) 
    {
      // Học liên tiếp từ hôm qua sang hôm nay
      activity!.streak += 1;
      print("Tuyệt vời! Bạn giữ được chuỗi streak: ${activity.streak} ngày.");
    } 
    else if (difference > 1) 
    {
      // Bị ngắt quãng ngày học -> Reset về 1
      activity!.streak = 1;
      print("Bạn đã bị đứt chuỗi. Streak reset về 1.");
    } 
    else if (activity!.streak == 0) 
    {
      // Trường hợp user mới tinh chưa bao giờ học
      activity.streak = 1;
    }
    
    // Lưu lại vào DB/API
  
  }

}