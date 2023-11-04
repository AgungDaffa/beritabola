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
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 118, 106, 103)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'HOME'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('My App'),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(20),
                child: Flex(
                  direction: Axis.horizontal,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text(
                      'BERITA TERBARU',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      'PERTANDINGAN HARI INI',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              Flex(
                direction: Axis.horizontal,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/mbappe.jpg'),
                            fit: BoxFit.cover,
                            alignment: Alignment.bottomCenter),
                      ),
                      height: 300,
                      child: null,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/messi.jpg'),
                            fit: BoxFit.cover,
                            alignment: Alignment.bottomCenter),
                      ),
                      height: 300,
                      child: null,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/ozil.jpg'),
                            fit: BoxFit.cover,
                            alignment: Alignment.bottomCenter),
                      ),
                      height: 300,
                      child: null,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/ronaldo.jpeg'),
                            fit: BoxFit.cover,
                            alignment: Alignment.bottomCenter),
                      ),
                      height: 300,
                      child: null,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/salah.jpg'),
                            fit: BoxFit.cover,
                            alignment: Alignment.bottomCenter),
                      ),
                      height: 300,
                      child: null,
                    ),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(18),
                child: const Text(
                  'Lima Pesepak Bola yang Terkenal Dermawan',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(18),
                margin: const EdgeInsets.only(bottom: 10),
                color: Colors.cyan,
                child: Flex(
                  direction: Axis.horizontal,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      'assets/images/mbappe.jpg',
                      width: 150,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                    const Text('Kylian Mbappe'),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(18),
                margin: const EdgeInsets.only(bottom: 10),
                color: Colors.cyan,
                child: Flex(
                  direction: Axis.horizontal,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      'assets/images/messi.jpg',
                      width: 150,
                      height: 100,
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter,
                    ),
                    const Text('Lionel Messi'),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(18),
                margin: const EdgeInsets.only(bottom: 10),
                color: Colors.cyan,
                child: Flex(
                  direction: Axis.horizontal,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      'assets/images/ozil.jpg',
                      width: 150,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                    const Text('Mesut Ozil'),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(18),
                margin: const EdgeInsets.only(bottom: 10),
                color: Colors.cyan,
                child: Flex(
                  direction: Axis.horizontal,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      'assets/images/ronaldo.jpeg',
                      width: 150,
                      height: 100,
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter,
                    ),
                    const Text('Christiano Ronaldo'),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(18),
                margin: const EdgeInsets.only(bottom: 10),
                color: Colors.cyan,
                child: Flex(
                  direction: Axis.horizontal,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      'assets/images/salah.jpg',
                      width: 150,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                    const Text('Mohamed Salah'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// oadkdsadasdda