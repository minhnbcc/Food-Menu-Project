import 'package:flutter/material.dart';

// Minh Hoang
// Date:2020-05-02
//Assignment 01

class BXPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Vietnamese Pancake'),
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
    AssetImage universe = AssetImage('images/banh_xeo.jpg');
    Image image = Image(
      image: universe,
      fit: BoxFit.fitWidth,
      width: 400,
      height: 250,
    );
    return Container(
      child: image,
      padding: EdgeInsets.only(bottom: 100),
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
      Entry('Batter', <Entry>[
        Entry('9 oz rice flour'),
        Entry('3 oz all-purpose wheat flour'),
        Entry('2-3 tsp turmeric'),
        Entry('3.5 c water'),
        Entry(
            '1 can coconut cream (14 oz / 400 ml) if unavailable, use coconut milk'),
        Entry('1 tsp salt'),
        Entry('1 sprig green onion ~6-7 leaves, chopped about 1-2 cm long'),
      ]),
      Entry('Filling', <Entry>[
        Entry('1 lb shrimp without heads sized 45/50 or 60/70'),
        Entry('1.5 lb pork belly'),
        Entry('1 medium onion thinly sliced'),
        Entry('1-1.5 lb bean sprouts'),
        Entry('1/2 c dry mung beans (optional)'),
      ]),
      Entry('Vegetables', <Entry>[
        Entry('1 head mustard greens'),
        Entry('1 bunch mint'),
        Entry('1 bunch cilantro (optional)'),
        Entry('1 bunch Vietnamese perilla (optional)'),
      ]),
      Entry('Dipping sauce', <Entry>[
        Entry('Vietnamese fish sauce', <Entry>[
          Entry('6 tbsp. water'),
          Entry('2 tbsp. sugar'),
          Entry('1.5 to 2 tbsp. fresh lime or lemon juice'),
          Entry('2 tbsp'),
          Entry('Finely chopped garlic (optional)'),
          Entry('Bird' 's eye / Thai chiles (optional)'),
        ]),
      ]),
    ],
  ),
  Entry(
    'Instructions',
    <Entry>[
      Entry(
          'Combine all batter ingredients except scallions in a large bowl for at least 3 hours, or overnight. Add scallions only right before making the crêpes.'),
      Entry('Steam or soak mung beans in water until soft'),
      Entry('Boil pork until cooked through. Slice thinly.'),
      Entry('Wash bean sprouts and veggies'),
      Entry('On medium-high heat add 1-2 teaspoons of oil and some onions'),
      Entry(
          'Immediately add a few pieces of pork and shrimp. Sauté, lightly mixing until very lightly browned.'),
      Entry(
          'Pour in some batter and quickly tilt & rotate the pan so the batter is evenly spread. Add more batter if it wasn'
          't enough to cover the pan.'),
      Entry(
          'Add some mung beans, bean sprouts, and cover with a lid for 2-3 minutes, or until bean sprouts are slightly cooked. The batter should also be slightly cooked and transparent around the edges.'),
      Entry(
          'Remove the lid, lower heat to medium and wait for the crêpe to become crisp. Fold in half, transfer to a plate and serve immediately.'),
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
