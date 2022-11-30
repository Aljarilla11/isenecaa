import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:iseneca/models/users_responses.dart';

class UsersProvider extends ChangeNotifier {

  Future<List<UsersResponses>> getDataFromGoogleSheet() async {
    Response data = await http.get(
      Uri.parse(
          'https://script.googleusercontent.com/a/macros/g.educaand.es/echo?user_content_key=b8z17NG_wwI9ZzspiNDKvB1Fs-Z4JH579mBOy-iV5aB7GmpPTk7lFRvIKcreR5QbGUgCue1TZoKpIbJxb4oS0ar5YJMGPotROJmA1Yb3SEsKFZqtv3DaNYcMrmhZHmUMi80zadyHLKAUKE7B4g-fT_vZNoUciZTzS4chwneYR2snv-CytdJFVGXLL4BPqv5dBCPWonZwWMnZNqQt3YcV0maAYB7BV5AkY10ymEbs5EOnH-uUm0E5wnLghtZm7CGlptLPVaXz5CLzwIdf1f3q_AMnpl-F9eiuB1wYtwrrsRDO0AvD70TjrlA3ACAyGazT8th9ZcH0hK9NJ4z6VesWM2_5K8-FJqNjtySVcAuT6MJcdfmId3nO9w&lib=MPJn_C5D3pbMKmu2Gk4k0CTJhjU0cXiUu'),
    );
    dynamic jsonAppData = convert.jsonDecode(data.body);
    final List<UsersResponses> listaUsuarios = [];
    for (dynamic data in jsonAppData) {
      UsersResponses user = UsersResponses(
          id: data['id'], usuario: data['usuario'], clave: data['clave']);
      listaUsuarios.add(user);
    }
    return listaUsuarios;
  }


}
