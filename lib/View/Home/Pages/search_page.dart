import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../../../Utils/constants.dart';

class Search_Page extends StatefulWidget {
  @override
  _Search_PageState createState() => _Search_PageState();
}

class _Search_PageState extends State<Search_Page> {
  final TextEditingController _inputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: kBackgroundColor,
        body: Column(

                    mainAxisAlignment: MainAxisAlignment.start,

                children: [
                  SizedBox(height: size.height*0.1,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.pop(context, 'Nope.');
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.arrow_back_ios),
                        ),
                      ),
                      Center(
                        child: InkWell(
                          onTap: () {

                          },
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey[100],
                                  borderRadius: BorderRadius.circular(10)),
                              width: size.width * 0.7,
                              height: size.height * 0.07,
                              child: Center(
                                child: TextField(
                                  controller: _inputController,
                                  decoration: new InputDecoration(
                                    border: InputBorder.none,
                                    //focusedBorder: InputBorder.none,
                                    suffixIcon: Icon(Icons.search),
                                    contentPadding: EdgeInsets.only(left: size.width*0.2,top: size.height*0.0167),
                                    hintText: "???????????????",
                                  ),
                                ),
                              ))
                          // Container(
                          //   width: size.width * 0.7,
                          //   height: size.height * 0.07,
                          //   decoration: BoxDecoration(
                          //       color: Colors.grey[100],
                          //       borderRadius: BorderRadius.circular(10)),
                          //   child: Row(
                          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //     children: [
                          //       Text(""),
                          //       Text(
                          //         "????????? ?????? ??????",
                          //         style: TextStyle(color: Colors.grey),
                          //       ),
                          //       Icon(Icons.search)
                          //     ],
                          //   ),
                          // ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(""),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Text("     ?????? ?????? ??????",style: TextStyle(fontSize: 21),),
                        Text("?????? ?????? ?????? ??????    "),

                      ],
                    ),
                  ),
                ],
              ));

  }
}
