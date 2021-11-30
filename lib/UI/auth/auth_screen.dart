import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:messeneger_postgres/UI/global_widgets/big_screen_image.dart';
import 'package:messeneger_postgres/UI/global_widgets/decoration.dart';
import 'package:messeneger_postgres/UI/global_widgets/devider_module.dart';
import 'package:messeneger_postgres/UI/auth/widgets/main_button.dart';
import 'package:messeneger_postgres/UI/global_widgets/navigator_label.dart';
import 'package:messeneger_postgres/UI/global_widgets/text_field_form.dart';
import 'package:messeneger_postgres/generated/l10n.dart';

class AuthWidget extends StatefulWidget {
  const AuthWidget({Key? key}) : super(key: key);

  @override
  State<AuthWidget> createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: AppDecoraions(
          blendMode: BlendMode.hardLight,
          color: Theme.of(context).scaffoldBackgroundColor.withOpacity(0.7),
          image: 'assets/images/landscape_purple.jpg',
          child: Column(
            children: [
              const Spacer(),
              Expanded(
                  flex: 22,
                  child: BigScreenImage(
                      text: S.of(context).auth_hi,
                      image: 'assets/images/Dayflow.png')),
              Expanded(
                flex: 4,
                child: TextFieldForm(
                  icon: Icons.people,
                  labelText: S.of(context).auth_tip_log,
                ),
              ),
              const Spacer(),
              Expanded(
                flex: 4,
                child: TextFieldForm(
                  icon: Icons.lock_rounded,
                  labelText: S.of(context).auth_tip_pass,
                  isObscureIcon: true,
                ),
              ),
              const Spacer(),
              Expanded(
                flex: 4,
                child: MainButton(
                  navigate: '/home',
                  text: S.of(context).auth_btn_input,
                ),
              ),
              const Spacer(),
              if (MediaQuery.of(context).viewInsets.bottom == 0)
                Expanded(
                  flex: 2,
                  child: NavigatorLabel(
                    fontSize: 13,
                    route: '/register',
                    text: S.of(context).auth_btb_reg,
                  ),
                ),
              if (MediaQuery.of(context).viewInsets.bottom == 0)
                const Expanded(child: DividerModule()),
              if (MediaQuery.of(context).viewInsets.bottom == 0)
                Expanded(
                  flex: 2,
                  child: NavigatorLabel(
                    fontSize: 12,
                    route: '/resetPass',
                    text: S.of(context).auth_btn_res,
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
