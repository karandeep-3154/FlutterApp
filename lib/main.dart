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
      title: 'Flutter Demo46466',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'uihihiiuiuiuh Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
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
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    var arr = ['Karandeep', 'Singh', 'Gursharan', 'Kaur', 'Tajinder', "Singh"];
    return Scaffold(
        appBar: AppBar(
          // TRY THIS: Try changing the color here to a specific color (to
          // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
          // change color while the other colors stay the same.
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        body:
        ListView.separated(itemBuilder: (context, index){
          return Text(arr[index]);
        }, separatorBuilder: (context, index){
          return Divider(height: 200,thickness: 10,);
        }, itemCount: arr.length)
          // ListView.builder(itemBuilder: (context, index){
          //   return Text(arr[index], style: TextStyle(fontWeight: FontWeight.bold),);
          // },
          // itemCount: arr.length,)
        // SingleChildScrollView(
        //   scrollDirection: Axis.horizontal,
        //   child: Row(
        //     children: [
        //       Container(
        //         height: 200,
        //         width: 300,
        //         color: Colors.amber,
        //       ),
        //       Container(
        //         height: 200,
        //         width: 300,
        //         color: Colors.brown,
        //       ),
        //       Container(
        //         height: 200,
        //         width: 300,
        //         color: Colors.green,
        //       ),
        //       Container(
        //         height: 200,
        //         width: 300,
        //         color: Colors.deepOrange,
        //       ),
        //       Container(
        //         height: 200,
        //         width: 300,
        //         color: Colors.purple,
        //       ),
        //     ],
        //   ),
        // )
        // InkWell(
        //     onTap: (){
        //       print("Clicked on Img");
        //     },
        //     onDoubleTap: (){
        //       print("Double Clicked on Img");
        //     },
        //     onLongPress: (){
        //   print("Long Clicked on Img");
        // },
        //     child: Image.asset('assets/images/2.png')
        // )
        // OutlinedButton(
        //   onPressed: () {
        //     print('Pressing');
        //   },
        //   child: Text('Click ME!'),
        //   onLongPress: () {
        //     print("long pressed");
        //   },
        // )
        // ElevatedButton(
        //   onPressed: () {
        //     print('Pressing');
        //   },
        //   child: Text('Click ME!'),
        //   onLongPress: () {
        //     print("long pressed");
        //   },
        // )
        // TextButton(
        //   onPressed: () {
        //     print('Pressing');
        //   },
        //   child: Text('Click ME!'),
        //   onLongPress: () {
        //     print("long pressed");
        //   },
        // )
        // Center(
        // child: Text("hello", style: TextStyle(
        //   fontSize: 56,
        //   color: Colors.amber,
        //   fontWeight: FontWeight.bold,
        // ),)
        );
  }
}
