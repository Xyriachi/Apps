import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key, required this.onItemTapped});
  final Function(int) onItemTapped;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            flex: 5,
            child: Center(
                child: Text(
              'Quiz App', //TODO add background image or video
              style: Theme.of(context).textTheme.headlineLarge,
            ))),
        Expanded(
          flex: 5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: ElevatedButton(
                    onPressed: () {
                      onItemTapped(1);
                    },
                    child: const Text('1 pytanie')),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: ElevatedButton(
                    onPressed: () {
                      onItemTapped(2);
                    },
                    child: const Text('40 pytań')),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: ElevatedButton(
                    onPressed: () {
                      onItemTapped(3);
                    },
                    child: const Text('Wyniki')),
              ),
            ],
          ),
        )
      ],
    );
  }
}
