import 'package:cat_world_app/components/app_bar_component.dart';
import 'package:cat_world_app/components/cats_card_component.dart';
import 'package:cat_world_app/constants/colors.dart';
import 'package:cat_world_app/main.dart';
import 'package:flutter/material.dart';

class CatsScreen extends StatelessWidget {
  const CatsScreen({super.key, });

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
              backgroundColor: backgroundColor,

      appBar: const AppBarComponent(
        data: "Types of cats", isBackButton: true,
      ),
      body: Padding( 
        padding:  const EdgeInsets.symmetric(horizontal: 15),
        child: GridView.builder(
          itemCount: listCats.length,
          gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (BuildContext context, int index) {
            
            return  CatsCardComponent(cat: listCats[index],);
            },
         
        ),
      ),
    );
  }
}

