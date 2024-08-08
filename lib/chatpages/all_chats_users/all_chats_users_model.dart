import '/flutter_flow/flutter_flow_util.dart';
import '/zz_c_o_m_p_o_n_e_n_t_s/user_nav_bar/user_nav_bar_chat/user_nav_bar_chat_widget.dart';
import 'all_chats_users_widget.dart' show AllChatsUsersWidget;
import 'package:flutter/material.dart';

class AllChatsUsersModel extends FlutterFlowModel<AllChatsUsersWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for userNavBarChat component.
  late UserNavBarChatModel userNavBarChatModel;

  @override
  void initState(BuildContext context) {
    userNavBarChatModel = createModel(context, () => UserNavBarChatModel());
  }

  @override
  void dispose() {
    userNavBarChatModel.dispose();
  }
}
