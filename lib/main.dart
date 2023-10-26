import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Container(
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (_, index) => GridTile(
              header: GridTileBar(
                backgroundColor: Colors.black45,
                leading: Icon(Icons.person),
                title: Text('Flutter App'),
                trailing: Icon(Icons.menu),
              ),
                footer:GridTileBar(
                  backgroundColor: Colors.black45,
                  leading: Icon(Icons.favorite),
                ),
                child: Image.network('https://tinyurl.com/yc4pctt5' , fit: BoxFit.cover,)),
          itemCount: 10,
        ),
      ),
    ));
  }
}

// GridView(
// gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
// children:[]
// )