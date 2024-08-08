import '/flutter_flow/flutter_flow_util.dart';
import 'chat_page_reference_widget.dart' show ChatPageReferenceWidget;
import 'package:flutter/material.dart';

class ChatPageReferenceModel extends FlutterFlowModel<ChatPageReferenceWidget> {
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
