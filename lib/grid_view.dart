import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'dart:math';
// void main(){
//   runApp(GridViewWidget());
// }
class GridViewWidget extends StatelessWidget {
  const GridViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Grid view',
      home: GridViewWidgetState(),
    );
  }
}class GridViewWidgetState extends StatefulWidget {
  const GridViewWidgetState({Key? key}) : super(key: key);

  @override
  _GridViewWidgetState createState() => _GridViewWidgetState();
}

class _GridViewWidgetState extends State<GridViewWidgetState> {
  final List<Map<String, dynamic>> _items =List.generate(
      200,
          (index)=> {
        "id": index,
        "title": "items $index",
        "height": Random().nextInt(150)+50.5
      });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView'),
        centerTitle: true,
      ),
      body: MasonryGridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: 4,
        itemBuilder: (context, index){
          return Card(
            color: Color.fromARGB(
                Random().nextInt(256),
                Random().nextInt(256),
                Random().nextInt(256),
                Random().nextInt(256)),
            key: ValueKey(_items[index]["id"]),
            child: SizedBox(
              height: _items[index]['height'],
              child: Center(
                child: Text(_items[index]['title']),
              ),
            ),
          );
        },
      ),
    );
  }
}

