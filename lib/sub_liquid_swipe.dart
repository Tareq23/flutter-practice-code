
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class SubLiquidSwipe extends StatelessWidget {
  const SubLiquidSwipe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SubLiquidSwipeState(),
    );
  }
}

class SubLiquidSwipeState extends StatefulWidget {
  const SubLiquidSwipeState({Key? key}) : super(key: key);

  @override
  _SubLiquidSwipeStateState createState() => _SubLiquidSwipeStateState();
}

class _SubLiquidSwipeStateState extends State<SubLiquidSwipeState> {
  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    var _height = MediaQuery.of(context).size.height;
    final customPages = [
      SizedBox(
        width: _width,
        height: _height,
        child: Stack(
          children: [
           const Image(
              image: NetworkImage("https://cdn.pixabay.com/photo/2016/11/19/10/38/bangladesh-1838529__340.jpg"),
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            Positioned(
              left: 10,
              bottom: 30,
              right: 10,
              child: Container(
                width: _width-20,
                color: Colors.white.withOpacity(0.6),
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                child: Column(
                  children: [
                    const Text('Louis Kahn designed the entire Jatiya Sangsad complex, which includes lawns, lake and residences '
                'for the Members of the Parliament (MPs). The architect\'s key design philosophy was to represent '
                        'Bengali culture and heritage, while at the same time optimizing the use of space.',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Colors.black38,
                    ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(onPressed: (){}, child: Text("Prev")),
                        ElevatedButton(onPressed: (){}, child: Text("Next")),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      SizedBox(
        width: _width,
        height: _height,
        child: Stack(
          children: [
           const Image(
              image: NetworkImage("https://dynamic-media-cdn.tripadvisor.com/media/photo-o/10/e2/f8/43/longest-sea-beach-in.jpg?w=700&h=-1&s=1"),
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            Positioned(
              left: 10,
              bottom: 30,
              right: 10,
              child: Container(
                width: _width-20,
                color: Colors.indigoAccent.withOpacity(0.6),
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                child: Column(
                  children: [
                    const Text('Cox\'s Bazar Beach, located at Cox\'s Bazar, Bangladesh, is the longest natural '
                        'sea beach in the world running 120 kilometres. and 5th longest beach after Praia do Cassino '
                        'of Brazil, Padre Island on the US Gulf Coast and Eighty Mile Beach in Western Australia, '
                        'and Ninety Mile Beach of Australia.',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Colors.white60,
                    ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(onPressed: (){}, child: Text("Prev")),
                        ElevatedButton(onPressed: (){}, child: Text("Next")),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Liquid Swipe',style: TextStyle(fontSize: 32,fontWeight: FontWeight.w700,color: Colors.deepOrangeAccent),),
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
      body: LiquidSwipe(
        pages: customPages,
      ),
    );
  }
}
