// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Добро пожаловать!`
  String get auth_hi {
    return Intl.message(
      'Добро пожаловать!',
      name: 'auth_hi',
      desc: '',
      args: [],
    );
  }

  /// `Пароль`
  String get auth_tip_pass {
    return Intl.message(
      'Пароль',
      name: 'auth_tip_pass',
      desc: '',
      args: [],
    );
  }

  /// `Почта`
  String get auth_tip_log {
    return Intl.message(
      'Почта',
      name: 'auth_tip_log',
      desc: '',
      args: [],
    );
  }

  /// `Войти!`
  String get auth_btn_input {
    return Intl.message(
      'Войти!',
      name: 'auth_btn_input',
      desc: '',
      args: [],
    );
  }

  /// `Забыли пароль?!`
  String get auth_btn_res {
    return Intl.message(
      'Забыли пароль?!',
      name: 'auth_btn_res',
      desc: '',
      args: [],
    );
  }

  /// `Нет аккаунта? Давай зарегестрируйся!`
  String get auth_btb_reg {
    return Intl.message(
      'Нет аккаунта? Давай зарегестрируйся!',
      name: 'auth_btb_reg',
      desc: '',
      args: [],
    );
  }

  /// `Или`
  String get auth_but_or {
    return Intl.message(
      'Или',
      name: 'auth_but_or',
      desc: '',
      args: [],
    );
  }

  /// `Регистрация!`
  String get reg_hi {
    return Intl.message(
      'Регистрация!',
      name: 'reg_hi',
      desc: '',
      args: [],
    );
  }

  /// `Пароль`
  String get reg_tip_pass {
    return Intl.message(
      'Пароль',
      name: 'reg_tip_pass',
      desc: '',
      args: [],
    );
  }

  /// `Повторите пароль`
  String get reg_tip_pass2 {
    return Intl.message(
      'Повторите пароль',
      name: 'reg_tip_pass2',
      desc: '',
      args: [],
    );
  }

  /// `Почта`
  String get reg_tip_log {
    return Intl.message(
      'Почта',
      name: 'reg_tip_log',
      desc: '',
      args: [],
    );
  }

  /// `Я согласен с политикой России.`
  String get reg_checkbox {
    return Intl.message(
      'Я согласен с политикой России.',
      name: 'reg_checkbox',
      desc: '',
      args: [],
    );
  }

  /// `Зарегистрироваться`
  String get reg_btn_input {
    return Intl.message(
      'Зарегистрироваться',
      name: 'reg_btn_input',
      desc: '',
      args: [],
    );
  }

  /// `Уже зарегистрирован? Войти в аккаунт.`
  String get reg_btb_auth {
    return Intl.message(
      'Уже зарегистрирован? Войти в аккаунт.',
      name: 'reg_btb_auth',
      desc: '',
      args: [],
    );
  }

  /// `Или`
  String get reg_but_or {
    return Intl.message(
      'Или',
      name: 'reg_but_or',
      desc: '',
      args: [],
    );
  }

  /// `Молодец!`
  String get reset_hi {
    return Intl.message(
      'Молодец!',
      name: 'reset_hi',
      desc: '',
      args: [],
    );
  }

  /// `Вернуться на главное меню`
  String get reset_btn_auth {
    return Intl.message(
      'Вернуться на главное меню',
      name: 'reset_btn_auth',
      desc: '',
      args: [],
    );
  }

  /// `Контакты`
  String get home_tab1 {
    return Intl.message(
      'Контакты',
      name: 'home_tab1',
      desc: '',
      args: [],
    );
  }

  /// `Чаты`
  String get home_tab2 {
    return Intl.message(
      'Чаты',
      name: 'home_tab2',
      desc: '',
      args: [],
    );
  }

  /// `Профиль`
  String get home_tab3 {
    return Intl.message(
      'Профиль',
      name: 'home_tab3',
      desc: '',
      args: [],
    );
  }

  /// `Оформление`
  String get profile_btn1 {
    return Intl.message(
      'Оформление',
      name: 'profile_btn1',
      desc: '',
      args: [],
    );
  }

  /// `Лицензия`
  String get profile_btn2 {
    return Intl.message(
      'Лицензия',
      name: 'profile_btn2',
      desc: '',
      args: [],
    );
  }

  /// `О приложении`
  String get profile_btn3 {
    return Intl.message(
      'О приложении',
      name: 'profile_btn3',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ru'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
