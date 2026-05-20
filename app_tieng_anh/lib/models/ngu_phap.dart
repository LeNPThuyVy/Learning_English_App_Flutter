
class NguPhap 
{
  int?id;
  String tieuDe;
  String noiDung;
  String giaiThich;
  String viDu;
  int idBaiHoc;

  NguPhap
  (
    {
      this.id,
      required this.tieuDe,
      required this.noiDung,
      required this.giaiThich,
      required this.viDu,
      required this.idBaiHoc
    }
  );

  Map<String, dynamic> toMap() 
  {
    return 
    {
      'id': id,
      'tieuDe': tieuDe,
      'noiDung': noiDung,
      'giaiThich': giaiThich,
      'viDu': viDu,
      'idBaiHoc': idBaiHoc,
    };
  }

  factory NguPhap.fromMap(Map<String, dynamic> map) 
  {
    return NguPhap
    (
      id: map['id'] as int?,
      tieuDe: map['tieuDe'] as String,
      noiDung: map['noiDung'] as String,
      giaiThich: map['giaiThich'] as String,
      viDu: map['viDu'] as String,
      idBaiHoc: map['idBaiHoc'] as int,
    );
  }
}