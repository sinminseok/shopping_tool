import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shopping_tool/Utils/constants.dart';

import '../../Widgets/announcement_widget.dart';



class Pt_View extends StatelessWidget {
  const Pt_View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kPrimaryColor,
      ),
      body: Column(
        children: [
          SizedBox(height: size.height*0.03),
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Center(child: Text("트레이너 관리",style: TextStyle(fontSize: 32,fontFamily: "boldfont"),)),
          ),
          Center(
            child: Container(
                width: size.width * 0.9,
                height: size.height * 0.7,
                child: ListView(
                  children: [


                    InkWell(
                        onTap:(){
                          Navigator.pushNamed(context, '/pt_detail');
                        },
                        child: List_Pt(size)),
                    InkWell(
                        onTap:(){
                          Navigator.pushNamed(context, '/pt_detail');
                        },
                        child: List_Pt(size)),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
