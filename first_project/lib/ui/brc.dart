import 'package:flutter/material.dart';

// Minh Hoang
// Date:2020-05-02
//Assignment 01

class BRCPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Bun Rieu Cua'),
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
    AssetImage universe = AssetImage('images/bun_rieu_cua.jpg');
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
      Entry('16 oz (1 lb) dried rice stick (Rice vermicelli)'),
      Entry('For the Broth', <Entry>[
        Entry('4 to 5 lb pork riblets'),
        Entry('8 qt (32 cups) cold water'),
        Entry('1 cup dried shrimp'),
        Entry('2 tsp salt'),
        Entry('1 Tbsp rock sugar'),
        Entry('2 cubes Bun Rieu seasoning, optional'),
        Entry('3 to 4 Tbsp fish sauce'),
      ]),
      Entry('For the Crab Mixture', <Entry>[
        Entry(
            '16 oz (1lb) lump crab meat or 3 dungeness crabs, steamed then picked crab meat'),
        Entry('1/2 lb shrimp, chopped until pasty'),
        Entry('1/2 lb ground pork'),
        Entry(
            '2 of 7oz jared crab paste with soya bean oil, drain oil, set aside for later use'),
        Entry('2 tsp oil from the jared crab paste'),
        Entry('3 eggs'),
        Entry('1/2 tsp black pepper'),
      ]),
      Entry('For the Sautéed Tomatoes & Fried Tofu', <Entry>[
        Entry('3 Tbsp remaining oil from the crab paste'),
        Entry('6 to 7 garlic, chopped (approximately 2 Tbsp)'),
        Entry('1 shallot, chopped (approximately 2 Tbsp)'),
        Entry('6 large firm Rome tomatoes, cut each into 4 wedges'),
        Entry('1 tsp salt'),
        Entry('2 tsp sugar'),
        Entry('1/2 tsp black pepper'),
        Entry('8 oz fried tofu'),
      ]),
      Entry('For the Garnish & Sides', <Entry>[
        Entry('Beansprouts'),
        Entry('Cilantro, chopped'),
        Entry(
            'Banana blossom, thinly sliced and place into a lime juice water'),
        Entry('Water spinach'),
        Entry('Green lettuce, sliced'),
        Entry('Perilla leaves'),
        Entry(''),
        Entry('Lime wedges'),
        Entry('Fish sauce and Thai chili mixture, optional'),
        Entry('Shrimp paste, optional'),
      ]),
    ],
  ),
  Entry(
    'Intruction',
    <Entry>[
      Entry(
          'Cook the noodles in boiling water by following the directions of the package you are using. When done cooking, drain and rinse under running cold water to remove excess starch. Drain completely and set aside. Fluff up the noodles a few times until ready to serve.'),
      Entry(
          'Bring a large pot of water to boil, enough to cover pork riblets. Add pork riblets and par boil for 5 minutes then drain and wash under running cold water. This way we can remove all the residues and unwanted blood from the bones for a clean broth.'),
      Entry(
          'Add par boiled pork riblets and 8 qt cold water (32 cups) into a large pot along with 1 cup dried shrimp, 2 tsp salt and 1 Tbsp rock sugar. Bring it boil then reduce heat to medium and simmer for 40 to 50 minutes.'),
      Entry('Meanwhile, let’s make crab mixture and sautéed tomatoes. Combine all ingredients for crab mixtures in a large mixing bowl and set aside.' +
          'Heat a large skillet over medium high heat, add remaining oil from the crab paste and shallot. Sauté for 1 minute then add garlic. Sauté for 30 seconds to 45 seconds then add tomatoes, salt, sugar and black pepper. Sauté for 2 to 3 minutes, tomatoes should be still nice and firm. Set aside.'),
      Entry(
          'Back to the broth, let’s add Bun Rieu seasoning if you are using and fish sauce. Taste if the seasoning is right for you, if not add more fish sauce, 1 teaspoon at a time.'),
      Entry(
          'Now, increase heat to medium high and add crab mixture (1 large scoop at a time), sautéed tomatoes and fried tofu into the soup. Bring back to boil and keep cooking until the crab mixture is floats on the surface. Then continue to cook 2 to 3 more minutes. Remove from heat and it’s ready to serve!'),
      Entry(
          'Let’s assemble Bun Rieu! In a serving bowl, arrange cooked noodles then ladle over the soup with pork riblets, crab, tomatoes and tofu. Serve with all the garnishes together, so everyone can costumes their own bowl as they wish to have! Enjoy!'),
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
