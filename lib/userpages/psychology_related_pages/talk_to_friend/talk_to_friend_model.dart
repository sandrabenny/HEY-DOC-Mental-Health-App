import '/flutter_flow/flutter_flow_util.dart';
import 'talk_to_friend_widget.dart' show TalkToFriendWidget;
import 'package:flutter/material.dart';

class TalkToFriendModel extends FlutterFlowModel<TalkToFriendWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
