import 'package:flutter/material.dart';
import '../constants.dart';
import '../util/my_box.dart';
import '../util/my_tile.dart';


class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({Key? key}) : super(key: key);

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: defaultBackgroundColor,
      appBar: myAppBar,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //opendrawer
            myDrawer,
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  AspectRatio(
                    aspectRatio: 4,
                    child: SizedBox(
                      width: double.infinity,
                      child: GridView.builder(
                        itemCount: 4,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 4),
                        itemBuilder: (context, index) {
                          return  MyBox(
                            numbers: index,
                          );
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return MyTile(
                          image: index,
                          text: index,
                        );
                        },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: Column(
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 450,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage('../image/descuento.jpg'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.grey[400],
                        ),
                      ),
                    ),
                    Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.8),
                          child: Container(
                            width: 500,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                            color: Colors.black,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                IconButton(
                                  icon: const Icon(Icons.whatsapp), color: Colors.white, onPressed: (){}, iconSize: 60,),
                                IconButton(
                                  icon: const Icon(Icons.facebook), color: Colors.white, onPressed: () {}, iconSize: 60,
                                ),
                                IconButton(
                                  icon: const Icon(Icons.message_outlined), color: Colors.white, onPressed: () {}, iconSize: 60, )
                              ],
                            ),
                          ),
                        ),
                    )
                  ],
                ),
            ),
          ],
        ),
      ),
    );
  }
}
