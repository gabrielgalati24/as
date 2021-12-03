import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/question_page.dart';
import 'package:flutter_application_1/provider/pregunta_provider.dart';
import 'package:flutter_application_1/services/pregunta_service.dart';
import 'package:provider/src/provider.dart';

class AswerCard extends StatefulWidget {
  bool? respuesta;
  AswerCard({Key? key, @required this.respuesta}) : super(key: key);

  @override
  State<AswerCard> createState() => _AswerCardState();
}

class _AswerCardState extends State<AswerCard> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => PreguntaProvider(),
      child: GestureDetector(
        onTap: () async {
          print(widget.respuesta);
          widget.respuesta != widget.respuesta;
          // print(context.watch<PreguntaProvider>().isElegible);
          print("//////////////////////////////");
          isSelected = !isSelected;
          setState(() {});
          // print(isSelected);
          await Future.delayed(Duration(seconds: 1));
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => QuestionPage(
                  // producto: productos[index],
                  ),
            ),
          );
        },
        child: Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            // color: isSelected ? _selectedColorCardRight : AppColors.white,
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.fromBorderSide(
              BorderSide(
                // color: isSelected ? _selectedColorCardRight : AppColors.border,
                color: Colors.black,
              ),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  "${widget.respuesta}".toString(),
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                // child: Text(
                //   answer.title,
                //   style: isSelected ? _selectedTextStyle : AppTextStyles.body,
                // ),
              ),
              Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  // color: isSelected ? _selectedColorRight : AppColors.white,
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(500),
                  border: Border.fromBorderSide(
                    BorderSide(
                      // color: isSelected
                      //     ? _selectedBorderRight
                      //     : AppColors.border,
                      color: Colors.black,
                    ),
                  ),
                ),
                // child: isSelected
                //     ? Icon(
                //         _selectedIconRight,
                //         size: 16,
                //         color: AppColors.white,
                //       )
                //     : null,
                child:
                    isSelected ? Image.asset('assets/images/check.png') : null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
