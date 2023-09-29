import 'package:flutter/material.dart';
import 'package:meetup/movie_card.dart';

void main() {
  runApp(
      const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: MyHomePage()
      )
  );
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  static final List<Widget> _widgets = [
    MovieCard(imagePath: "assets/coco.jpg", title: "Coco", start: DateTime(2023, 09, 23, 18, 00), end: DateTime(2023, 09, 23, 20, 00), room: "Sala 1"),
    const SizedBox(
      height: 24,
    ),
    MovieCard(imagePath: "assets/dune.jpg", title: "Dune", start: DateTime(2023, 09, 23, 21, 00), end: DateTime(2023, 09, 23, 23, 30), room: "Sala 1"),
    const SizedBox(
      height: 24,
    ),
    MovieCard(imagePath: "assets/socialnetwork.jpg", title: "The social network", start: DateTime(2023, 09, 23, 21, 30), end: DateTime(2023, 09, 23, 23, 00), room: "Sala 3"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Programmazione odierna",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w400
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(206, 240, 238, 1),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: ListView.builder( // Lazy Loading
          itemCount: _widgets.length,
          itemBuilder: (context, index) {
            if(index < _widgets.length) {
              Widget currentWidget = _widgets[index];
              return currentWidget;
            } else {
              return Container();
            }
          },
        ),
      ),
    );
  }
}
