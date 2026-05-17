class TienDo 
{
  int id;
  int userId;
  String loaiTienDo;
  int ma_entity;
  double diem;
  bool hoanThanh=false;
  DateTime ?ngayHoanThanh;
  int xpEarned=0;

  TienDo
  (
    {
      required this.id,
      required this.userId,
      required this.loaiTienDo,
      required this.ma_entity,
      required this.diem
    }
  );
}