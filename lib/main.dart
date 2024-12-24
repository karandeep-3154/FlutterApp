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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'First Page'),
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

  var Result = 0 ;

  var input1 = TextEditingController();
  var input2 = TextEditingController();

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
    var curTime = DateTime.now();

    return Scaffold(
        appBar: AppBar(
          // TRY THIS: Try changing the color here to a specific color (to
          // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
          // change color while the other colors stay the same.
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          // backgroundColor: Colors.brown,
          title: Text(widget.title),
        ),
        body: Center(
          child: Container(
            width: 300,
            height: 300,
            color: Colors.amber,
            child: Column(children: [
              Text("Enter 2 Numbers", style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold)),
              TextField(
                controller: input1,
                decoration: InputDecoration(

                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(21),
                  borderSide: BorderSide(
                    color: Colors.purple,
                    width: 3
                  )
                ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: BorderSide(
                          color: Colors.purple,
                          width: 3
                      )
                  ),

              ),),
              SizedBox(
                height: 25,
              ),
              TextField(
                controller: input2,
                decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21),
                    borderSide: BorderSide(
                        color: Colors.purple,
                        width: 3
                    )
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21),
                    borderSide: BorderSide(
                        color: Colors.purple,
                        width: 3
                    )
                ),

              ),),
              ElevatedButton(
                  onPressed: () {
                    setState(() {

                      Result = int.parse(input1.text.toString()) + int.parse(input2.text.toString());
print(Result);
                    });
                  },
                  child: Text("Get Latest"))
              ,
              Text("Sum is ${Result}")

            ]),
          ),
        )
        // ListView.separated(itemBuilder: (context, index){
        //   return ListTile(
        //     leading: Text('$index'),
        //     title: Text(arr[index]),
        //     subtitle: Text('Name'),
        //     trailing: Icon(Icons.add)
        //   );
        // }, separatorBuilder: (context, index){
        //   return Divider(height: 10,thickness: 1,);
        // }, itemCount: arr.length)
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
