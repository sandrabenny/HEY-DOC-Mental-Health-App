import '/flutter_flow/flutter_flow_util.dart';
import '/zz_c_o_m_p_o_n_e_n_t_s/user_nav_bar/user_nav_bar_notifications/user_nav_bar_notifications_widget.dart';
import 'user_notifications_page_widget.dart' show UserNotificationsPageWidget;
import 'package:flutter/material.dart';

class UserNotificationsPageModel
    extends FlutterFlowModel<UserNotificationsPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for userNavBarNotifications component.
  late UserNavBarNotificationsModel userNavBarNotificationsModel;

  @override
  void initState(BuildContext context) {
    userNavBarNotificationsModel =
        createModel(context, () => UserNavBarNotificationsModel());
  }

  @override
  void dispose() {
    userNavBarNotificationsModel.dispose();
  }
}
