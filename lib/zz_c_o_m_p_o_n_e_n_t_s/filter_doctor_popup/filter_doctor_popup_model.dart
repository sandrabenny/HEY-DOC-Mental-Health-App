import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'filter_doctor_popup_widget.dart' show FilterDoctorPopupWidget;
import 'package:flutter/material.dart';

class FilterDoctorPopupModel extends FlutterFlowModel<FilterDoctorPopupWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for language widget.
  String? languageValue;
  FormFieldController<String>? languageValueController;
  // State field(s) for nationality widget.
  String? nationalityValue;
  FormFieldController<String>? nationalityValueController;
  // State field(s) for gender widget.
  String? genderValue;
  FormFieldController<String>? genderValueController;
  // State field(s) for price widget.
  String? priceValue;
  FormFieldController<String>? priceValueController;
  // State field(s) for specialisation widget.
  String? specialisationValue;
  FormFieldController<String>? specialisationValueController;
  // State field(s) for experience widget.
  String? experienceValue;
  FormFieldController<String>? experienceValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
