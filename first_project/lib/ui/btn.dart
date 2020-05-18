import 'package:flutter/material.dart';

// Minh Hoang
// Date:2020-05-02
//Assignment 01

class BTNPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Grilled Rib with Rice Noodles'),
        backgroundColor: Colors.amber[600],
      ),
      body: Center(
        child: Stack(
          children: <Widget>[
            MyImage(),
            Padding(
              child: ListView.builder(
                itemBuilder: (BuildContext context, int index) =>
                    EntryItem(data[index]),
                itemCount: data.length,
              ),
              padding: EdgeInsets.only(top: 300, bottom: 100),
            ),
            Container(
              alignment: Alignment(0.7, 0.2),
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
                splashColor: Colors.blue[200],
                child: Tooltip(
                  message: 'Go Back!',
                  child: Icon(
                    Icons.close,
                    size: 35,
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

class MyImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage btn = AssetImage('images/bun_thit_nuong.jpg');
    Image image = Image(
      image: btn,
      fit: BoxFit.cover,
    );
    return Container(
      child: image,
      // constraints: BoxConstraints.expand(),
    );
  }
}

class Entry {
  Entry(this.title, [this.children = const <Entry>[]]);
  // final int id;
  final String title;
  final List<Entry> children;
}

// The entire multilevel list displayed by this app.
final List<Entry> data = <Entry>[
  Entry(
    'Ingredient',
    <Entry>[
      Entry(
        '1-2 lbs of pork shoulder.',
      ),
      Entry('2 package of rice vermicelli.'),
      // Entry('Section A2'),
    ],
  ),
  Entry(
    'Pork marinade',
    <Entry>[
      Entry('3 Shallots, minced'),
      Entry('3 Cloves garlic, minced'),
      Entry('1/4 cup sugar'),
      Entry('1 Tablespoon honey'),
      Entry('2 Tablespoon fish sauce'),
      Entry('3 Tablespoons sesame oil'),
      Entry('1 Tablespoon of ground pepper'),
      Entry('3 Tablespoon sesame seeds'),
      Entry(
          '1 Tablespoon of thick soy sauce (has molasses-like texture and thicker)'),
    ],
  ),
  Entry(
    'Scallion Oil Garnish',
    <Entry>[
      Entry('4 Stalks onion'),
      Entry('1/4 Cup oil'),
    ],
  ),
  Entry(
    'Nuoc mam (Vietnamese Fish Sauce)',
    <Entry>[
      Entry('1.5 Cups water'),
      Entry('3/4 Cup fish sauce'),
      Entry('1/3 Cup white vinegar'),
      Entry('1/2 Cup sugar, or as preferred'),
      Entry('1 Lime'),
      Entry('2 Cloves garlic'),
      Entry('1-2 Spoons of ground fresh chili paste (optional)'),
    ],
  ),
  Entry(
    'Garnish',
    <Entry>[
      Entry('Slice cucumbers'),
      Entry('Chopped green leaf lettuce'),
      Entry('Balm (kinh gioi)'),
      Entry('Mint'),
      Entry('Thai basil'),
      Entry('Perilla leaves (tia to)'),
      Entry('Lightly salted peanuts, crushed'),
      Entry('Pickled carrots'),
      Entry('Daikon radish'),
      Entry('Egg rolls'),
    ],
  ),
  Entry(
    'Instructions',
    <Entry>[
      Entry(
          'Marinate the pork - Chop, prepare and mix all marinade ingredients. Slice raw pork into thin slices (avoid lean meat because it will dry out) and submerge in the marinade. Place in the fridge for at least one hour.'),
      Entry(
          'Prepare rice noodles - Add dry noodles to boiling water. Follow the package instructions, then strain to cool. '),
      Entry(
          'Prepare the scallion oil garnish - Heat up scallions in a pan with oil until softened, no more than 1 minute. Set aside. ⁠'),
      Entry('Prepare the fish sauce by combining all ingredients.'),
      Entry(
          'Skewer the pork and grill until it has a nice brown color to it on both sides.⁠'),
      Entry(
          'Assemble the bowl - Fill the bottom of the bowl with a bed of lettuce, then add the cold rice noodles. Top with grilled pork and garnishes. When ready to serve, add 1 to 2 spoonfuls of special Vietnamese fish sauce. Serve with egg rolls, if desired, and enjoy!⁠'),
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
