
import 'package:app_tieng_anh/models/cau_tra_loi.dart';

class CauHoi 
{

  int? id;
  String cauHoi;
  String dapAn;
  String loaiBai;//Bài nghe nói đọc viết hay từ vựng ngữ pháp ,...
  int maBai;
  CauHoi
  (
    {
      this.id,
      required this.cauHoi,
      required this.dapAn,
      required this.loaiBai,
      required this.maBai
    }
  );

    Future<List<CauTraLoi>> getCauTraLoi() async
  {
    List<CauTraLoi> cauTraLois=[];
    return cauTraLois.where((x)=>x.idCauHoi==id).toList();
  }
}