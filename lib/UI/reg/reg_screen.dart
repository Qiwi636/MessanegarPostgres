import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:messeneger_postgres/UI/global_widgets/big_screen_image.dart';
import 'package:messeneger_postgres/UI/global_widgets/decoration.dart';
import 'package:messeneger_postgres/UI/global_widgets/navigator_label.dart';
import 'package:messeneger_postgres/UI/global_widgets/text_field_form.dart';
import 'package:messeneger_postgres/UI/reg/widget/main_reg_button.dart';
import 'package:messeneger_postgres/generated/l10n.dart';

class RegWidget extends StatelessWidget {
  const RegWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: AppDecoraions(
          blendMode: BlendMode.hardLight,
          image: 'assets/images/landscape_purple.jpg',
          color: Colors.white.withOpacity(0.6),
          child: Column(
            children: [
              const Spacer(),
              Expanded(
                flex: 20,
                child: BigScreenImage(
                  image: 'assets/images/Allura.png',
                  text: S.of(context).reg_hi,
                ),
              ),
              Expanded(
                flex: 4,
                child: TextFieldForm(
                  icon: Icons.people,
                  labelText: S.of(context).reg_tip_pass,
                ),
              ),
              const Spacer(),
              Expanded(
                flex: 4,
                child: TextFieldForm(
                  icon: Icons.lock_rounded,
                  labelText: S.of(context).reg_tip_pass,
                  isObscureIcon: true,
                ),
              ),
              const Spacer(),
              Expanded(
                flex: 4,
                child: TextFieldForm(
                  icon: Icons.check,
                  labelText: S.of(context).reg_tip_pass2,
                  isObscureIcon: true,
                ),
              ),
              const Expanded(flex: 6, child: MainButton()),
              if (MediaQuery.of(context).viewInsets.bottom == 0)
                Expanded(
                  flex: 3,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    child: NavigatorLabel(
                      fontSize: 12,
                      route: '/login',
                      text: S.of(context).reg_btb_auth,
                    ),
                  ),
                ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
