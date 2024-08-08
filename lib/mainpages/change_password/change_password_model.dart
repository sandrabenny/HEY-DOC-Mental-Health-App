import '/flutter_flow/flutter_flow_util.dart';
import 'change_password_widget.dart' show ChangePasswordWidget;
import 'package:flutter/material.dart';

class ChangePasswordModel extends FlutterFlowModel<ChangePasswordWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for oldp widget.
  FocusNode? oldpFocusNode;
  TextEditingController? oldpTextController;
  late bool oldpVisibility;
  String? Function(BuildContext, String?)? oldpTextControllerValidator;
  // State field(s) for newp widget.
  FocusNode? newpFocusNode;
  TextEditingController? newpTextController;
  late bool newpVisibility;
  String? Function(BuildContext, String?)? newpTextControllerValidator;

  @override
  void initState(BuildContext context) {
    oldpVisibility = false;
    newpVisibility = false;
  }

  @override
  void dispose() {
    oldpFocusNode?.dispose();
    oldpTextController?.dispose();

    newpFocusNode?.dispose();
    newpTextController?.dispose();
  }
}
