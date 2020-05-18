import 'package:flutter/material.dart';

// Minh Hoang
// Date:2020-05-02
//Assignment 01

class CtPage extends StatelessWidget {
  final BuildContext context;

  CtPage(this.context);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Grilled Pork Rib with Rice'),
        backgroundColor: Colors.amber[600],
      ),
      body: Center(
        child: new Stack(
          children: <Widget>[
            MyCTImage(),
            Padding(
              child: ListView.builder(
                itemBuilder: (BuildContext context, int index) =>
                    EntryItem(data[index]),
                itemCount: data.length,
              ),
              padding: EdgeInsets.only(top: 250, bottom: 100),
            ),
            // ExpansionTileSample(),
            Container(
                // alignment: Alignment(0.7, 0.2),
                // child: Text(
                //   'Minh Hoang',
                //   style: TextStyle(
                //     color: Colors.white,
                //     fontWeight: FontWeight.bold,
                //     fontFamily: 'OleoScriptSwashCaps',
                //     fontSize: 30.0,
                //   ),
                // ),
                ),
            Container(
              padding: EdgeInsets.only(top: 250, bottom: 10.0),
              alignment: Alignment(-0.90, 1.0),
              // child: RaisedButton(
              child: FloatingActionButton(
                onPressed: () {
                  // Add your onPressed code here!
                  Navigator.pop(
                    context,
                  );
                },
                backgroundColor: Colors.amber,
                splashColor: Colors.blue[700],
                child: Tooltip(
                  message: 'Back to Home Page!',
                  child: Icon(
                    Icons.close,
                    size: 30,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyCTImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage universe = AssetImage('images/com_tam.jpg');
    Image image = Image(
      image: universe,
      fit: BoxFit.cover,
    );
    return Container(
      child: image,
      // constraints: BoxConstraints.expand(),
    );
  }
}

// class ExpansionTileSample extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('ExpansionTile'),
//         ),
//         body: ListView.builder(
//           itemBuilder: (BuildContext context, int index) =>
//               EntryItem(data[index]),
//           itemCount: data.length,
//         ),
//       ),
//     );
//   }
// }

// One entry in the multilevel list displayed by this app.
class Entry {
  Entry(this.title,[this.children = const <Entry>[]]);
  // final int id;
  final String title;
  final List<Entry> children;
}

// The entire multilevel list displayed by this app.
final List<Entry> data = <Entry>[
  Entry(
    'To Make Dipping Sauce',
    <Entry>[
      Entry(
        'Place all dipping sauce ingredients in a bowl and mix well until sugar is dissolved.',
      ),
      // Entry('Section A1'),
      // Entry('Section A2'),
    ],
  ),
  Entry(
    'To Cook the Pork Chops',
    <Entry>[
      Entry('Tenderize the pork chops until even thickness.'),
      Entry(
          'Mix the remaining ingredients until well-combined. Coat the pork chops with the sauce and marinade for at least 1 hr or overnight.'),
      Entry(
          'Heat a grill or frying pan with oil. Grill the meat until done, about 1-2 mins on each side. Remove and set aside.'),
    ],
  ),
  Entry(
    'To Make the Meatloaf',
    <Entry>[
      Entry('Set 2 egg yolks aside, add the remaining eggs into a bowl and beat well.'),
      Entry('Add the rest of the meatloaf ingredients and mix well.'),
      Entry('Grease a square or loaf tin and place the mixture into the tin. Spread evenly and steam covered for 30 mins.'),
      Entry('Spread reserved egg yolks on the top of the meatloaf and steam uncovered for 5 min. Remove and let cool before slicing.')
    ],
  ),
];

// Displays one Entry. If the entry has children then it's displayed
// with an ExpansionTile.
class EntryItem extends StatelessWidget {
  const EntryItem(this.entry);

  final Entry entry;

  // final EdgeInsetsGeometry contentPadding;
  Widget _buildTiles(Entry root) {
    if (root.children.isEmpty) return ListTile(title: Text(root.title));
    return ExpansionTile(
      key: PageStorageKey<Entry>(root),
      title: Text(root.title),
      children: root.children.map(_buildTiles).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(entry);
  }
}
