// // import './models/food.dart';
// import 'package:first_project/ui/gc.dart';
import 'package:flutter/material.dart';
import 'ui/gc.dart';
import 'ui/bmtn.dart';
import 'ui/brc.dart';
import 'ui/btn.dart';
import 'ui/bx.dart';
import 'ui/ct.dart';

// // import './models/employee.dart';
// // import 'package:first_project/databaseHelper.dart';

// ///add some library to pubspecs.yaml sqflite, path, path provider

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Project',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
//   // title: 'Healthy Recipe'
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
// List<Food> foodOverview =[
//   Food(id:1, foodName:'Grilled Pork Rib with Rice',  ingredient:'Rice\nPork Rib',imgDirectory: 'images/com_tam.jpg', detail:'Cook rice')
// ];
// List<Food> imgBrief = [
//   Food(imgDirectory: 'images/com_tam.jpg')
// ];
// @override
// void initState() {
//   fetchAlbums().then((value) {
//     setState(() {
//       _albums.addAll(value);
//     });
//   });
//   super.initState();
// }
// final Food food =
// Food food = new Food();
// var getFood = food.getDishes();
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // length: 5,
      // child: new Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text(
          'Healthy Recipe',
          style: TextStyle(
            fontSize: 25.0,
          ),
        ),
        centerTitle: false,
      ),
      body: new ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        // itemCount: 1,
        // itemBuilder: (context, index) {
        children: <Widget>[
          //#region Com_Tam
          new Card(
            child: Wrap(
              alignment: WrapAlignment.start,
              direction: Axis.vertical,
              spacing: 10.0,
              runSpacing: 20.0,
              children: <Widget>[
                // SingleChildScrollView(
                Padding(
                  padding: const EdgeInsets.only(
                      top: 10, left: 10, bottom: 10, right: 10),
                  child: InkWell(
                    // padding: const EdgeInsets.only(
                    //     top: 10, left: 10, bottom: 10, right: 10),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CtPage(context),
                        ),
                      );
                    },
                    splashColor: Colors.deepOrange,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      // mainAxisAlignment: MainAxisAlignment.center,

                      children: <Widget>[
                        ClipRect(
                          child: Ink.image(
                              image: AssetImage('images/com_tam.jpg'),
                              width: 150,
                              height: 150,
                              fit: BoxFit.fill),
                        ),
                        Row(
                          children: <Widget>[
                            // SizedBox(
                            //   width: 160.0,
                            //   child: Container(
                            //     padding: const EdgeInsets.only(
                            //         top: 0, left: 3, bottom: 0, right: 3),
                            //     child: Text(
                            //       'Food Name: Grilled Rib with Rice '
                            //               'Features: \trice,\tpork, \tspecial sausages\n' +
                            //           'Detail: rice, pork, special sausage,...',
                            //     ),
                            //   ),
                            // ),
                            Container(
                              // height: 150,
                              // padding: EdgeInsets.only(top: 120, right: 20.0),
                              // alignment: Alignment.bottomRight,
                              // // child: RaisedButton(
                              // child: RaisedButton(
                              //   onPressed: () {
                              //     // Add your onPressed code here!
                              //     Navigator.push(
                              //       context,
                              //       MaterialPageRoute(
                              //         builder: (context) => CtPage(context),
                              //       ),
                              //     );
                              //   },
                              //   shape: CircleBorder(
                              //     side: BorderSide(color: Colors.blue[900]),
                              //   ),
                              //   // backgroundColor: Colors.blue[400],
                              //   color: Colors.blue,
                              //   padding: EdgeInsets.only(left: 10, right: 10),
                              //   splashColor: Colors.orange[600],
                              //   child: Tooltip(
                              //     message: 'Get more details!',
                              //     child: Icon(
                              //       Icons.info_outline,
                              //       size: 25,
                              //       color: Colors.white,
                              //     ),
                              //   ),
                              // ),
                              width: 230,
                              padding: const EdgeInsets.only(
                                  top: 0, left: 3, bottom: 0, right: 3),
                              child: Text(
                                'Food Name: Grilled Rib with Rice '
                                        'Features: \trice,\tpork, \tspecial sausages\n' +
                                    'Detail: rice, pork, special sausage,...',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          //#endregion Com_Tam

          //#region BTN
          new Card(
            child: Wrap(
              alignment: WrapAlignment.start,
              direction: Axis.vertical,
              // spacing: 10.0,
              // runSpacing: 20.0,
              children: <Widget>[
                // SingleChildScrollView(
                Padding(
                  padding: const EdgeInsets.only(
                      top: 0, left: 3, bottom: 0, right: 3),
                  child: InkWell(
                    // padding: const EdgeInsets.only(
                    //     top: 10, left: 10, bottom: 10, right: 10),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BTNPage(),
                        ),
                      );
                    },
                    splashColor: Colors.deepOrange,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ClipRRect(
                          child: Ink.image(
                              image: AssetImage('images/bun_thit_nuong.jpg'),
                              width: 150,
                              height: 150,
                              fit: BoxFit.fill),
                        ),
                        Row(
                          children: <Widget>[
                            // SizedBox(
                            //   width: 160.0,
                            //   child: Container(
                            //     padding: const EdgeInsets.only(
                            //         top: 10, left: 10, bottom: 10, right: 0.25),
                            //     child: Text(
                            //       'Food Name: Grilled Pork Rib with Rice Noodles\n' +
                            //           'Features: \trice noodles,\tPork,\t\ spring rolls\n' +
                            //           'Detail: rice noodles, grilled pork ribs,...',
                            //     ),
                            //   ),
                            // ),
                            Container(
                              // height: 150,
                              // padding: EdgeInsets.only(top: 120, right: 30.0),
                              // alignment: Alignment.bottomRight,
                              // // child: RaisedButton(
                              // child: RaisedButton(
                              //   onPressed: () {
                              //     // Add your onPressed code here!
                              //     Navigator.push(
                              //       context,
                              //       MaterialPageRoute(
                              //         builder: (context) => BTNPage(),
                              //       ),
                              //     );
                              //   },
                              //   shape: CircleBorder(
                              //     side: BorderSide(color: Colors.blue[900]),
                              //   ),
                              //   // backgroundColor: Colors.blue[400],
                              //   color: Colors.blue,
                              //   padding: EdgeInsets.only(left: 10, right: 10),
                              //   splashColor: Colors.orange[600],
                              //   child: Tooltip(
                              //     message: 'Get more details!',
                              //     child: Icon(
                              //       Icons.info_outline,
                              //       size: 25,
                              //       color: Colors.white,
                              //     ),
                              //   ),
                              // ),
                              width: 230,
                              padding: const EdgeInsets.only(
                                  top: 10, left: 10, bottom: 10, right: 0.25),
                              child: Text(
                                'Food Name: Grilled Pork Rib with Rice Noodles\n' +
                                    'Features: \trice noodles,\tPork,\t\ spring rolls\n' +
                                    'Detail: rice noodles, grilled pork ribs,...',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          //#endregion BTN

          //#region BRC
          new Card(
            child: Wrap(
              alignment: WrapAlignment.start,
              direction: Axis.vertical,
              spacing: 10.0,
              runSpacing: 20.0,
              children: <Widget>[
                // SingleChildScrollView(
                Padding(
                  padding: const EdgeInsets.only(
                      top: 0, left: 3, bottom: 0, right: 3),
                  child: InkWell(
                    // padding: const EdgeInsets.only(
                    //     top: 10, left: 10, bottom: 10, right: 10),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BRCPage(),
                        ),
                      );
                    },
                    splashColor: Colors.deepOrange,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ClipRRect(
                          child: Ink.image(
                              image: AssetImage('images/bun_rieu_cua.jpg'),
                              width: 150,
                              height: 150,
                              fit: BoxFit.fill),
                        ),
                        Row(
                          children: <Widget>[
                            // SizedBox(
                            //   width: 160.0,
                            //   child: Container(
                            //     padding: const EdgeInsets.only(
                            //         top: 10, left: 10, bottom: 10, right: 0.25),
                            //     child: Text(
                            //       'Food Name: Bun Rieu Cua\n' +
                            //           'Features: \trice noodles,\tshrimp paste,\t crab\n' +
                            //           'Detail: rice noodles, tofu, vietnamese sausages,...',
                            //     ),
                            //   ),
                            // ),
                            Container(
                              // height: 150,
                              // padding: EdgeInsets.only(top: 120, right: 20.0),
                              // alignment: Alignment.bottomRight,
                              // // child: RaisedButton(
                              // child: RaisedButton(
                              //   onPressed: () {
                              //     // Add your onPressed code here!
                              //     Navigator.push(
                              //       context,
                              //       MaterialPageRoute(
                              //         builder: (context) => BRCPage(),
                              //       ),
                              //     );
                              //   },
                              //   shape: CircleBorder(
                              //     side: BorderSide(color: Colors.blue[900]),
                              //   ),
                              //   // backgroundColor: Colors.blue[400],
                              //   color: Colors.blue,
                              //   padding: EdgeInsets.only(left: 10, right: 10),
                              //   splashColor: Colors.orange[600],
                              //   child: Tooltip(
                              //     message: 'Get more details!',
                              //     child: Icon(
                              //       Icons.info_outline,
                              //       size: 25,
                              //       color: Colors.white,
                              //     ),
                              //   ),
                              // ),
                              width: 230,
                              padding: const EdgeInsets.only(
                                  top: 10, left: 10, bottom: 10, right: 0.25),
                              child: Text(
                                'Food Name: Bun Rieu Cua\n' +
                                    'Features: \trice noodles,\tshrimp paste,\t crab\n' +
                                    'Detail: rice noodles, tofu, vietnamese sausages,...',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          //#endregion BRC

          //#region BX
          new Card(
            child: Wrap(
              alignment: WrapAlignment.start,
              direction: Axis.vertical,
              spacing: 10.0,
              runSpacing: 20.0,
              children: <Widget>[
                // SingleChildScrollView(
                Padding(
                  padding: const EdgeInsets.only(
                      top: 0, left: 3, bottom: 0, right: 3),
                  child: InkWell(
                    // padding: const EdgeInsets.only(
                    //     top: 10, left: 10, bottom: 10, right: 10),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BXPage(),
                        ),
                      );
                    },
                    splashColor: Colors.deepOrange,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ClipRRect(
                          child: Ink.image(
                              image: AssetImage('images/banh_xeo.jpg'),
                              width: 150,
                              height: 150,
                              fit: BoxFit.fill),
                        ),
                        Row(
                          children: <Widget>[
                            // SizedBox(
                            //   width: 160.0,
                            //   child: Container(
                            //     padding: const EdgeInsets.only(
                            //         top: 10, left: 10, bottom: 10, right: 0.25),
                            //     child: Text(
                            //       'Food Name: Vietnamese pancake\n' +
                            //           'Features: \tcoconut milk,\tshrimp,\t beans\n' +
                            //           'Detail: bean sprouts, coconut milk,...',
                            //     ),
                            //   ),
                            // ),
                            Container(
                              // height: 150,
                              // padding: EdgeInsets.only(top: 120, right: 20.0),
                              // alignment: Alignment.bottomRight,
                              // // child: RaisedButton(
                              // child: RaisedButton(
                              //   onPressed: () {
                              //     // Add your onPressed code here!
                              //     Navigator.push(
                              //       context,
                              //       MaterialPageRoute(
                              //         builder: (context) => BXPage(),
                              //       ),
                              //     );
                              //   },
                              //   shape: CircleBorder(
                              //     side: BorderSide(color: Colors.blue[900]),
                              //   ),
                              //   // backgroundColor: Colors.blue[400],
                              //   color: Colors.blue,
                              //   padding: EdgeInsets.only(left: 10, right: 10),
                              //   splashColor: Colors.orange[600],
                              //   child: Tooltip(
                              //     message: 'Get more details!',
                              //     child: Icon(
                              //       Icons.info_outline,
                              //       size: 25,
                              //       color: Colors.white,
                              //     ),
                              //   ),
                              // ),
                              width: 230,
                              padding: const EdgeInsets.only(
                                  top: 10, left: 10, bottom: 10, right: 0.25),
                              child: Text(
                                'Food Name: Vietnamese pancake\n' +
                                    'Features: \tcoconut milk,\tshrimp,\t beans\n' +
                                    'Detail: bean sprouts, coconut milk,...',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          //#endregion BX

          //#region BMTN
          new Card(
            child: Wrap(
              alignment: WrapAlignment.start,
              direction: Axis.vertical,
              spacing: 10.0,
              runSpacing: 20.0,
              children: <Widget>[
                // SingleChildScrollView(
                Padding(
                  padding: const EdgeInsets.only(
                      top: 0, left: 3, bottom: 0, right: 3),
                  child: InkWell(
                    // padding: const EdgeInsets.only(
                    //     top: 10, left: 10, bottom: 10, right: 10),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BMTNPage(),
                        ),
                      );
                    },
                    splashColor: Colors.deepOrange,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ClipRRect(
                          child: Ink.image(
                              image:
                                  AssetImage('images/banh_mi_thit_nuong.jpg'),
                              width: 150,
                              height: 150,
                              fit: BoxFit.fill),
                        ),
                        Row(
                          children: <Widget>[
                            // SizedBox(
                            //   width: 160.0,
                            //   child: Container(
                            //     padding: const EdgeInsets.only(
                            //         top: 10, left: 10, bottom: 10, right: 0.25),
                            //     child: Text(
                            //       'Food Name: Grilled Pork with Bread\n' +
                            //           'Features: \tbread,\tpork,\t\ pickle\n' +
                            //           'Detail: loads of bread, vegetables,...',
                            //     ),
                            //   ),
                            // ),
                            Container(
                              // height: 150,
                              // padding: EdgeInsets.only(top: 120, right: 20.0),
                              // alignment: Alignment.bottomRight,
                              // // child: RaisedButton(
                              // child: RaisedButton(
                              //   onPressed: () {
                              //     // Add your onPressed code here!
                              //     Navigator.push(
                              //       context,
                              //       MaterialPageRoute(
                              //         builder: (context) => BMTNPage(),
                              //       ),
                              //     );
                              //   },
                              //   shape: CircleBorder(
                              //     side: BorderSide(color: Colors.blue[900]),
                              //   ),
                              //   // backgroundColor: Colors.blue[400],
                              //   color: Colors.blue,
                              //   padding: EdgeInsets.only(left: 10, right: 10),
                              //   splashColor: Colors.orange[600],
                              //   child: Tooltip(
                              //     message: 'Get more details!',
                              //     child: Icon(
                              //       Icons.info_outline,
                              //       size: 25,
                              //       color: Colors.white,
                              //     ),
                              //   ),
                              // ),
                              width: 230,
                              padding: const EdgeInsets.only(
                                  top: 10, left: 10, bottom: 10, right: 0.25),
                              child: Text(
                                'Food Name: Grilled Pork with Bread\n' +
                                    'Features: \tbread,\tpork,\t\ pickle\n' +
                                    'Detail: loads of bread, vegetables,...',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          //#endregion BMTN

          //#region GC
          new Card(
            child: Wrap(
              alignment: WrapAlignment.start,
              direction: Axis.vertical,
              spacing: 10.0,
              runSpacing: 20.0,
              children: <Widget>[
                // SingleChildScrollView(
                Padding(
                  padding: const EdgeInsets.only(
                      top: 0, left: 3, bottom: 0, right: 3),
                  child: InkWell(
                    // padding: const EdgeInsets.only(
                    //     top: 10, left: 10, bottom: 10, right: 10),
                    onTap: () async {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => GCPage(),
                        ),
                      );
                    },
                    splashColor: Colors.deepOrange,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ClipRRect(
                          child: Ink.image(
                              image: AssetImage('images/goi_cuon.jpg'),
                              width: 150,
                              height: 150,
                              fit: BoxFit.fill),
                        ),
                        Row(
                          children: <Widget>[
                            // SizedBox(
                            //   width: 160.0,
                            //   child: Container(
                            //     padding: const EdgeInsets.only(
                            //         top: 10, left: 10, bottom: 10, right: 0.25),
                            //     child: Text(
                            //       'Food Name: Rice Spring Rolls\n' +
                            //           'Features: \trice paper,\tsteamed shrimp, \tvegetables\n' +
                            //           'Detail: Rice paper, shrimp,...',
                            //     ),
                            //   ),
                            // ),
                            Container(
                              // height: 150,
                              // padding: EdgeInsets.only(top: 120, right: 20.0),
                              // alignment: Alignment.bottomRight,
                              // // child: RaisedButton(
                              // child: RaisedButton(
                              //   onPressed: () {
                              //     // Add your onPressed code here!
                              //     Navigator.push(
                              //       context,
                              //       MaterialPageRoute(
                              //         builder: (context) => GCPage(),
                              //       ),
                              //     );
                              //   },
                              //   shape: CircleBorder(
                              //     side: BorderSide(color: Colors.blue[900]),
                              //   ),
                              //   // backgroundColor: Colors.blue[400],
                              //   color: Colors.blue,
                              //   padding: EdgeInsets.only(left: 10, right: 10),
                              //   splashColor: Colors.orange[600],
                              //   child: Tooltip(
                              //     message: 'Get more details!',
                              //     child: Icon(
                              //       Icons.info_outline,
                              //       size: 25,
                              //       color: Colors.white,
                              //     ),
                              //   ),
                              // ),
                              width: 230,
                              padding: const EdgeInsets.only(
                                  top: 10, left: 10, bottom: 10, right: 10),
                              child: Text(
                                'Food Name: Rice Spring Rolls\n' +
                                    'Features: \trice paper,\tsteamed shrimp, \tvegetables\n' +
                                    'Detail: Rice paper, shrimp,...',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          //#endregion GC
          //#endregion GC
        ],
      ),
      // ),
    );
  }
}
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';

// class Food {
//   final String title;
//   final String description;

//   Food(this.title, this.description);
// }

// void main() {
//   runApp(MaterialApp(
//     title: 'Passing Data',
//     home: FoodScreen(
//       foods: List.generate(
//         10,
//         (i) => Food(
//           'Todo $i',
//           'A description of what needs to be done for Todo $i',
//         ),
//       ),
//     ),
//   ));
// }

// class FoodScreen extends StatelessWidget {
//   final List<Food> foods;

//   FoodScreen({Key key, @required this.foods}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Todos'),
//       ),
//       body: ListView.builder(
//         itemCount: foods.length,
//         itemBuilder: (context, index) {
//           return Card(
//             child: Wrap(
//               children: <Widget>[
//                 ListTile(
//                     title: Text(foods[index].title),
//                     // When a user taps the ListTile, navigate to the DetailScreen.
//                     // Notice that you're not only creating a DetailScreen, you're
//                     // also passing the current todo through to it.
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) =>
//                               DetailScreen(food: foods[index]),
//                         ),
//                       );
//                     },
//                     trailing: Icon(Icons.info_outline)),
//                     ClipRRect(
//                         child: Image.asset('images/goi_cuon.jpg',
//                             width: 150, height: 150, fit: BoxFit.fill),
//                       ),
//                     Row(
//                         children: <Widget>[
//                           SizedBox(
//                              width: 170.0,
//                             child: Container(
//                               padding: const EdgeInsets.only(
//                                   top: 10, left: 10, bottom: 10, right: 0.25),
//                                   child: Text(
//                                 'FoodName: Grilled Pork Rib with Rice Noodles\n' +
//                                     'Features: \n\t\tRice\n\t\tPork\n\t\t\ Ri\n' +
//                                     'Detail: Cook rice',
//                                   ),
//                               ),
//                           ),
//                           Container(
//                             height: 150,
//                             padding: EdgeInsets.only(top: 120, right: 20.0),
//                             alignment: Alignment.bottomRight,
//                             // child: RaisedButton(
//                             child: FloatingActionButton(
//                               onPressed: () {
//                                 // Add your onPressed code here!
//                                 Navigator.push(
//                                   context,
//                                   new MaterialPageRoute(
//                                       builder: (context) => GCPage()),
//                                 );
//                               },
//                               backgroundColor: Colors.blue[400],
//                               splashColor: Colors.orange[600],
//                               child: Tooltip(
//                                 message: 'Get more details!',
//                                 child: Icon(
//                                   Icons.info_outline,
//                                   size: 30,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ],
//                     ),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

// class DetailScreen extends StatelessWidget {
//   // Declare a field that holds the Todo.
//   final Food food;

//   // In the constructor, require a Todo.
//   DetailScreen({Key key, @required this.food}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     // Use the Todo to create the UI.
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(food.title),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Text(food.description),
//       ),
//     );
//   }
// }
// Image.asset('images/bun_thit_nuong.jpg',
//                                 width: 150, height: 150, fit: BoxFit.fill),

//   body: new Center(
//   child: new ListView(
//     children: [
//       Image.asset('images/com_tam.jpg',
//         width: 600.0,
//         height: 240.0,
//         fit: BoxFit.cover,),
//       Image.asset('images/bun_thit_nuong.jpeg',
//         width: 600.0,
//         height: 240.0,
//         fit: BoxFit.cover,),
//       Image.asset('images/carimg.jpeg',
//         width: 600.0,
//         height: 240.0,
//         fit: BoxFit.cover,),
//       Image.asset('images/carimg.jpeg',
//         width: 600.0,
//         height: 240.0,
//         fit: BoxFit.cover,)
//     ],

//   ),
// ),
