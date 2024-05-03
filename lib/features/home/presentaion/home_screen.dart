import 'package:clean_base/shared/common/widget/custom_app_bar.dart';
import 'package:clean_base/shared/resources/color_manager.dart';
import 'package:clean_base/shared/resources/manager_values.dart';
import 'package:clean_base/shared/resources/size_config.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.background,
      appBar: CustomAppBar(
        title: "Clean Base App",
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: getPadding(horizontal: AppPadding.p24, vertical: AppPadding.p16),
          child: Text("Hello Clean Code"),
        ),
      ),
    );
  }
}
