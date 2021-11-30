import 'package:flutter/material.dart';
import 'package:messeneger_postgres/global/constant.dart';

class TextFieldForm extends StatefulWidget {
  const TextFieldForm({
    Key? key,
    required this.icon,
    required this.labelText,
    this.isObscureIcon = false,
  }) : super(key: key);

  final IconData icon;
  final String labelText;
  final bool isObscureIcon;

  @override
  State<TextFieldForm> createState() => _TextFieldFormState();
}

class _TextFieldFormState extends State<TextFieldForm> {
  bool _isObscureText = true;

  @override
  Widget build(BuildContext context) {
    if (widget.isObscureIcon == false) {
      return Container(
        margin: const EdgeInsets.only(left: 15, right: 15),
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          borderRadius: BorderRadius.circular(AppConstant.kDefaultCircular),
        ),
        child: TextField(
          // obscureText: _isObscureText,s
          decoration: InputDecoration(
            prefixIcon: Icon(
              widget.icon,
              color: Theme.of(context).primaryColor,
            ),
            alignLabelWithHint: true,
            labelText: widget.labelText,
            contentPadding:
                const EdgeInsets.all(AppConstant.kDefaultContentPadding),
            border: OutlineInputBorder(
                borderRadius:
                    BorderRadius.circular(AppConstant.kDefaultCircular)),
          ),
        ),
      );
    }
    return Container(
      margin: const EdgeInsets.only(left: 15, right: 15),
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        borderRadius: BorderRadius.circular(AppConstant.kDefaultCircular),
      ),
      child: TextField(
        obscureText: _isObscureText,
        decoration: InputDecoration(
          prefixIcon: Icon(
            widget.icon,
            color: Theme.of(context).primaryColor,
          ),
          alignLabelWithHint: true,
          labelText: widget.labelText,
          contentPadding:
              const EdgeInsets.all(AppConstant.kDefaultContentPadding),
          suffixIcon: IconButton(
            onPressed: () => setState(() => _isObscureText = !_isObscureText),
            icon: const Icon(Icons.remove_red_eye),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppConstant.kDefaultCircular),
          ),
        ),
      ),
    );
  }
}
