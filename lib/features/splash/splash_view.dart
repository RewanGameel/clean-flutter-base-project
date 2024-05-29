import 'dart:async';
import '../../app/network/token.dart';

import '../../app/app_prefs.dart';
import '../../app/constants.dart';
import '../../app/service_locator.dart';

import '../../app/singlton.dart';
import '../../shared/common/widget/custom_image_widget.dart';
import '../../shared/resources/assets_manager.dart';
import '../../shared/resources/manager_values.dart';
import 'package:flutter/material.dart';

import '../../shared/resources/color_manager.dart';
import '../../shared/resources/constants_manager.dart';
import '../../shared/resources/routes_manager.dart';

class SplashView extends StatefulWidget {
  SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  Timer? _timer;

  _startDelay() {
    _timer = Timer(const Duration(seconds: AppConstants.splashDelay), _goNext);
  }

  _goNext() async {
    Navigator.pushReplacementNamed(
      context,
      Routes.homeRoute,
    );
  }

  @override
  void initState() {
    initAuthModule();
    _startDelay();
    super.initState();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: Center(
        child: CustomSvgImage(
          imageName: Assets.assetsSvgInfo,
          width: AppSize.s80,
          height: AppSize.s80,
        ),
      ),
    );
  }
}
