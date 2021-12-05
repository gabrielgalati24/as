import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/question_page.dart';
import 'package:flutter_application_1/provider/pregunta_provider.dart';
import 'package:flutter_application_1/provider/prueba_provider.dart';
import 'package:flutter_application_1/services/pregunta_service.dart';
import 'package:provider/provider.dart';

class AswerCard extends StatefulWidget {
  bool? respuesta;
  int? preguntaId;
  double? lienarprogres;
  AswerCard(
      {Key? key,
      @required this.respuesta,
      @required this.preguntaId,
      @required this.lienarprogres})
      : super(key: key);

  @override
  State<AswerCard> createState() => _AswerCardState();
}

class _AswerCardState extends State<AswerCard> {
  bool isSelected = false;
  dynamic img = "assets/images/check.png";

  @override
  void dispose() {
    PreguntaProvider.instance.dispose();
    PreguntaProvider.instance.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // final pregunta = Provider.of<PreguntaProvider>(context, listen: false);
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => PreguntaProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => PruebaProvider(),
        ),
      ],
      child: Builder(builder: (context) {
        var pregunta = context.watch<PreguntaProvider>().respuesta;
        return GestureDetector(
          onTap: () async {
            // print(widget.respuesta);
            // print(context.watch<PreguntaProvider>().isElegible);
            // widget.respuesta != widget.respuesta;
            // context.read<PreguntaProvider>().increment();
            // context.read<PruebaProvider>().increment();
            print(pregunta);
            print(widget.preguntaId);
            if (pregunta == widget.preguntaId) {
              // context.read<PreguntaProvider>().isElegible = true;
              isSelected = true;
            } else {
              img = "assets/images/error.png";
              isSelected = true;
            }
            if (widget.lienarprogres == null) {
              // print("/////////////////");
              // print(widget.lienarprogres);
              widget.lienarprogres = .25;
            } else {
              // print("*******************");
              // print(widget.lienarprogres);
              // print("/////////////////");
              widget.lienarprogres = widget.lienarprogres! + .25;
            }

            // print(pregunta);

            setState(() {});
            await Future.delayed(Duration(seconds: 1));
            // print(isSelected);
            if (widget.lienarprogres == 1) {
              Navigator.pushReplacementNamed(context, "result");
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => QuestionPage(),
              //   ),
              // );
            } else {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => QuestionPage(
                    lienarprogres: widget.lienarprogres,
                    // producto: productos[index],
                  ),
                ),
              );
            }
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
                    "${context.watch<PreguntaProvider>().count}".toString(),
                    style: TextStyle(
                        fontSize: 20,
                        color: context.watch<PruebaProvider>().color),
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
                  child: isSelected ? Image.asset(img) : null,
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
