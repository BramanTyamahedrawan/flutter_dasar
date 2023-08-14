// ignore_for_file: must_be_immutable

import 'dart:math';

import 'package:flutter/material.dart';

class ColorfullButton extends StatefulWidget {
  Color mainColor, secondaryColor;
  Icon iconData;

  @override
  State<ColorfullButton> createState() =>
      // ignore: no_logic_in_create_state
      _ColorfullButtonState(mainColor, secondaryColor, iconData);

  ColorfullButton(this.mainColor, this.secondaryColor, this.iconData,
      {super.key});
}

class _ColorfullButtonState extends State<ColorfullButton> {
  bool isPressed = false;
  Color mainColor, secondaryColor;
  Icon iconData;

  _ColorfullButtonState(this.mainColor, this.secondaryColor, this.iconData);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      // transform rotate berfungsi untuk memutar widget
      angle: pi /
          4, // angle berfungsi untuk mengatur derajat putaran, 1 pi = 180 derajat
      child: GestureDetector(
        onTapDown: (details) {
          // onTapDown berfungsi untuk mengatur aksi ketika user menekan tombol
          // parameter details berfungsi untuk mengatur detail dari aksi yang dilakukan user
          setState(() {
            isPressed = !isPressed;
          });
        },
        onTapUp: (details) {
          // onTapUp berfungsi untuk mengatur aksi ketika user melepaskan tombol
          // parameter details berfungsi untuk mengatur detail dari aksi yang dilakukan user
          setState(() {
            isPressed = !isPressed;
          });
        },
        onTapCancel: () {
          // onTapCancel berfungsi untuk mengatur aksi ketika user membatalkan aksi yang dilakukan
          setState(() {
            isPressed = !isPressed;
          });
        },
        child: Material(
          borderRadius: BorderRadius.circular(15),
          elevation: (isPressed) ? 5 : 10,
          shadowColor: (isPressed) ? secondaryColor : mainColor,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Stack(
              children: [
                SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    borderRadius: BorderRadius.circular(15),
                    color: (isPressed) ? secondaryColor : mainColor,
                    child: Transform.rotate(
                        angle: pi / -4,
                        child: Icon(
                          iconData.icon,
                          color: Colors.white,
                        )),
                  ),
                ),
                // transform ke-1
                Transform.translate(
                  // transform translate berfungsi untuk menggeser widget dari posisi awal
                  offset: const Offset(
                      30, 30), // offset berfungsi untuk mengatur jarak geser
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                ),
                // transform ke-2
                Transform.translate(
                  offset: const Offset(-30, 30),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                ),
                // transform ke-3
                Transform.translate(
                  offset: const Offset(-30, -30),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                ),
                // transform ke-4
                Transform.translate(
                  offset: const Offset(30, -30),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
