import 'package:flutter/material.dart';

import '../Models/categry_models.dart';
import '../Screens/categry_view.dart';

class Categry extends StatelessWidget {
  CategryModels categryModels;
  Categry({super.key, required this.categryModels});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return CategryView(
              categry: categryModels.text,
            );
          },
        ));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 4),
        child: Container(
          width: 105,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.deepOrangeAccent),
          child: Center(
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                image: DecorationImage(
                    fit: BoxFit.fill, image: NetworkImage(categryModels.image)),
              ),
              child: Center(
                  child: Text(
                categryModels.text,
                style: (const TextStyle(
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(2.0, 2.5),
                        blurRadius: 5.0,
                        color: Color.fromARGB(255, 255, 66, 0),
                      ),
                    ],
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold)),
              )),
            ),
          ),
        ),
      ),
    );
  }
}
