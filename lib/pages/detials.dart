import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:space_work/core/constant/app_asset.dart';
import 'package:space_work/core/constant/sized_box.dart';
import 'package:space_work/core/core_widgets/read_me_text.dart';

import '../core/core_widgets/custom_gradient_scaffold.dart';

class Details extends StatelessWidget {
  const Details({super.key,required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return CustomGradientScaffold(
        body: Column(
          children:[
            SizedBox2.vertical30,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Image.asset(image,
              width:MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
                ),
            ),
            SizedBox2.vertical30,
            Divider(
              thickness: 1,              //line
              height: 1,
              color: Colors.black,
            ),
            SizedBox2.vertical20,
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: ReadMeTextWidget(
                      text: 'Earth, third planet from the Sun and the fifth largest planet in the solar system in terms of size and mass. Its single most outstanding feature is that its near-surface environments are the only places in the universe known to harbour life. Earth, third planet from the Sun and the fifth largest planet in the solar system in terms of size and mass. Its single most outstanding feature is that its near-surface environments are the only places in the universe known to harbour life. It is...Earth, third planet from the Sun and the fifth largest planet in the solar system in terms of size and mass. Its single most outstanding feature is that its near-surface environments are the only places in the universe known to harbour life. It is...Earth, third planet from the Sun and the fifth largest planet in the solar system in terms of size and mass. Its single most outstanding feature is that its near-surface environments are the only places in the universe known to harbour life. It is...',
                  ),
                ),
              ),
            ),
            SizedBox2.vertical20,
          ],
        ), 
        image:AppAsset.menuIcon
    );
  }
}
