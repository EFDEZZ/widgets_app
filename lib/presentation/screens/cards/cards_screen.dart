import 'package:flutter/material.dart';

  const List<Map<String, dynamic>> cards = [
    {'elevation': 0.0, 'label': 'Elevation 0'}, 
    {'elevation': 1.0, 'label': 'Elevation 1'}, 
    {'elevation': 2.0, 'label': 'Elevation 2'}, 
    {'elevation': 3.0, 'label': 'Elevation 3'}, 
    {'elevation': 4.0, 'label': 'Elevation 4'}, 
    {'elevation': 5.0, 'label': 'Elevation 5'}, 
];

class CardsScreen extends StatelessWidget {
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cards Screen"),
      ),
      body: const _CardsView(),
    );
  }
}

class _CardsView extends StatelessWidget {
  const _CardsView();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ...cards.map(( cards ) => _CardType1(elevation: cards['elevation'], label: cards['label'])),
          ...cards.map(( cards ) => _CardType2(elevation: cards['elevation'], label: cards['label'])),
          ...cards.map(( cards ) => _CardType3(elevation: cards['elevation'], label: cards['label'])),
          ...cards.map(( cards ) => _CardType4(elevation: cards['elevation'], label: cards['label'])),
          const SizedBox(height: 40,),
          ], 
      ),
    );
  }
}

class _CardType1 extends StatelessWidget {
    final double elevation;
    final String label;

  const _CardType1({
    required this.elevation, 
    required this.label
    });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(label),
              ),
            Align(
              alignment: Alignment.topRight,
              child: IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert_outlined)),
              ),
            
          ],
        ),
      ),
    );
  }
}

class _CardType2 extends StatelessWidget {
    final double elevation;
    final String label;

  const _CardType2({
    required this.elevation, 
    required this.label
    });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        side: const BorderSide(),
        borderRadius: BorderRadius.circular(10)
      ),
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
              alignment: Alignment.bottomLeft,
              child: Text('$label - outlined'),
              ),
            Align(
              alignment: Alignment.topRight,
              child: IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert_outlined)),
              ),
            
          ],
        ),
      ),
    );
  }
}

class _CardType3 extends StatelessWidget {
    final double elevation;
    final String label;

  const _CardType3({
    required this.elevation, 
    required this.label
    });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Card(
      color: colors.inversePrimary,
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
              alignment: Alignment.bottomLeft,
              child: Text('$label - filled'),
              ),
            Align(
              alignment: Alignment.topRight,
              child: IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert_outlined)),
              ),
            
          ],
        ),
      ),
    );
  }
}

class _CardType4 extends StatelessWidget {
    final double elevation;
    final String label;

  const _CardType4({
    required this.elevation, 
    required this.label
    });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      elevation: elevation,
      child: Stack(
        children: [
          Image.network(
            'https://picsum.photos/id/${elevation.toInt()}/600/250',
            height: 250,
            fit: BoxFit.cover,
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20))
              ),
              child: IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert_outlined))),
            ),
          
        ],
      ),
    );
  }
}