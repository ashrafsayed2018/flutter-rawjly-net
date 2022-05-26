import 'package:flutter/material.dart';

class CustomDropdwon extends StatefulWidget {
  String item;
  List items;
  CustomDropdwon({
    Key? key,
    required this.item,
    required this.items,
  }) : super(key: key);

  @override
  State<CustomDropdwon> createState() => _CustomDropdwonState();
}

class _CustomDropdwonState extends State<CustomDropdwon> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
            value: widget.item,
            isExpanded: true,
            icon: const Icon(Icons.arrow_drop_down, color: Colors.black),
            // items: widget.items.map(buildMenuItem).toList(),
            items: widget.items.map((item) {
              return DropdownMenuItem<String>(
                value: item,
                child: Text(item),
                alignment: AlignmentDirectional.centerEnd,
              );
            }).toList(),
            onChanged: (value) {
              setState(() {
                widget.item = value!;
              });
            }),
      ),
    );
  }
}
