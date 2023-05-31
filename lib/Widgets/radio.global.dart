import 'package:flutter/material.dart';

class radio extends StatefulWidget {
  int value;
  int groupValue;
  Color? color;
  Color? selectColor;
  bool isSelect = false;  
  void Function(int?)? onChanged;
  radio(
    {Key? key, 
    required this.value, 
    required this.groupValue,
    this.color = Colors.white,
    this.selectColor = Colors.black,
    this.onChanged,
    }) 
    : super(key: key);


  @override
  State<radio> createState() => radioState();
}

class radioState extends State<radio> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        bool selected = widget.value != widget.groupValue;
        if (selected) {
          //send widget.value in param
          widget.onChanged!(widget.value);
        }
      },
      child: Container(
        height: 20,
        width: 20,
        decoration: BoxDecoration(
          color: widget.value == widget.groupValue 
              ? widget.selectColor //active
              : widget.color, //inactive
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}