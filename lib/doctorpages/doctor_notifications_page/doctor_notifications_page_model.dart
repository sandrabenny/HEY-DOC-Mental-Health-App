import '/flutter_flow/flutter_flow_util.dart';
import '/zz_c_o_m_p_o_n_e_n_t_s/doctor_nav_bar/doctor_nav_bar_notifications/doctor_nav_bar_notifications_widget.dart';
import 'doctor_notifications_page_widget.dart'
    show DoctorNotificationsPageWidget;
import 'package:flutter/material.dart';

class DoctorNotificationsPageModel
    extends FlutterFlowModel<DoctorNotificationsPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for doctorNavBarNotifications component.
  late DoctorNavBarNotificationsModel doctorNavBarNotificationsModel;

  @override
  void initState(BuildContext context) {
    doctorNavBarNotificationsModel =
        createModel(context, () => DoctorNavBarNotificationsModel());
  }

  @override
  void dispose() {
    doctorNavBarNotificationsModel.dispose();
  }
}
