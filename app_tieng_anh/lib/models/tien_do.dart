

class TienDo 
{
  int id;
  int userId;
  String loaiTienDo;
  int maEntity;
  double diem;
  bool hoanThanh;
  DateTime ?ngayHoanThanh;
  int xpEarned;

  TienDo
  (
    {
      required this.id,
      required this.userId,
      required this.loaiTienDo,
      required this.maEntity,
      required this.diem,
      this.hoanThanh=false,
      this.ngayHoanThanh,
      this.xpEarned=0
    }
  );
}