import '/flutter_flow/flutter_flow_util.dart';
import '/zz_c_o_m_p_o_n_e_n_t_s/psychology_nav_bar/psych_nav_bar_profile/psych_nav_bar_profile_widget.dart';
import 'psychology_profile_widget.dart' show PsychologyProfileWidget;
import 'package:flutter/material.dart';

class PsychologyProfileModel extends FlutterFlowModel<PsychologyProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for psychNavBarProfile component.
  late PsychNavBarProfileModel psychNavBarProfileModel;

  @override
  void initState(BuildContext context) {
    psychNavBarProfileModel =
        createModel(context, () => PsychNavBarProfileModel());
  }

  @override
  void dispose() {
    psychNavBarProfileModel.dispose();
  }
}
