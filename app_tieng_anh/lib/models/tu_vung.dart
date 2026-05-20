

class TuVung 
{
  int?id;
  String tu;
  String nghia;
  String phienAm;
  String viDu;
  String audioURL;
  String ?imageURL;
  String loaiTu;
  int idBaiHoc;

  TuVung
  (
    {
      this.id,
      required this.tu,
      required this.nghia,
      required this.phienAm,
      required this.viDu,
      required this.audioURL,
      this.imageURL,
      required this.loaiTu,
      required this.idBaiHoc,
    }
  );

  Map<String, dynamic> toMap() 
  {
    return 
    {
      'id': id,
      'tu': tu,
      'nghia': nghia,
      'phienAm': phienAm,
      'viDu': viDu,
      'audioURL': audioURL,
      'imageURL': imageURL,
      'loaiTu': loaiTu,
      'idBaiHoc': idBaiHoc,
    };
  }

  factory TuVung.fromMap(Map<String, dynamic> map) 
  {
    return TuVung
    (
      id: map['id'] as int?,
      tu: map['tu'] as String,
      nghia: map['nghia'] as String,
      phienAm: map['phienAm'] as String,
      viDu: map['viDu'] as String,
      audioURL: map['audioURL'] as String,
      imageURL: map['imageURL'] as String?,
      loaiTu: map['loaiTu'] as String,
      idBaiHoc: map['idBaiHoc'] as int,
    );
  }

  factory TuVung.fromJson(dynamic jsonVocab)
  {
    return TuVung
    (
      tu: jsonVocab[''], 
      nghia: jsonVocab[''], 
      phienAm: jsonVocab[''], 
      viDu: jsonVocab[''], 
      audioURL: jsonVocab[''], 
      loaiTu: jsonVocab[''], 
      idBaiHoc: jsonVocab['']
    );
  }
}