
class LoaiKhoaHoc 
{
  int?id;
  String tenLoai;

  LoaiKhoaHoc
  (
    {
      this.id,
      required this.tenLoai
    }
  );
  Map<String, dynamic> toMap() 
  {
    return 
    {
      'id': id,
      'tenLoai': tenLoai,
    };
  }

  factory LoaiKhoaHoc.fromMap(Map<String, dynamic> map) 
  {
    return LoaiKhoaHoc
    (
      id: map['id'] as int?,
      tenLoai: map['tenLoai'] as String,
    );
  }
}