import 'package:flutter/material.dart';

class LayoutJoc extends StatelessWidget {

  final dynamic itemData;

  // Constructor
  LayoutJoc({Key? key, required this.itemData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Ocupar la meitat superior de l'espai amb la imatge
          SizedBox(
            width: MediaQuery.of(context).size.width * 90.0,
            height: MediaQuery.of(context).size.height * 0.4,
            child: Image.asset('assets/images/${itemData["imatge"]}', fit: BoxFit.contain, ),
          ),
          // Ocupar la meitat inferior de l'espai amb els textos
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.4,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("${itemData['nom']}",style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  const SizedBox(height: 10),
                  Text(itemData['any'].toString()),
                  const SizedBox(height: 10),
                  Text("${itemData['tipus']}",style: const TextStyle(fontWeight: FontWeight.bold),),
                  const SizedBox(height: 10),
                  Text("${itemData['descripcio']}",textAlign: TextAlign.justify,),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
