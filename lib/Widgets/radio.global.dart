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
    this.color = Colors.grey, // Default color
    this.selectColor = Colors.white,
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
        height: 20, // Increase the height for padding
        width: 20, // Increase the width for padding
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: _isSelected
              ? Border.all(
                  color: Colors.white, // Border color for selected
                  width: 1.0, // Border width
                )
              : null, // No border for unselected
          color: Colors.transparent, // Transparent center
        ),
        padding: const EdgeInsets.all(1.5), // Adjust the padding as needed
        child: Container(
          margin: const EdgeInsets.all(1.5), // Adjust the margin as needed
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: _isSelected
                ? widget.selectColor // Active
                : const Color.fromARGB(255, 207, 207, 207), // Softer shade of grey for inactive
          ),
        ),
      ),
    );
  }
}
