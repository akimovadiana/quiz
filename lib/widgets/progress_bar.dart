import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {
  final icons;
  final count;
  final total;

  const ProgressBar({
    Key? key,
    this.icons,
    this.count,
    this.total,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      width: double.maxFinite,
      margin: const EdgeInsets.symmetric(
        vertical: 15.0,
        horizontal: 10.0,
      ),
      child: Wrap(
        alignment: WrapAlignment.start,
        children: [
          FittedBox(
            fit: BoxFit.contain,
            child: Text(
              '$count / $total',
              style: TextStyle(
                color: Colors.deepPurpleAccent.shade700,
                fontSize: 18,
              ),
            ),
          ),
          const SizedBox(width: 10),
          ...icons,
        ],
      ),
    );
  }
}
