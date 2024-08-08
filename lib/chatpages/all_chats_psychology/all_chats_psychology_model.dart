import '/flutter_flow/flutter_flow_util.dart';
import '/zz_c_o_m_p_o_n_e_n_t_s/psychology_nav_bar/psych_nav_bar_chat/psych_nav_bar_chat_widget.dart';
import 'all_chats_psychology_widget.dart' show AllChatsPsychologyWidget;
import 'package:flutter/material.dart';

class AllChatsPsychologyModel
    extends FlutterFlowModel<AllChatsPsychologyWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for psychNavBarChat component.
  late PsychNavBarChatModel psychNavBarChatModel;

  @override
  void initState(BuildContext context) {
    psychNavBarChatModel = createModel(context, () => PsychNavBarChatModel());
  }

  @override
  void dispose() {
    psychNavBarChatModel.dispose();
  }
}
