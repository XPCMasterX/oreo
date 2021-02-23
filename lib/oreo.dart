import 'dart:ui';
import 'package:oreo/config/config.dart';
import 'package:flutter/material.dart';
import 'package:oreo/containers/email_container.dart';
import 'package:oreo/containers/sidemenu_container.dart';
import 'package:oreo/containers/topbar_container.dart';

class Oreo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        ConstrainedBox(
          constraints: const BoxConstraints.expand(),
          child: Image(image: AssetImage(config.wallpaper), fit: BoxFit.cover),
        ),
        Container(
          child: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(
                  sigmaX: config.blur['sigmaX'] ?? 50,
                  sigmaY: config.blur['sigmaY'] ?? 50),
              child: Container(
                child: Column(
                  children: <Widget>[
                    Expanded(child: TopBar()),
                    Expanded(
                      flex: 5,
                      child: Row(
                        children: <Widget>[
                          Expanded(child: SideMenu()),
                          Expanded(
                            child: EmailContainer(),
                            flex: 4,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    ));
  }
}
