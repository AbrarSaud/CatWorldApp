import 'package:cat_world_app/components/app_bar_component.dart';
import 'package:cat_world_app/components/cat_info_component.dart';
import 'package:cat_world_app/constants/colors.dart';
import 'package:flutter/material.dart';

class CatDetailsScreen extends StatelessWidget {
  const CatDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: const AppBarComponent(
        data: 'aa',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            //cat Imah
            Image.network(
                'https://i.guim.co.uk/img/media/26392d05302e02f7bf4eb143bb84c8097d09144b/446_167_3683_2210/master/3683.jpg?width=700&quality=85&auto=format&fit=max&s=fa2a6e634973defc13bfcbae1b8e954d'),
            //Cat neam
            const Padding(
              padding: EdgeInsets.only(top: 15.0),
              child: Text(
                "data",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
              ),
            ),
            // cat info

            const CatInfoComponent(subHeader: 'Origin:', data: ''),
            const CatInfoComponent(subHeader: 'MaxWeight:', data: ''),
            const CatInfoComponent(subHeader: ' MinWeight:', data: ''),
            const CatInfoComponent(subHeader: 'Length:', data: ''),
            const CatInfoComponent(subHeader: 'Intelligence:', data: '')
          ],
        ),
      ),
    );
  }
}
