import 'package:flutter/material.dart';

class Pavlova extends StatelessWidget {
  const Pavlova({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Murillo_Activity1'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/Pavlova.jpg',
              width: double.infinity,
              height: 300,
              fit: BoxFit.fill,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Pavlova',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  const SizedBox(height: 8.0),
                  const Text(
                    'A meringue-based dessert named after the Russian '
                    'ballerina Anna Pavlova. Crisp on the outside, soft and '
                    'marshmallow-like inside, topped with fresh fruit and '
                    'whipped cream.',
                    style: TextStyle(fontSize: 14.0, color: Colors.black54),
                  ),
                  const SizedBox(height: 16.0),
                  buildRatingRow(),
                  const SizedBox(height: 12.0),
                  buildRowTabs(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildRatingRow() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            5,
            (index) => Icon(
              index > 3 ? Icons.star_border : Icons.star,
              color: Colors.amber,
              size: 20.0,
            ),
          ),
        ),
        const SizedBox(width: 8.0),
        const Text(
          '170 Reviews',
          style: TextStyle(
            fontSize: 14.0,
            color: Colors.black54,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget buildIconTab(IconData icon, String label, String value) => Column(
    children: [
      Icon(icon, color: Colors.amber, size: 28),
      const SizedBox(height: 4),
      Text(
        label,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 12,
        ),
      ),
      const SizedBox(height: 4),
      Text(value, style: const TextStyle(fontSize: 12, color: Colors.black)),
    ],
  );

  Widget buildRowTabs() => Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      buildIconTab(Icons.timer_outlined, 'PREP', '25 min'),
      buildIconTab(Icons.restaurant, 'COOK', '45 min'),
      buildIconTab(Icons.people_alt_outlined, 'FEEDS', '6-8'),
    ],
  );
}
