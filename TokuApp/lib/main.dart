import 'package:businesscard/screens/NumbersBage.dart';
import 'package:businesscard/screens/homepage.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const TOKUAPP());
}

class TOKUAPP extends StatelessWidget {
  const TOKUAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return HOMEPAGE();
  }
}
