import 'package:flutter/material.dart';

// Minh Hoang
// Date:2020-05-02
//Assignment 01

class BMTNPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Grilled Pork With Bread'),
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
              padding: EdgeInsets.only(top: 250, bottom: 100),
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
                splashColor: Colors.blue[700],
                child: Tooltip(
                  message: 'Back to Home Page!',
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
    AssetImage universe = AssetImage('images/banh_mi_thit_nuong.jpg');
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

class Entry {
  Entry(this.title, [this.children = const <Entry>[]]);
  // final int id;
  final String title;
  final List<Entry> children;
}

// The entire multilevel list displayed by this app.
final List<Entry> data = <Entry>[
  Entry(
    'Ingredients',
    <Entry>[
      Entry(
          '2 lbs boneless pork butt, cut into 1/4-inch thick slices, 8-inch length by 2 1/2-inch width'),
      Entry('4 8-inch French baguette, sliced lengthwise'),
      Entry('3 tablespoons mayonnaise'),
      Entry('pickled carrots and daikon, store-bought'),
      Entry('1 bunch cilantro leaves'),
      Entry('Lemongrass Pork Marinade', <Entry>[
        Entry('1/2 cup minced lemongrass'),
        Entry('1/2 cup sugar'),
        Entry('3 tablespoons fish sauce'),
        Entry('1 1/2 tablespoons ground black pepper'),
        Entry('5 shallots, peeled and minced'),
        Entry('3 cloves garlic, peeled and minced'),
        Entry('2 tablespoons sesame oil'),
        Entry('2 tablespoons cooking oil'),
        Entry('2 tablespoons sweet soy sauce'),
        Entry(''),
      ]),
    ],
  ),
  Entry(
    'Instructions',
    <Entry>[
      Entry(
          'Lightly pound the pork slices with a mallet or the back of the kitchen knife. In a bowl, mix all the Marinade ingredients together. Marinate the pork with the Marinade, for 2 hours or best overnight. Discard excess marinade before grilling.'),
      Entry(
          'Fire up the grill. Arrange the marinated pork onto the grill. Grill until the pork is nicely charred on both sides or until the pork is cooked through. If you are using a broiler oven, broil for 5-7 minutes on each side or until the pork is completely cooked and nicely charred.'),
      Entry(
          'Remove the pork from the grill. Spread the the mayonnaise on the baguette and add a few grilled pork slices. Top the pork with pickled carrots and daikon and cilantro leaves. Cut the baguette into halves and serve immediately.'),
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
