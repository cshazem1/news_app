import 'package:flutter/cupertino.dart';

import '../Models/categry_models.dart';
import 'categry.dart';

class ListViewCategry extends StatelessWidget {
  List<CategryModels> categrymodels = [
    CategryModels(
        image:
            "https://th.bing.com/th/id/OIP.RKlGPP2rJ_vMOm9p8n8E4AHaE8?rs=1&pid=ImgDetMain",
        text: "business"),
    CategryModels(
        image:
            "https://s.yimg.com/uu/api/res/1.2/hXQuS1ni9Ak65Dhn7Iwkug--~B/aD05NTE7dz0xNjAwO2FwcGlkPXl0YWNoeW9u/https://o.aolcdn.com/hss/storage/midas/816a0896789bb903891b9f6bc756f522/204650391/608130394-ed.jpg",
        text: "entertainment"),
    CategryModels(
        image:
            "https://cdn.wallpapersafari.com/60/53/VY2pTu.jpg",
        text: "health"),
    CategryModels(
        image:
            "https://img.freepik.com/premium-photo/purple-neurons_894766-526.jpg",
        text: "science"),
    CategryModels(
        image:
            "https://f5s006media.blob.core.windows.net/photos/0035548-jhnk-1280x720.jpg",
        text: "sports"),
    CategryModels(
        image:
        "https://th.bing.com/th/id/R.acbb9cc4f9bc8562553b4543c74577e9?rik=lEIvB%2f3scTHOZw&pid=ImgRaw&r=0",
        text: "technology"),
  ];

  ListViewCategry({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categrymodels.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left:10,top: 18),
            child: Categry(categryModels: categrymodels[index]),
          );
        },
      ),
    );
  }
}
