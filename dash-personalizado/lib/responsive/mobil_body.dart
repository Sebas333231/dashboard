import 'package:flutter/material.dart';
import '../constants.dart';
import '../util/my_box.dart';
import '../util/my_tile.dart';

class MobieleScaffold extends StatefulWidget {
  const MobieleScaffold({Key? key}) : super(key: key);

  @override
  State<MobieleScaffold> createState() => _MobieleScaffoldState();
}

class _MobieleScaffoldState extends State<MobieleScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: defaultBackgroundColor,
      appBar: myAppBar,
      drawer: myDrawer,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: SizedBox(
                width: double.infinity,
                child: GridView.builder(
                  itemCount: 4,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return MyBox(
                      numbers: index,
                    );
                  },
              ),
            ),
          ),
          Expanded(
              child: ListView.builder(
                itemCount: 4,
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
    );
  }
}
