import 'package:flutter/material.dart';
class CustomCheckbox extends StatelessWidget {
  final bool isChecked;
  final ValueChanged<bool?> onChanged;
  final Widget? prefix;
  final String? prefixText;
  final String? text;
  const CustomCheckbox({
    required this.isChecked,
    required this.onChanged,
    this.prefix,
    this.prefixText,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChanged(!isChecked);
      },
      child: Center(
        child: Container(
          height: 50,
          width: 320,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey.withOpacity(0.5)),
          ),
          child: Row(
            children: [
              if (prefix != null) ...[
                SizedBox(width: 10),
                prefix!,
                SizedBox(width: 10),
              ],
              if (prefixText != null) ...[
                Text(
                  prefixText!,
                  style: TextStyle(
                    fontSize: 16,
                    color: isChecked ? Colors.blue : Colors.grey,
                  ),
                ),
              ],
              if (text != null) ...[
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    text!,
                    style: TextStyle(
                      fontSize: 15,
                      color: isChecked ? Colors.blue : Colors.black,
                    ),
                  ),
                ),
              ],
              Expanded(
                child: SizedBox(),
              ),
              if (isChecked)
                Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: Icon(
                    Icons.check,
                    color: Colors.blue,
                    size: 30,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
