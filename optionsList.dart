import 'package:flutter/material.dart';
import 'data.dart';

class OptionsList extends StatefulWidget {
  const OptionsList({Key? key, required this.options}) : super(key: key);
  final List<String> options;

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
              groupValue: data.chosen,
              onChanged: (String? value) {
                setState(()
                { data.chosen = value??'false';
                });},
            ),
            textColor: Colors.tealAccent,
        )
        ).toList()
    );

  }
}
