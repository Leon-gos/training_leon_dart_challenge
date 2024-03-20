import 'package:flutter/material.dart';

class MyOptionalButtonWidget extends StatefulWidget {
  final Map<String, Object> items;
  final Function(Object value) onItemSelected;

  const MyOptionalButtonWidget({
    super.key,
    required this.items,
    required this.onItemSelected,
  });

  @override
  State<StatefulWidget> createState() => _MyOptionalButtonWidgetState();
}

class _MyOptionalButtonWidgetState extends State<MyOptionalButtonWidget> {
  late Object seletedValue;

  @override
  void initState() {
    super.initState();
    if (widget.items.isNotEmpty) {
      var firstKey = widget.items.keys.first;
      seletedValue = widget.items[firstKey]!;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Wrap(
        spacing: 0,
        children: [
          for (var key in widget.items.keys)
            InkWell(
              onTap: () {
                widget.onItemSelected.call(widget.items[key]!);
                setState(() {
                  seletedValue = widget.items[key]!;
                });
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 3,
                    color: Colors.black12,
                  ),
                  color: seletedValue == widget.items[key]
                      ? Colors.blue[50]
                      : Colors.white,
                ),
                child: Center(
                  child: Text(
                    key,
                    style: TextStyle(
                        color: seletedValue == widget.items[key]
                            ? Colors.blue
                            : Colors.black),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
