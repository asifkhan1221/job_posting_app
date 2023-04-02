import 'package:flutter/widgets.dart';

class Button extends StatelessWidget {
  final String label;
  final VoidCallback onPress;
  const Button({
    super.key,
    required this.label,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.only(top: 15, bottom: 15),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: const Color(0XFFFFFFFF),
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: const Color(0xFF5D5D67),
                width: 1,
              ),
            ),
            child: GestureDetector(
              onTap: onPress,
              child: Text(
                label,
                style: const TextStyle(
                    color: Color(0xFF191720),
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
            ),
          ),
        )
      ],
    );
  }
}
