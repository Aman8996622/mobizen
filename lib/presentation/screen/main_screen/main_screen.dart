import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get_it/get_it.dart';
import 'package:mobizen/core/assets_image/assets_image.dart';
import 'package:mobizen/core/shared_preferences/index.dart';
import 'package:mobizen/presentation/widget/button_press_effect/button_press_effect.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var preference = GetIt.I<PreferenceHepler>();
    if(preference.logoRender!=null)
    {
      
    }else 
    {
        

    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Stack(
        alignment: Alignment.center,
        children: [
          ButtonPressEffect(
            onPress: () {},
            child: Container(),
          )
        ],
      ),
    );
  }
}
