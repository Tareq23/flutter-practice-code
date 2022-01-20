
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyGridView(),
    );
  }
}
class MyGridView extends StatefulWidget {
  const MyGridView({Key? key}) : super(key: key);

  @override
  _MyGridViewState createState() => _MyGridViewState();
}

class _MyGridViewState extends State<MyGridView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Staggered Grid View'),
        centerTitle: true,
      ),
      body: StaggeredGrid.count(
        crossAxisCount: 4,
        crossAxisSpacing: 6,
        mainAxisSpacing: 10,
        children: const [
          StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: Image(
                image: NetworkImage("https://cdn.pixabay.com/photo/2015/03/09/18/34/beach-666122__180.jpg"),
                fit: BoxFit.cover,
              ),
          ),
          StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 1,
              child: Image(
                image: NetworkImage("https://cdn.pixabay.com/photo/2015/04/19/08/33/flower-729514__180.jpg"),
                fit: BoxFit.cover,
              ),
          ),
          StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 1,
              child: Image(
                image: NetworkImage("https://cdn.pixabay.com/photo/2015/10/30/20/13/sunrise-1014712__180.jpg"),
                fit: BoxFit.cover,
              ),
          ),
          StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: Image(
                image: NetworkImage("https://cdn.pixabay.com/photo/2015/11/02/18/32/water-1018808__180.jpg"),
                fit: BoxFit.cover,
              ),
          ),
          StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: Image(
                image: NetworkImage("https://cdn.pixabay.com/photo/2015/10/30/20/13/sunrise-1014712__180.jpg"),
                fit: BoxFit.cover,
              ),
          ),
          StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: Image(
                image: NetworkImage("https://cdn.pixabay.com/photo/2015/03/09/18/34/beach-666122__180.jpg"),
                fit: BoxFit.cover,
              ),
          ),
          StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 2,
              child: Image(
                image: NetworkImage("https://cdn.pixabay.com/photo/2015/04/19/08/33/flower-729514__180.jpg"),
                fit: BoxFit.cover,
              ),
          ),
          StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 2,
              child: Image(
                image: NetworkImage("https://cdn.pixabay.com/photo/2015/03/09/18/34/beach-666122__180.jpg"),
                fit: BoxFit.cover,
              ),
          ),
        ],
      ),
    );
  }

}

