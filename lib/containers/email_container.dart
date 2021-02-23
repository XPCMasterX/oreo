import 'package:flutter/material.dart';
import 'package:oreo/containers/items/email.dart';
import 'package:oreo/utilities/hex_color.dart';
import 'package:oreo/config/config.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class EmailContainer extends StatefulWidget {
  @override
  _EmailContainerState createState() => _EmailContainerState();
}

class _EmailContainerState extends State<EmailContainer> {
  Future<EmailsFormat>? emails;

  Future<EmailsFormat> getEmails() async {
    final response = await http.get('http://localhost:3000/emails');

    if (response.statusCode == 200) {
      return EmailsFormat.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Oreo Mail: Failed to load Emails');
    }
  }

  List<Widget> createWidgets(EmailsFormat? emails) {
    List<Widget> emailWidget = [];
    emails?.emails.forEach((element) {
      emailWidget.add(Container(
          color: HexColor(config.colors['emailContainer'] ?? '#33000000'),
          child: Container(
            child: Email(
              email: element,
              key: UniqueKey(),
            ),
          )));
    });
    return emailWidget;
  }

  @override
  void initState() {
    super.initState();
    emails = getEmails();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder<EmailsFormat>(
        future: emails,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: createWidgets(snapshot.data),
            );
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }
          return Text(
              'If this takes too long, please check your internet connection (or maybe it is very slow)');
        },
      ),
    );
  }

  /*@override
  Widget build(BuildContext context) {
    
  }*/

}
