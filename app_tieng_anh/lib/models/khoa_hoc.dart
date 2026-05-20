
class KhoaHoc 
{
  //Thuộc tính 
  int ?id;
  String tenKhoaHoc;
  String ?anhDaiDien;
  String ?moTa;
  int maLoai;
  //Phương thức khởi tạo
  KhoaHoc
  (
    {
      this.id, 
      required this.tenKhoaHoc, 
      this.anhDaiDien,
      this.moTa,
      required this.maLoai,

    }
  );

  Map<String, dynamic> toMap() 
  {
    return 
    {
      'id': id,
      'tenKhoaHoc': tenKhoaHoc,
      'anhDaiDien': anhDaiDien,
      'moTa': moTa,
      'maLoai': maLoai,
    };
  }

  factory KhoaHoc.fromMap(Map<String, dynamic> map)
  {
    return KhoaHoc
    (
      id: map['id'] as int?,
      tenKhoaHoc: map['tenKhoaHoc'] as String,
      anhDaiDien: map['anhDaiDien'] as String?,
      moTa: map['moTa'] as String?,
      maLoai: map['maLoai'] as int,
    );
  }

}