
//Nhớ xem lại coi cách truyền id sao cho hợp lý nha
class Noi 
{
  int ?id;
  String cauMau;
  String audioURL;
  int ?idBaiHoc;
  
  Noi
  (
    {
      this.id,
      required this.cauMau,
      required this.audioURL,
      this.idBaiHoc
    }
  );

  factory Noi.fromJson(dynamic jsonBaiNoi)
  {
    return Noi
    (
      cauMau: jsonBaiNoi[''],
      audioURL: jsonBaiNoi['']
    );
  }
}