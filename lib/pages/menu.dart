import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:space_work/core/constant/app_asset.dart';
import 'package:space_work/pages/detials.dart';

import '../core/core_widgets/custom_gradient_scaffold.dart';

class Menupage extends StatelessWidget {
  const Menupage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> images=[
      AppAsset.mars,
      AppAsset.mercury,
      AppAsset.jupiter,
      AppAsset.earth,
      AppAsset.venus,
      AppAsset.mars,
      AppAsset.earth,
      AppAsset.jupiter,
      AppAsset.venus,
      AppAsset.mars,


    ];
    return SafeArea(
      child: CustomGradientScaffold( body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: GridView.count(crossAxisCount: 2,
          scrollDirection: Axis.vertical,
          mainAxisSpacing: 10,
          crossAxisSpacing: 5,
          physics: const BouncingScrollPhysics(),
          children: List.generate(images.length, (int index) => InkWell(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>  Details(image:  images[index],),));
            },
            child: Image.asset(
                images [index]
            ),
          ),
          ),
        
        ),
      ),
      image: AppAsset.xIcon,),
    );
  }
}
