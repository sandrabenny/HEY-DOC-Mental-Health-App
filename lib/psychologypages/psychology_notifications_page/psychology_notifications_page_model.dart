import '/flutter_flow/flutter_flow_util.dart';
import '/zz_c_o_m_p_o_n_e_n_t_s/psychology_nav_bar/psych_nav_bar_notifications/psych_nav_bar_notifications_widget.dart';
import 'psychology_notifications_page_widget.dart'
    show PsychologyNotificationsPageWidget;
import 'package:flutter/material.dart';

class PsychologyNotificationsPageModel
    extends FlutterFlowModel<PsychologyNotificationsPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for psychNavBarNotifications component.
  late PsychNavBarNotificationsModel psychNavBarNotificationsModel;

  @override
  void initState(BuildContext context) {
    psychNavBarNotificationsModel =
        createModel(context, () => PsychNavBarNotificationsModel());
  }

  @override
  void dispose() {
    psychNavBarNotificationsModel.dispose();
  }
}
