import 'package:accordion_button/widgets/components/accordion_button.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          iconTheme: IconThemeData(color: Colors.blue[300])),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AccordionButton"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AccordionIconButton(
              iconData: Icons.home,
              iconSize: 30,
              maxWidth: 100,
              label: "Home",
            ),
            SizedBox(height: 20),
            AccordionIconButton(
              iconData: Icons.search,
              iconSize: 30,
              maxWidth: 100,
              label: "Search",
            ),
            SizedBox(height: 20),
            AccordionIconButton(
              iconData: Icons.info,
              iconSize: 30,
              maxWidth: 100,
              label: "Info",
            ),
          ],
        ),
      ),
    );
  }
}
