import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:space_work/core/constant/app_asset.dart';
import 'package:space_work/core/constant/theme.dart';
import 'package:space_work/pages/menu.dart';

import '../core/core_widgets/custom_gradient_scaffold.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  get chil => null;

  @override
  Widget build(BuildContext context) {
    return CustomGradientScaffold(
      image: AppAsset.menuIcon,
      body: Column(
        children: [
          const SizedBox(
            height: 50,                                 //space frame
          ),
          //text
          Padding(
              padding:EdgeInsets.symmetric(horizontal: 20),
            child: RichText(
              text:
             TextSpan(
               style: AppTheme.nunitoFont40,
               children: [
                 TextSpan(text: "Let’s Explore the "),
                 TextSpan(text: "Solar System \n",style: AppTheme.openSansFont40.copyWith(color:AppTheme.yellowColor ) ),
                 TextSpan(text: "with"),
                 TextSpan(text: "Explorer",style: AppTheme.nunitoFont40.copyWith(color:AppTheme.yellowColor )),
               ]
             ),
            ),
          ),
          const SizedBox(
            height: 15,                                 //space frame
          ),
          //image
        // Image.asset(AppAsset.splashImage),   //local image
          Lottie.asset(AppAsset.animation3) ,  //animation image
          const SizedBox(
            height: 10,                                 //space about buttom and animation
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),     //control size of buttom
            child: ElevatedButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all(EdgeInsets.all(12))),
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context)=>Menupage(),));   //action to go menu screen
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,      //text in center
                mainAxisAlignment: MainAxisAlignment.center,       //rocte in center

                children: [
                Text("Let’s Go",style: TextStyle(
                  fontSize: 22,
                ),),
                  const SizedBox(
                    width: 5,                                 //space
                  ),
                Image.asset(AppAsset.rocket),

            ],),),
          ),
          
        ],
      ),
    );
  }


}

