import 'package:flutter/material.dart';

Widget buttonPersonalizado(
    {required maxWidth,
    required text,
    required Function onPressed,
    Color color = Colors.green}) {
  return InkWell(
    onTap: () {
      onPressed();
    },
    child: SizedBox(
        child: SizedBox(
      child: Stack(
        children: [
          Container(
            width: maxWidth - 20,
            height: 67,
            decoration: BoxDecoration(
                color: color.withOpacity(.7),
                borderRadius: BorderRadius.circular(20)),
          ),
          Container(
            width: maxWidth - 20,
            height: 60,
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(18)),
            child: Center(
              child: Text(
                text,
                style: const TextStyle(
                    fontFamily: "LilitaOne", color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    )),
  );
}
