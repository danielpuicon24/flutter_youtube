import 'package:flutter/material.dart';

class ItemFilterWidget extends StatelessWidget {

  String title;
  bool selected;
  Function onPressed;

  ItemFilterWidget({required this.title, required this.selected, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10.0),
      child: FilterChip(

        selected: selected,
        // checkmarkColor: Colors.white54,
        selectedColor: Colors.white,
        showCheckmark: false,
        backgroundColor: Color(0xff2E2E2E),
        label: Text(
          title,
          style: TextStyle(
            color: selected ? Colors.black87 : Colors.white54,
          ),
        ),
        onSelected: (bool value) {
          onPressed();
        },
      ),
    );
  }
}