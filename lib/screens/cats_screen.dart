import 'package:cat_world_app/components/app_bar_component.dart';
import 'package:cat_world_app/components/cats_card_component.dart';
import 'package:cat_world_app/constants/colors.dart';
import 'package:flutter/material.dart';

class CatsScreen extends StatelessWidget {
  const CatsScreen({super.key, });

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
              backgroundColor: backgroundColor,

      appBar: const AppBarComponent(
        data: "Types of cats",
      ),
      body: Padding( 
        padding:  const EdgeInsets.symmetric(horizontal: 15),
        child: GridView(
          gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          children: const [
            CatsCardComponent(imageLink: 'https://i.guim.co.uk/img/media/26392d05302e02f7bf4eb143bb84c8097d09144b/446_167_3683_2210/master/3683.jpg?width=700&quality=85&auto=format&fit=max&s=fa2a6e634973defc13bfcbae1b8e954d', catName: 'aaa',),
          ],
        ),
      ),
    );
  }
}

