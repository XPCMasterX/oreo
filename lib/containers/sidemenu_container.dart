import 'package:flutter/material.dart';
import 'package:oreo/utilities/hex_color.dart';
import 'package:oreo/config/config.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: HexColor(config.colors['sidemenu'] ?? '#33000000'),
    );
  }
}
