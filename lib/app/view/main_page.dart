import 'package:flutter/material.dart';
import 'package:one_day_one_something/app/core/base/base_view.dart';
import 'package:one_day_one_something/app/view/common/system/odos_appbar.dart';
import 'package:one_day_one_something/app/view/common/system/odos_bottom_navigationbar.dart';
import 'package:one_day_one_something/app/view/common/system/odos_buttons.dart';
import 'package:one_day_one_something/app/view/common/system/odos_text_field.dart';
import 'package:one_day_one_something/app/view/common/track/odos_track_card.dart';
import 'package:one_day_one_something/app/view/theme/app_colors.dart';

import '../controller/main/main_controller.dart';

class MainPage extends BaseView<MainController> {
  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return const ODOSAppBar();
  }

  @override
  Widget body(BuildContext context) {
    return Column(
      children: const [
        ODOSConfirmButton(buttonColor: AppColors.black),
        ODOSTextField(),
        ODOSSubButton(),
        ODOSTrackCard(
          trackColor: Color(0xffD8E3FF),
          trackIcon: 'images/icon_bluebook.jpg',
          userProfileImage: 'images/image_user_profile_gorani.jpg',
          userName: '고라니',
        ),
      ],
    );
  }

  Widget? bottomNavigationBar() {
    return ODOSBottomNavigationBar(
        onNewMenuSelected: controller.onMenuSelected);
  }
}
