import 'package:flutter/material.dart';
import 'package:oreo/utilities/hex_color.dart';

class EmailsFormat {
  final List<EmailFormat> emails;

  EmailsFormat({this.emails: const []});

  factory EmailsFormat.fromJson(List<dynamic> res) {
    List<EmailFormat> emaillist = [];
    for (var json in res) {
      emaillist.add(EmailFormat(
          sender: json['sender'],
          reciever: json['reciever'],
          date: json['date'],
          message: json['message'],
          cc: json['cc']));
    }
    return EmailsFormat(emails: emaillist);
  }
}

class EmailFormat {
  final String sender;
  final List<dynamic> reciever;
  final String date;
  final String message;
  final List<dynamic> cc;

  EmailFormat(
      {required this.sender,
      required this.reciever,
      required this.date,
      required this.message,
      required this.cc});
}

class Email extends StatefulWidget {
  final EmailFormat? email;

  Email({Key? key, required this.email}) : super(key: key);

  @override
  _EmailState createState() => _EmailState();
}

class _EmailState extends State<Email> {
  bool previewMode = false;
  int animationDuration = 250;

  void togglePreview() {
    setState(() {
      previewMode = previewMode == true ? false : true;
    });
  }

  Widget createWidgets() {
    if (previewMode == true) {
      return Theme(
          data: ThemeData(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
          child: ElevatedButton(
            child: Container(),
            onPressed: () => togglePreview(),
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(HexColor('#33000000')),
                elevation: MaterialStateProperty.all<double>(0),
                shape: MaterialStateProperty.all(RoundedRectangleBorder())),
          ));
    } else {
      return Theme(
          data: ThemeData(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
          child: ElevatedButton(
            child: Container(),
            onPressed: () => togglePreview(),
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(HexColor('#33ffffff')),
                elevation: MaterialStateProperty.all<double>(0),
                shape: MaterialStateProperty.all(RoundedRectangleBorder())),
          ));
    }
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: previewMode == true ? 200 : 40,
      duration: Duration(milliseconds: this.animationDuration),
      child: createWidgets(),
    );
  }
}
