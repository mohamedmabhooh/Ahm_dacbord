import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';


class SharedPreferencesApp{
  SharedPreferencesApp._();
 static final SharedPreferencesApp _opj = SharedPreferencesApp._();
 factory SharedPreferencesApp(){
   return _opj;
 }
 late SharedPreferences _sharedPreferences;
 Future<void> initSharedPreferences() async{
   _sharedPreferences = await SharedPreferences.getInstance();
 }
 Future<void> SaveLang(String lang)async{
   await _sharedPreferences.setString('lang', lang);
 }
 String get Langu => _sharedPreferences.getString('lang') ?? 'ar';



}