import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class AppHelper 
{
  static Future<Database> initDB() async
  {
    String appPath=(await getApplicationDocumentsDirectory()).path;
    String dbPath='${appPath}/learning_english.db';

    return await openDatabase
    (
      dbPath,
      version: 1,
      onCreate: (db, _)
      {
        //Bảng roles
        db.execute('''
        CREATE TABLE Roles 
        (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          tenRole TEXT NOT NULL
        )''');

        //Bảng User
        db.execute('''
        CREATE TABLE User 
        (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          email TEXT NOT NULL,
          pass TEXT NOT NULL,
          userName TEXT NOT NULL,
          avatarURL TEXT DEFAULT " ",
          dateCreate TEXT NOT NULL,
          idRole INTEGER NOT NULL,
          FOREIGN KEY (idRole) REFERENCES Roles (id) ON DELETE CASCADE
        )''');

        //Bảng ActivityUser
        db.execute('''
        CREATE TABLE ActivityUser 
        (
          userId INTEGER PRIMARY KEY,
          streak INTEGER NOT NULL,
          xpPoint INTEGER NOT NULL,
          FOREIGN KEY (userId) REFERENCES User (id) ON DELETE CASCADE
        )''');

        //Bảng LoaiKhoaHoc
        db.execute('''
        CREATE TABLE LoaiKhoaHoc 
        (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          tenLoai TEXT NOT NULL
        )''');

        //Bảng KhoaHoc
        db.execute('''
        CREATE TABLE KhoaHoc 
        (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          tenKhoaHoc TEXT NOT NULL,
          anhDaiDien TEXT,
          moTa TEXT,
          maLoai INTEGER NOT NULL,
          FOREIGN KEY (maLoai) REFERENCES LoaiKhoaHoc (id) ON DELETE CASCADE
        )''');

        //Bảng BaiHoc
        db.execute('''
        CREATE TABLE BaiHoc 
        (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          idKH INTEGER NOT NULL,
          name TEXT NOT NULL,
          FOREIGN KEY (idKH) REFERENCES KhoaHoc (id) ON DELETE CASCADE
        )''');

        //Bảng NguPhap
        db.execute('''
        CREATE TABLE NguPhap 
        (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          tieuDe TEXT NOT NULL,
          noiDung TEXT NOT NULL,
          giaiThich TEXT NOT NULL,
          viDu TEXT NOT NULL,
          idBaiHoc INTEGER NOT NULL,
          FOREIGN KEY (idBaiHoc) REFERENCES BaiHoc (id) ON DELETE CASCADE
        )''');


        //Bảng TuVung
        db.execute('''
        CREATE TABLE TuVung 
        (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          tu TEXT NOT NULL,
          nghia TEXT NOT NULL,
          phienAm TEXT NOT NULL,
          viDu TEXT NOT NULL,
          audioURL TEXT NOT NULL,
          imageURL TEXT,
          loaiTu TEXT NOT NULL,
          idBaiHoc INTEGER NOT NULL,
          FOREIGN KEY (idBaiHoc) REFERENCES BaiHoc (id) ON DELETE CASCADE
        )''');

        //Bảng TienDo
        db.execute('''
        CREATE TABLE TienDo 
        (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          userId INTEGER NOT NULL,
          loaiTienDo TEXT NOT NULL,
          maEntity INTEGER NOT NULL,
          diem REAL NOT NULL,
          hoanThanh INTEGER NOT NULL DEFAULT 0,
          ngayHoanThanh TEXT,
          xpEarned INTEGER NOT NULL DEFAULT 0,
          FOREIGN KEY (userId) REFERENCES User (id) ON DELETE CASCADE
        )''');
            
      },
      onUpgrade: (db, oldVersion, newVersion) 
      {
        
      },
    );
  }
}