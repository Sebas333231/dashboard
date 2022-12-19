import 'package:flutter/material.dart';
import 'package:personalizado_dasboard/constants.dart';

class MyTile extends StatelessWidget {
  final int image;
  final int text;

  const MyTile({Key? key, required this.image, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 250,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('../image/image${image + 1}.jpeg'),
            fit: BoxFit.cover,
            opacity: 50,
          ),
          borderRadius: BorderRadius.circular(8),
          color: Colors.grey[200],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (image == 0) ...[
                  Column(
                    children: const[
                      Text(
                        'Zapatillas blancas',
                        style: TextStyle(
                          fontSize: 27,
                          fontWeight: FontWeight.bold,
                          backgroundColor: Colors.white54
                        ),
                      ),
                    ],
                  )
                ]else if (image == 1) ...[
                  Column(
                    children: const[
                      Text(
                        'Zapatillas negras',
                        style: TextStyle(
                            fontSize: 27,
                            fontWeight: FontWeight.bold,
                            backgroundColor: Colors.white54
                        ),
                      )
                    ],
                  )
                ]else if (image == 2) ...[
                  Column(
                    children: const[
                      Text(
                        'Air For one Blancas',
                        style: TextStyle(
                            fontSize: 27,
                            fontWeight: FontWeight.bold,
                            backgroundColor: Colors.white54
                        ),
                      )
                    ],
                  )
                ]else if (image == 3) ...[
                  Column(
                    children: const[
                      Text(
                        'Zapatillas Blancas',
                        style: TextStyle(
                            fontSize: 27,
                            fontWeight: FontWeight.bold,
                            backgroundColor: Colors.white54
                        ),
                      )
                    ],
                  )
                ]else if (image == 4) ...[
                  Column(
                    children: const[
                      Text(
                        'Air For one Blancas',
                        style: TextStyle(
                            fontSize: 27,
                            fontWeight: FontWeight.bold,
                            backgroundColor: Colors.white54
                        ),
                      )
                    ],
                  )
                ]else if (image == 5) ...[
                  Column(
                    children: const[
                      Text(
                        'Air For one Negras',
                        style: TextStyle(
                            fontSize: 27,
                            fontWeight: FontWeight.bold,
                            backgroundColor: Colors.white54
                        ),
                      )
                    ],
                  )
                ]else if (image == 6) ...[
                  Column(
                    children: const[
                      Text(
                        'Jordan',
                        style: TextStyle(
                            fontSize: 27,
                            fontWeight: FontWeight.bold,
                            backgroundColor: Colors.white54
                        ),
                      )
                    ],
                  )
                ]else if (image == 7) ...[
                  Column(
                    children: const[
                      Text(
                        'Zapatillas Blancas con Rojo',
                        style: TextStyle(
                            fontSize: 27,
                            fontWeight: FontWeight.bold,
                            backgroundColor: Colors.white54
                        ),
                      )
                    ],
                  )
                ]else if (image == 8) ...[
                  Column(
                    children: const[
                      Text(
                        'Zapatillas Rosa',
                        style: TextStyle(
                            fontSize: 27,
                            fontWeight: FontWeight.bold,
                            backgroundColor: Colors.white54
                        ),
                      )
                    ],
                  )
                ]else if (image == 9) ...[
                  Column(
                    children: const[
                      Text(
                        'Zapatillas Rojas',
                        style: TextStyle(
                            fontSize: 27,
                            fontWeight: FontWeight.bold,
                            backgroundColor: Colors.white54
                        ),
                      )
                    ],
                  )
                ]
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: const BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                    ),
                    backgroundColor: Colors.blue,
                    padding: const EdgeInsets.all(15.0),

                    //backgroundColor: MaterialStateProperty.all(Colors.lightBlue),
                  ),
                  child: const Text(
                    'Comprar',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    showDialogFunc(context, image);
                  },
                  style: ElevatedButton.styleFrom(
                    shape: const BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                    ),
                    backgroundColor: Colors.black45,
                    padding: const EdgeInsets.all(15.0),
                    //backgroundColor: MaterialStateProperty.all(Colors.lightBlue),
                  ),
                  child: const Text(
                    'Ver',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  showDialogFunc(context, image) {
    return showDialog(
      context: context,
      builder: (context) {
        return Center(
          child: Material(
            type: MaterialType.transparency,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('../image/image${image + 1}.jpeg'),
                ),
              ),
              padding: const EdgeInsets.all(35),
              height: 400,
              width: MediaQuery.of(context).size.width * 0.7,
            ),
          ),
        );
      },
    );
  }
}

