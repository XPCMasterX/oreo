//@dart=2.9
//  _       __     _ __  __                ____
// | |     / /____(_) /_/ /____  ____     / __ )__  __
// | | /| / / ___/ / __/ __/ _ \/ __ \   / __  / / / /
// | |/ |/ / /  / / /_/ /_/  __/ / / /  / /_/ / /_/ /
// |__/|__/_/  /_/\__/\__/\___/_/ /_/  /_____/\__, /
//  _    __                __    _ __  __    /_____
// | |  / /___ ___________/ /_  (_) /_/ /_     /   |
// | | / / __ `/ ___/ ___/ __ \/ / __/ __ \   / /| |
// | |/ / /_/ / /  (__  ) / / / / /_/ / / /  / ___ |
// |___/\__,_/_/  /____/_/ /_/_/\__/_/ /_/  /_/  |_|

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:oreo/oreo.dart';

void main() => runApp(MaterialApp(
      home: Oreo(),
      theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xff262626),
          fontFamily: 'Roboto'),
      title: 'Oreo Mail',
    ));
