import 'dart:convert';
import 'dart:ffi';

import 'package:app_tieng_anh/models/nghe.dart';
import 'package:app_tieng_anh/models/noi.dart';
import 'package:app_tieng_anh/models/tu_vung.dart';
import 'package:http/http.dart' as http;

class ApiServices 
{
  //Lấy api cho từ vựng 
  static Future<List<TuVung>> LayAPITuVung() async
  {
    var futureResponse=http.get
    (
      Uri.parse(""),
      headers: 
      {
        'Accept':'application/json'
      }
    );

    var response=await futureResponse;
    List<dynamic> jsonVocab=jsonDecode(response.body);
    List<TuVung> listTuVung=jsonVocab.map
    (
      (x)=> TuVung.fromJson(x)
    ).toList();

    return listTuVung;
  }

  //Lấy api cho phần nghe
  static Future<List<Nghe>> LayAPIBaiNoi() async
  {
    var futureRespose=http.get
    (
      Uri.parse(""),
      headers: 
      {
        'Accept':'application/json'
      }
    );

    var response=await futureRespose;
    List<dynamic> jsonBaiNghe=jsonDecode(response.body);
    List<Nghe> baiNghes=jsonBaiNghe.map
    (
      (x)=>Nghe.fromJson(x)
    ).toList();

    return baiNghes;
  } 

  static Future<List<Noi>> layAPIBaiNoi() async
  {
    var futureResponse = http.get
    (
      Uri.parse(""),
      headers: 
      {
        'Accept': 'application/json'
      }
    );

    var response= await futureResponse;
    List<dynamic> jsonBaiNoi=jsonDecode(response.body);
    List<Noi> BaiNois= jsonBaiNoi.map
    (
      (x)=>Noi.fromJson(x)
    ).toList();

    return BaiNois;

  }
}