import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final double? height, width;

  const ProfilePage({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: width! * 0.04,
        vertical: height! * 0.02,
      ),
      child: const GridContainer(),
    );
  }
}

class GridContainer extends StatelessWidget {
  const GridContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
      ),
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: Center(
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Heading ${index + 1}",
                  ),
                  const Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus mollis, nunc at fermentum ultricies, enim urna gravida ex, eget aliquet elit massa ut lectus.",
                    textAlign: TextAlign.justify,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          "Demo",
                        ),
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        child: const Text(
                          "Continue",
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
