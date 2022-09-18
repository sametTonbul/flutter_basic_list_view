import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.lightBlue),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();}

class _MyHomePageState extends State<MyHomePage> {
     @override
  Widget build(BuildContext context) {
        return Scaffold(
      appBar: AppBar(
        title:
        Text('Flutter ListView Objects',style: TextStyle(color:Colors.white,fontSize: 18.0)),
        centerTitle: true),
      body:
           ListView(
              children: [
                ListTile(
                  onTap: () => print('Tapped ListTileObject TheSun'),
                  leading: Icon(Icons.sunny),
                  title : Text('The Sun'),
                  subtitle: Text('Fire'),
                  trailing: Icon(Icons.arrow_right),
                ),
                ListTile(
                  onTap: () => print('Tapped ListTileObject TheEarth'),
                  leading: Icon(Icons.circle_sharp),
                  title : Text('The Earth'),
                  subtitle: Text('Life'),
                  trailing: Icon(Icons.arrow_right),
                ),
                ListTile(
                  onTap: () => print('Tapped ListTileObject TheMoon'),
                  leading: Icon(Icons.shield_moon_rounded),
                  title : Text('The Moon'),
                  subtitle: Text('White Heart'),
                  trailing: Icon(Icons.arrow_right),
                ),
                GestureDetector(
                  onTap: () => print('Tapped CardObject GALAXY'),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: SizedBox(
                        height: 50,
                        child: Row(
                          children: [
                            Text('GALAXY',style: TextStyle(fontWeight: FontWeight.bold)),
                            Spacer(),
                            Icon(Icons.more_vert_sharp)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => print('Tapped ContainerObject TheWaterland'),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      color: Colors.indigoAccent,
                      child: Center(child: Text('WATERLAND',textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold),)),
                    ),
                  ),
                ),
              ],
            ),
           );
}
}
