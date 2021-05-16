import 'package:flutter/material.dart';

import 'package:disenos/widgets/background.dart';
import 'package:disenos/widgets/titles.dart';
import 'package:disenos/widgets/card_table.dart';
import 'package:disenos/widgets/bottom_navigation.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [Background(), _HomeBody()]),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [Titles(), CardTable()],
    ));
  }
}
