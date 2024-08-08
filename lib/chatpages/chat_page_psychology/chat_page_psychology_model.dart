import '/flutter_flow/flutter_flow_util.dart';
import 'chat_page_psychology_widget.dart' show ChatPagePsychologyWidget;
import 'package:flutter/material.dart';

class ChatPagePsychologyModel
    extends FlutterFlowModel<ChatPagePsychologyWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for scrollableColumn widget.
  ScrollController? scrollableColumn;
  // State field(s) for Column widget.
  ScrollController? columnController1;
  // State field(s) for ListView widget.
  ScrollController? listViewController;
  // State field(s) for Column widget.
  ScrollController? columnController2;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {
    scrollableColumn = ScrollController();
    columnController1 = ScrollController();
    listViewController = ScrollController();
    columnController2 = ScrollController();
  }

  @override
  void dispose() {
    scrollableColumn?.dispose();
    columnController1?.dispose();
    listViewController?.dispose();
    columnController2?.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
