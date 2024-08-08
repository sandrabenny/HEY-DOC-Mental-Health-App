import '/flutter_flow/flutter_flow_util.dart';
import 'chat_page_users_widget.dart' show ChatPageUsersWidget;
import 'package:flutter/material.dart';

class ChatPageUsersModel extends FlutterFlowModel<ChatPageUsersWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for scrollColumn widget.
  ScrollController? scrollColumn;
  // State field(s) for ListView widget.
  ScrollController? listViewController;
  // State field(s) for Column widget.
  ScrollController? columnController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {
    scrollColumn = ScrollController();
    listViewController = ScrollController();
    columnController = ScrollController();
  }

  @override
  void dispose() {
    scrollColumn?.dispose();
    listViewController?.dispose();
    columnController?.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
