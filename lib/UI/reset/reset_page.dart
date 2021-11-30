import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:messeneger_postgres/UI/global_widgets/decoration.dart';
import 'package:messeneger_postgres/UI/global_widgets/primary_button.dart';
import 'package:messeneger_postgres/generated/l10n.dart';
import 'package:messeneger_postgres/global/theme/colors.dart';
import 'package:messeneger_postgres/global/theme/text_style.dart';

class ResetWidget extends StatelessWidget {
  const ResetWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: AppDecoraions(
          blendMode: BlendMode.hardLight,
          color: Colors.white.withOpacity(0.4),
          image: 'assets/images/landscape_purple.jpg',
          child: Column(
            children: [
              const Spacer(),
              Expanded(
                flex: 1,
                child: Text(S.of(context).reset_hi,
                    style: AppTextStyle.h2.copyWith(
                      fontStyle: FontStyle.italic,
                    )),
              ),
              const Spacer(),
              Expanded(
                flex: 5,
                child: Container(
                  padding: const EdgeInsets.all(15),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      image: DecorationImage(
                          image: AssetImage('assets/images/ekiivibezdar.jpg'))),
                ),
              ),
              Expanded(flex: 5, child: Container()),
              Expanded(
                  flex: 2,
                  child: Container(
                    height: 100,
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(left: 15, right: 15),
                    child: PrimaryButton(
                      key: const Key('reset_log'),
                      height: double.infinity,
                      text: S.of(context).reset_btn_auth,
                      press: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      color: AppLightColor.kPrimaryColor,
                    ),
                  )),
              Expanded(flex: 1, child: Container()),
            ],
          ),
        ),
      ),
    );
  }
}
