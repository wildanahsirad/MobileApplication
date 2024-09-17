import 'package:flutter/material.dart';

class SampleStack extends StatelessWidget {
  const SampleStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HOME'),
      ),
      body: Column(
        children: [
          // Bagian pertama yang berisi Row 
          SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 50,
                  color:const Color.fromARGB(115, 44, 92, 205),
                  child: const Icon(
                    Icons.star,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Container(
                  width: 50,
                  color:const Color.fromARGB(115, 44, 92, 205),
                  child: const Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),

          // Bagian kedua yang berisi Stack
          SizedBox(
            width: 500,
            height: 200,
            child: Stack(
              children: <Widget>[
                Container(
                  width: 500,
                  height: 200,
                  color: Colors.white,
                ),
                Container(
                  padding: const EdgeInsets.all(5.0),
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: <Color>[
                        const Color.fromARGB(255, 230, 15, 15).withAlpha(0),
                        const Color.fromARGB(31, 58, 237, 195),
                        const Color.fromARGB(115, 44, 92, 205),
                      ],
                    ),
                  ),
                  child: const Text(
                    'WELCOME',
                    style: TextStyle(color: Colors.black, fontSize: 20.0),
                  ),
                ),
              ],
            ),
          ),

        // Bagian ketiga yang berisi column
          Flexible(
            child: Container(
              height: 50,
              color:const Color.fromARGB(132, 240, 233, 181), // kuning
              child: const Center(
                child: Text(
                  '2209106062 WILDANAH SIRAD',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),
          Flexible(
            child: Container(
              height: 50,
              color:const Color.fromARGB(132, 234, 217, 159),
              child: const Center(
                child: Text(
                  '2209106083 SYARIFAH ARMILDA SYAHLA',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),
          Flexible(
            child: Container(
              height: 50,
              color:Color.fromARGB(255, 230, 196, 225), //pink
              child: const Center(
                child: Text(
                  'NAMA DOSEN : ANTON PRAFANTO',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}