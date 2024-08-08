import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_psychology_widget.dart' show EditPsychologyWidget;
import 'package:flutter/material.dart';

class EditPsychologyModel extends FlutterFlowModel<EditPsychologyWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  // State field(s) for lname widget.
  FocusNode? lnameFocusNode;
  TextEditingController? lnameTextController;
  String? Function(BuildContext, String?)? lnameTextControllerValidator;
  // State field(s) for phone widget.
  FocusNode? phoneFocusNode;
  TextEditingController? phoneTextController;
  String? Function(BuildContext, String?)? phoneTextControllerValidator;
  DateTime? datePicked;
  // State field(s) for gender widget.
  String? genderValue;
  FormFieldController<String>? genderValueController;
  // State field(s) for language widget.
  String? languageValue;
  FormFieldController<String>? languageValueController;
  // State field(s) for course widget.
  String? courseValue;
  FormFieldController<String>? courseValueController;
  // State field(s) for nationality widget.
  String? nationalityValue;
  FormFieldController<String>? nationalityValueController;
  // State field(s) for university widget.
  FocusNode? universityFocusNode;
  TextEditingController? universityTextController;
  String? Function(BuildContext, String?)? universityTextControllerValidator;
  // State field(s) for bio widget.
  FocusNode? bioFocusNode;
  TextEditingController? bioTextController;
  String? Function(BuildContext, String?)? bioTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    lnameFocusNode?.dispose();
    lnameTextController?.dispose();

    phoneFocusNode?.dispose();
    phoneTextController?.dispose();

    universityFocusNode?.dispose();
    universityTextController?.dispose();

    bioFocusNode?.dispose();
    bioTextController?.dispose();
  }
}
