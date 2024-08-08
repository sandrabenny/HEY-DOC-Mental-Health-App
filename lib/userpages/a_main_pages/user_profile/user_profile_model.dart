import '/flutter_flow/flutter_flow_util.dart';
import '/zz_c_o_m_p_o_n_e_n_t_s/user_nav_bar/user_nav_bar_profile/user_nav_bar_profile_widget.dart';
import 'user_profile_widget.dart' show UserProfileWidget;
import 'package:flutter/material.dart';

class UserProfileModel extends FlutterFlowModel<UserProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for userNavBarProfile component.
  late UserNavBarProfileModel userNavBarProfileModel;

  @override
  void initState(BuildContext context) {
    userNavBarProfileModel =
        createModel(context, () => UserNavBarProfileModel());
  }

  @override
  void dispose() {
    userNavBarProfileModel.dispose();
  }
}
