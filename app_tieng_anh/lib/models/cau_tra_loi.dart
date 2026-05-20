

class CauTraLoi 
{
  int loaiLuaChon;
  String noiDung;
  int idCauHoi;
  bool choosed;

  CauTraLoi
  (
    {
      required this.loaiLuaChon,
      required this.noiDung,
      required this.idCauHoi,
      this.choosed=false
    }
  );
}