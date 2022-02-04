import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

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
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Column(
            // Column is also a layout widget. It takes a list of children and
            // arranges them vertically. By default, it sizes itself to fit its
            // children horizontally, and tries to be as tall as its parent.
            //
            // Invoke "debug painting" (press "p" in the console, choose the
            // "Toggle Debug Paint" action from the Flutter Inspector in Android
            // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
            // to see the wireframe for each widget.
            //
            // Column has various properties to control how it sizes itself and
            // how it positions its children. Here we use mainAxisAlignment to
            // center the children vertically; the main axis here is the vertical
            // axis because Columns are vertical (the cross axis would be
            // horizontal).
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                  child: Column(
                    children: [
                      TextFormField(
                        decoration:
                            const InputDecoration(border: OutlineInputBorder()),
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      TextFormField(
                        decoration:
                            const InputDecoration(border: OutlineInputBorder()),
                      ),
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Text(
                  'You have pushed the button this many times:',
                ),
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(border: OutlineInputBorder()),
                ),
              ),
              const SelectableText('''
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sed faucibus lectus. Sed et turpis quis sem sodales elementum. Vivamus nec tellus pretium, cursus nibh quis, luctus ipsum. Curabitur luctus viverra mollis. Etiam vel lacus sit amet dolor porta finibus vitae vel lorem. Fusce pharetra aliquet massa aliquet dapibus. Integer vitae sapien nunc. Aenean non orci rutrum ante fermentum cursus. Integer lacinia sem vel mauris viverra pellentesque. Cras aliquet arcu libero. Aliquam eu eros neque. Pellentesque a pellentesque odio. Integer orci diam, aliquet quis lacus sit amet, lobortis posuere odio.

Sed nec dolor ac diam finibus porta. Sed gravida dui non ante tempus molestie. Praesent condimentum, sapien tincidunt tincidunt pretium, ligula nunc ultrices nulla, nec pellentesque elit risus non quam. Praesent dignissim pharetra magna, quis laoreet magna maximus nec. Etiam volutpat, ex ut ultricies imperdiet, metus tortor venenatis dolor, ac faucibus ante libero sit amet turpis. Fusce feugiat risus sit amet sapien malesuada, consequat consectetur felis malesuada. Donec posuere vel urna sit amet finibus. Etiam nec libero magna. Donec lacinia sem sit amet felis aliquam, ac condimentum neque volutpat. In hac habitasse platea dictumst. Phasellus aliquam ante non metus interdum, non imperdiet nulla imperdiet. Donec id orci lorem. Nulla ultrices, nulla in convallis tristique, leo tortor tincidunt felis, a rhoncus mi urna a elit. Sed vehicula tortor id erat fringilla, et interdum felis maximus.

Fusce vitae imperdiet dui. Nam aliquet convallis sem, id euismod risus malesuada at. Phasellus nec est eros. Nunc fermentum mauris dictum tristique venenatis. Aenean pharetra dolor urna, vel placerat eros placerat sit amet. Duis at eleifend felis. Aenean vel lobortis quam. Duis imperdiet, quam a fermentum tincidunt, sapien ex pretium purus, ut vehicula massa augue a neque. Phasellus sollicitudin erat sed tincidunt lacinia. Sed dignissim vulputate sapien, ac finibus diam egestas non. Fusce sagittis lorem ex, eget efficitur arcu interdum a.

Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Vivamus lectus urna, consectetur et justo sed, finibus eleifend libero. Sed finibus eleifend nunc. Morbi ac libero sed ante suscipit tristique. Suspendisse enim ex, suscipit id erat vitae, rhoncus varius eros. Nam sit amet eros in massa posuere rutrum nec quis est. Proin tristique, ante vel tincidunt interdum, ipsum quam faucibus lorem, in iaculis sem nisi id enim. Fusce placerat elit tellus, eget interdum sem ultricies in. In porttitor tristique tempor. Vestibulum viverra eleifend erat vel placerat. Mauris malesuada finibus mi, eget egestas nisl vestibulum a.

Praesent mollis luctus sapien at suscipit. Donec porta, libero id rhoncus gravida, leo orci efficitur sem, id bibendum dui massa quis mi. In a interdum lorem. Aenean arcu eros, vehicula eget sagittis eget, venenatis vel quam. Nunc imperdiet pellentesque scelerisque. Proin ut eros vitae ligula imperdiet lobortis. Maecenas est dui, dapibus ac egestas sed, faucibus ut elit. Nunc vitae magna enim. Proin suscipit consequat nibh, imperdiet congue enim blandit sit amet.
''', style: TextStyle(fontSize: 32),),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
