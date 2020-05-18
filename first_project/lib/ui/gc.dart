import 'package:flutter/material.dart';

// Minh Hoang
// Date:2020-05-02
//Assignment 01

class GCPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Rice Spring Rolls'),
        backgroundColor: Colors.amber[600],
      ),
      body: Center(
        child: Stack(
          children: <Widget>[
            MyGCImage(),
            Padding(
              child: ListView.builder(
                itemBuilder: (BuildContext context, int index) =>
                    EntryItem(data[index]),
                itemCount: data.length,
              ),
              padding: EdgeInsets.only(top: 250, bottom: 100),
            ),
            // Container(
            //   alignment: Alignment(0.7, 0.2),
            //   // child: Text(
            //   //   'Minh Hoang',
            //   //   style: TextStyle(
            //   //     color: Colors.white,
            //   //     fontWeight: FontWeight.bold,
            //   //     fontFamily: 'OleoScriptSwashCaps',
            //   //     fontSize: 30.0,
            //   //   ),
            //   // ),
            // ),
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

class MyGCImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage universe = AssetImage('images/goi_cuon.jpg');
    Image image = Image(
      image: universe,
      fit: BoxFit.fitWidth,
      width: 400,
      height: 250,
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
      Entry('1/2 lb shrimp 36/40 size (453g)'),
      Entry('1/2 lb pork leg 453g'),
      Entry('1 head red or green leaf lettuce'),
      Entry('a few sprigs of mint'),
      Entry('chives'),
      Entry('1 pack rice paper'),
      Entry('1 pack rice vermicelli'),
      Entry('1 1/2 tsp salt'),
      Entry('1 tsp sugar'),
      Entry('Peanut Dipping sauce', <Entry>[
        Entry('2 tbsp oil'),
        Entry('2 tbsp minced garlic'),
        Entry('8 tbsp hoisin sauce'),
        Entry('2-3 tbsp peanut butter'),
        Entry('1 c water'),
        Entry('Sambal chile paste'),
      ]),
    ],
  ),
  Entry(
    'Instructions',
    <Entry>[
      Entry('Preparing Ingredients', <Entry>[
        Entry(
            'Defrost shrimp in water bowl. Once defrosted, split and de-vein the shrimp.'),
        Entry(
            'Cooking pork: add pork to a small pot and add enough water to cover about 1 ½ inches above the pork. Add 1 tsp of salt and 1 tsp of sugar. Bring to a boil on high heat and then lower to medium for 30 minutes. Remove the pork when it turns light brown and floats to the top.'),
        Entry(
            'Cooking shrimp: add 2 inches of water (enough to cover the shrimp). Add ½ tsp of salt and bring to a boil. Add the shrimp and boil for 1 ½-2 ½ minutes on medium-high heat until the shrimp is no longer translucent.'),
        Entry(
            'Remove the shells and tails from shrimp, and cut the shrimp in half along the body.'),
        Entry(
            'Slice the pork as thinly as possible so that it will be easier to roll.'),
        Entry(
            'In another pot, boil 1/2 gallon of water and add ⅓ of the rice vermicelli package. Boil for 8 minutes (following the instructions on the packet). Drain and cool the noodles under cold, running water to stop the cooking.'),
        Entry('Prepare your vegetables by rinsing and drying them.'),
        Entry(''),
      ]),
      Entry('Spring Roll Instructions', <Entry>[
        Entry(
            'Add warm water to a plate and soak the rice paper sheet for about 5-10 seconds. Soak the rice paper just enough so that it is pliable and easy to handle, but remove the sheet before it gets too soft and sticky. Lay rice paper on a plate and begin to assemble your roll.'),
        Entry(
            'Add lettuce towards the bottom of the rice paper. Leave 1 to 1½ inches of space on either side of the rice paper. Layer with mint and chives. Try to not add too many items because it will be harder to roll and might tear your rice paper.'),
        Entry(
            'Add shrimp in the middle of the rice paper with the orange skin facing down.'),
        Entry('Layer the sliced pork on top of the shrimp.'),
        Entry('Add the noodles across the vegetables, spread evenly across.'),
        Entry('Fold the left and right sides towards the middle so that it'
            's snug. Lay some chives lengthwise with one end poking out. Then fold the bottom up to cover the noodles. You want to keep the roll tight, so lightly squeeze it together as you roll. Continue to roll upwards to complete the spring roll.'),
      ]),
      Entry('Peanut Dipping Sauce', <Entry>[
        Entry('In a pan over medium heat, saute garlic in oil until fragrant.'),
        Entry(
            'Add in hoisin sauce, peanut butter, and water and stir thoroughly.'),
        Entry(
            'Bring to boil, and then immediately turn off the heat and place into a heat safe dipping bowl.'),
        Entry(
            'Leave the Sambal chile paste on the side so others can add to their own dipping bowl as needed.'),
      ]),
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
