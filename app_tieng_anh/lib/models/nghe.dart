
class Nghe 
{
  int? id;
  String cauMau;
  String audioURL;
  String noiDung;
  int ?idBaiHoc;

  Nghe
  (
    {
      this.id,
      required this.cauMau,
      required this.audioURL,
      required this.noiDung,
      this.idBaiHoc
    }
  );

  factory Nghe.fromJson(dynamic jsonBaiNghe)
  {
    return Nghe
    (
      cauMau: jsonBaiNghe[''], 
      audioURL: jsonBaiNghe[''], 
      noiDung: jsonBaiNghe['']
    );
  }
}