// import 'dart:io';

// import './models/employee.dart';

// import 'package:sqflite/sqflite.dart';
// import 'package:path/path.dart';
// import 'package:path_provider/path_provider.dart';


// class DataBaseHelper{
//   static final _databaseName = 'dbDemo.db';
//   static final _databaseVersion = 1;

//   static final table = 'emp_table';

//   static final colId = 'id';
//   static final colFname = 'fname';
//   static final colLname = 'lname';
//   static final colEmpNum = 'empNum';

//   // make this a singleton class
//   DataBaseHelper._privateConstructor();
//   static final DataBaseHelper instance = DataBaseHelper._privateConstructor();

//   //this opens the database (and creates it if it doesn't exist)
//   _initDatabase() async {
//     Directory documentsDirectory = await getApplicationDocumentsDirectory();
//     String path = join(documentsDirectory.path, _databaseName);
//     print(path);
//     return await openDatabase(path, version: _databaseVersion, onCreate: _onCreate);
//   }

//   // SQl code to create the database table
//   Future _onCreate(Database db, int version) async {
//     await db.execute('''
//       Create Table $table (
//         $colId INTEGER PRIMARY KEY,
//         $colFname TEXT NOT NULL,
//         $colLname TEXT NOT NULL,
//         $colEmpNum INTEGER NOT NULL
//       )
//     ''');
//   }

//   // only have a single app-wide reference to the database
//   static Database _database;
//   Future<Database> get database async {
//     if(_database != null )
//     return _database;
//     // lazily instantiate the db the first time it is accessed
//     _database = await _initDatabase();
//     return _database;
//   }

//   //Helper methods

//   //inserts a row in the database where each key in the Map is a column name
//   //and the value is the column value. The return value is the id of the 
//   // inserted row
//   Future<int> insert(Employee employee) async {
//     Database db = await instance.database;
//     return await db.insert(table,
//       {'fname': employee.fname, 'lname': employee.lname,'empNum': employee.empNum});
//   }

//   //All of the rows are returned as a list of maps, where each map is 
//   // a key-value list of columns
//   Future<List<Map<String, dynamic>>> queryAllRows() async{
//     Database db = await instance.database;
//     return await db.query(table);
//   }

// //Queries rows based on the arguement received
// Future<List<Map<String, dynamic>>> queryRows(name) async {
//   Database db = await instance.database;
//   return await db.query(table, where: "$colFname LIKE '%$name%'");
// }


// // We are assuming that id column in the map is set
// // The other column values will be used to update
// Future<int> update(Employee employee) async{
//   Database db = await instance.database;
//   int id = employee.toMap()['id'];
//   return await db
//   .update(table, employee.toMap(), where: '$colId = ?', whereArgs: [id]);
// }


// //Delete row based on id, returns the affected row id
// Future<int> delete(int id) async {
//   Database db = await instance.database;
//   return await db.delete(table, where: '$colId = ?', whereArgs: [id]);
// }


// }