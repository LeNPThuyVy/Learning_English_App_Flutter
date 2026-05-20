
import 'package:app_tieng_anh/models/cau_tra_loi.dart';

class CauHoi 
{
  final List<CauTraLoi> CauTraLois=[];
  int id;
  String cauHoi;
  String dapAn;
  String loaiBai;//Bài nghe nói đọc viết hay từ vựng ngữ pháp ,...
  int maBai;
  CauHoi
  (
    {
      required this.id,
      required this.cauHoi,
      required this.dapAn,
      required this.loaiBai,
      required this.maBai
    }
  );

  Future<List<CauTraLoi>> getCauTraLoi() async
  {
    return CauTraLois.where((x)=>x.idCauHoi==this.id).toList();
  }
}