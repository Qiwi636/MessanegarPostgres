import 'package:flutter/material.dart';
import 'package:messeneger_postgres/generated/l10n.dart';
import 'package:messeneger_postgres/global/constant.dart';
import 'package:messeneger_postgres/global/theme/colors.dart';

class MainButton extends StatefulWidget {
  const MainButton({
    Key? key,
  }) : super(key: key);

  @override
  State<MainButton> createState() => _MainButtonState();
}

class _MainButtonState extends State<MainButton> {
  bool _isCheckBoxAccpet = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 4,
          child: CheckboxListTile(
            title: Text(S.of(context).reg_checkbox),
            value: _isCheckBoxAccpet,
            controlAffinity: ListTileControlAffinity.leading,
            checkColor: AppLightColor.kPrimaryColor,
            activeColor: AppLightColor.kSecondaryColor,
            onChanged: (bool? value) {
              setState(() {
                _isCheckBoxAccpet = !_isCheckBoxAccpet;
              });
            },
          ),
        ),
        // const SizedBox(
        //   height: 20,
        // ),
        Expanded(
            flex: 4,
            child: Container(
              // height: 100,
              alignment: Alignment.center,
              margin: const EdgeInsets.only(left: 15, right: 15),
              child: MaterialButton(
                key: const Key('reg'),
                height: double.infinity,
                child: Text(
                  S.of(context).reg_btn_input,
                  style: const TextStyle(color: Colors.white),
                ),
                elevation: 5,
                minWidth: double.infinity,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(AppConstant.kDefaultCircular),
                  ),
                ),
                color: AppLightColor.kPrimaryColor,
                onPressed: _isCheckBoxAccpet
                    ? () {
                        Navigator.pushNamed(context, '/login');
                      }
                    : null,
              ),
            )),
      ],
    );
  }
}
