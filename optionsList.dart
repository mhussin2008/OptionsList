import 'package:flutter/material.dart';
import 'data.dart';

class OptionsList extends StatefulWidget {
  const OptionsList( {Key? key, required this.options, required this.page}) : super(key: key);
  final List<String> options;
  final int page;

  @override
  State<OptionsList> createState() => _OptionsListState();
}

class _OptionsListState extends State<OptionsList> {

  @override
  Widget build(BuildContext context) {

    return Column(
        children: widget.options.map((e) =>
        ListTile(
            title:  Text(e),
            leading: Radio<String>(
              value: e,
              groupValue:Data.chosen[widget.page],
              onChanged: (String? value) {
                setState(()
                { Data.chosen[widget.page]= value??'false';
                });},
            ),
            textColor: Colors.tealAccent,
        )
        ).toList()
    );

  }
}
