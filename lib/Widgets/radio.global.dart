import 'package:flutter/material.dart';

class RadioWidget extends StatefulWidget {
  final int? value;
  final int? groupValue;
  final Color? color;
  final Color? selectColor;
  final void Function(int?)? onChanged;

  const RadioWidget({
    Key? key,
    this.value,
    this.groupValue,
    this.color = Colors.white,
    this.selectColor = Colors.black,
    this.onChanged,
  }) : super(key: key);

  @override
  State<RadioWidget> createState() => RadioWidgetState();
}

class RadioWidgetState extends State<RadioWidget> {
  bool _isSelected = false;

  @override
  void initState() {
    super.initState();
    _isSelected = widget.value == widget.groupValue;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (_isSelected) {
          // Deselect when tapped twice
          widget.onChanged?.call(null);
        } else {
          // Select on first click
          widget.onChanged?.call(widget.value);
        }
        setState(() {
          _isSelected = !_isSelected;
        });
      },
      child: Container(
        height: 20,
        width: 20,
        decoration: BoxDecoration(
          color: _isSelected
              ? widget.selectColor // Active
              : widget.color, // Inactive
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
