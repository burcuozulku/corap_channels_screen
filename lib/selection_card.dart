import 'package:flutter/material.dart';
import 'selection.dart';

class SelectionCard extends StatefulWidget {
  const SelectionCard({Key? key, required this.selection}) : super(key: key);

  final Selection selection;

  @override
  _SelectionCardState createState() => _SelectionCardState();
}

class _SelectionCardState extends State<SelectionCard> {
  int selectedSelection = -1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10, right: 5, left: 15, bottom: 5),
      child: SizedBox(
        width: 100,
        height: 35,
        child: GestureDetector(
          onTap: () {
            setState(() {
              selectedSelection =
                  (selectedSelection == -1) ? widget.selection.id : -1;
            });
          },
          child: Container(
            decoration: new BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(color: Colors.transparent, width: 2),
                color: selectedSelection == widget.selection.id
                    ? Color(0xffB6BFFF)
                    : Colors.grey[200]),
            padding: EdgeInsets.all(5),
            alignment: Alignment.center,
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 2),
                ),
                Text(
                  widget.selection.name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: selectedSelection == widget.selection.id
                        ? Colors.black
                        : Color(0xffB6BFFF),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
