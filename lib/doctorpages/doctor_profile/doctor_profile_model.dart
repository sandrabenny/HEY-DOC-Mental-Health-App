import '/flutter_flow/flutter_flow_util.dart';
import '/zz_c_o_m_p_o_n_e_n_t_s/doctor_nav_bar/doctor_nav_bar_profile/doctor_nav_bar_profile_widget.dart';
import 'doctor_profile_widget.dart' show DoctorProfileWidget;
import 'package:flutter/material.dart';

class DoctorProfileModel extends FlutterFlowModel<DoctorProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for doctorNavBarProfile component.
  late DoctorNavBarProfileModel doctorNavBarProfileModel;

  @override
  void initState(BuildContext context) {
    doctorNavBarProfileModel =
        createModel(context, () => DoctorNavBarProfileModel());
  }

  @override
  void dispose() {
    doctorNavBarProfileModel.dispose();
  }
}
