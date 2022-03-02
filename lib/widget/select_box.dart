import 'package:flutter/material.dart';

class SelectBox extends StatefulWidget {
  final List<String> items;
  final String currentItem;
  final Function(String) onChanged;
  const SelectBox(
      {Key? key,
      required this.items,
      required this.currentItem,
      required this.onChanged})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => SelectBoxState();
}

class SelectBoxState extends State<SelectBox> {
  String _selectedValue = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 1),
          borderRadius: BorderRadius.circular(5.0)),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: widget.currentItem,
          isDense: true,
          onChanged: (String? newValue) {
            setState(() {
              _selectedValue = newValue ?? widget.currentItem;
            });
            widget.onChanged(_selectedValue);
          },
          items: widget.items.map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10),
    );
  }
}
