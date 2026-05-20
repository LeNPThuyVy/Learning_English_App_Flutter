

class CauTraLoi 
{
  int?id;
  int loaiLuaChon;
  String noiDung;
  int idCauHoi;
  bool choosed;

  CauTraLoi
  (
    {
      this.id,
      required this.loaiLuaChon,
      required this.noiDung,
      required this.idCauHoi,
      this.choosed=false
    }
  );
}