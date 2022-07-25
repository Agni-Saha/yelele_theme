import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final double? height, width;

  const HomePage({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: height! * 0.02,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Center(
            child: Text(
              "Home Page",
            ),
          ),
          const Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus mollis, nunc at fermentum ultricies, enim urna gravida ex, eget aliquet elit massa ut lectus. Morbi in quam nec libero commodo porta et vitae sapien. Vestibulum porta metus ac odio consectetur, id laoreet justo egestas. Sed in ornare ex. Integer tristique ipsum eu tristique placerat. Aliquam ex urna, vestibulum laoreet est sed, sollicitudin ullamcorper nisl. Ut posuere tristique pulvinar. Curabitur tempus tortor ante, id condimentum dui ornare sagittis. Phasellus vitae purus eget mi congue tempor. Mauris eget fringilla justo. Etiam imperdiet aliquet ex, a tempor turpis scelerisque id",
            textAlign: TextAlign.center,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text("Sample Button 1"),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Demo"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
