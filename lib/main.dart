import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:wan_flutter/common/global/app_theme.dart';

import 'package:wan_flutter/common/utils/http_util.dart';
import 'package:wan_flutter/common/utils/shared_preferences_util.dart';
import 'package:wan_flutter/pages/main/index.dart';
import 'package:wan_flutter/common/global/auth.dart';

void main() {
  // 确保Flutter框架初始化完成
  WidgetsFlutterBinding.ensureInitialized();

  Get.put(AuthController());
  Get.put(AppThemeController());

  SharedPreferencesUtil.init().then((value) {
    var cookie = SharedPreferencesUtil().getStringList('cookie');
    WanHttpUtil.setHeadersCookies(cookie);
  });

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var appTheme = Get.find<AppThemeController>();
    return Obx(() => GetMaterialApp(
        title: 'wan_flutter',
        debugShowCheckedModeBanner: false,
        builder: FlutterSmartDialog.init(),
        theme: appTheme.currentTheme.value,
        home: const MainPageView()));
  }
}
