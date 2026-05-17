
class TuVung 
{
  int id;
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
    imageURL,
    {
      required this.id,
      required this.tu,
      required this.nghia,
      required this.phienAm,
      required this.viDu,
      required this.audioURL,
      required this.loaiTu,
      required this.idBaiHoc
    }
  );
}