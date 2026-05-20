

class TienDo 
{
  int?id;
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
      this.id,
      required this.userId,
      required this.loaiTienDo,
      required this.maEntity,
      required this.diem,
      this.hoanThanh=false,
      this.ngayHoanThanh,
      this.xpEarned=0
    }
  );

  Map<String, dynamic> toMap() 
  {
    return 
    {
      'id': id,
      'userId': userId,
      'loaiTienDo': loaiTienDo,
      'maEntity': maEntity,
      'diem': diem,
      'hoanThanh': hoanThanh ? 1 : 0, 
      'ngayHoanThanh': ngayHoanThanh,
      'xpEarned': xpEarned,
    };
  }

  factory TienDo.fromMap(Map<String, dynamic> map) 
  {
    return TienDo
    (
      id: map['id'] as int?,
      userId: map['userId'] as int,
      loaiTienDo: map['loaiTienDo'] as String,
      maEntity: map['maEntity'] as int,
      // SQLite đôi khi trả về int cho kiểu REAL nếu số tròn (ví dụ 10 thay vì 10.0), 
      // nên dùng .toDouble() cho an toàn.
      diem: (map['diem'] as num).toDouble(), 
      hoanThanh: (map['hoanThanh'] as int) == 1, // Chuyển int (1/0) từ DB sang bool
      ngayHoanThanh: map['ngayHoanThanh'] as DateTime?,
      xpEarned: map['xpEarned'] as int,
    );
  }
}