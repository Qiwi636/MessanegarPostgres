import 'package:flutter/material.dart';
import 'package:messeneger_postgres/generated/l10n.dart';
import 'package:messeneger_postgres/global/theme/text_style.dart';

class DividerModule extends StatelessWidget {
  const DividerModule({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Container()),
        const Expanded(flex: 2, child: CustomDivider()),
        Expanded(
            child: Text(S.of(context).auth_but_or,
                textAlign: TextAlign.center, style: AppTextStyle.h2)),
        const Expanded(flex: 2, child: CustomDivider()),
        Expanded(child: Container()),
      ],
    );
  }
}

class CustomDivider extends StatelessWidget {
  const CustomDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: 2,
      color: Theme.of(context).primaryColor,
    );
  }
}
