import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'filter_doctor_popup_model.dart';
export 'filter_doctor_popup_model.dart';

class FilterDoctorPopupWidget extends StatefulWidget {
  const FilterDoctorPopupWidget({
    super.key,
    required this.date,
    required this.userprof,
    required this.username,
  });

  final String? date;
  final String? userprof;
  final String? username;

  @override
  State<FilterDoctorPopupWidget> createState() =>
      _FilterDoctorPopupWidgetState();
}

class _FilterDoctorPopupWidgetState extends State<FilterDoctorPopupWidget> {
  late FilterDoctorPopupModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FilterDoctorPopupModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          const Divider(
            thickness: 1.0,
            color: Color(0x00616161),
          ),
          Text(
            'Filter',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Outfit',
                  letterSpacing: 0.0,
                ),
          ),
          const Divider(
            thickness: 1.0,
            color: Color(0x00616161),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlutterFlowDropDown<String>(
                controller: _model.languageValueController ??=
                    FormFieldController<String>(
                  _model.languageValue ??= 'English',
                ),
                options: List<String>.from([
                  'English',
                  'Hindi',
                  'Malayalam',
                  'Tamil',
                  'Telugu',
                  'Kannada',
                  'German',
                  'French',
                  'Italian'
                ]),
                optionLabels: const [
                  'English',
                  'Hindi',
                  'Malayalam',
                  'Tamil',
                  'Telugu',
                  'Kannada',
                  'German',
                  'French',
                  'Italian'
                ],
                onChanged: (val) => setState(() => _model.languageValue = val),
                width: 191.0,
                height: 50.0,
                searchHintTextStyle:
                    FlutterFlowTheme.of(context).labelMedium.override(
                          fontFamily: 'Poppins',
                          letterSpacing: 0.0,
                        ),
                searchTextStyle:
                    FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Outfit',
                          letterSpacing: 0.0,
                        ),
                textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Outfit',
                      letterSpacing: 0.0,
                    ),
                hintText: 'Language',
                searchHintText: '',
                icon: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 24.0,
                ),
                fillColor: FlutterFlowTheme.of(context).primaryBackground,
                elevation: 2.0,
                borderColor: FlutterFlowTheme.of(context).primaryBackground,
                borderWidth: 2.0,
                borderRadius: 8.0,
                margin: const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                hidesUnderline: true,
                isSearchable: true,
                isMultiSelect: false,
              ),
              const VerticalDivider(
                thickness: 1.0,
                color: Color(0x00EEEEEE),
              ),
              FlutterFlowDropDown<String>(
                controller: _model.nationalityValueController ??=
                    FormFieldController<String>(
                  _model.nationalityValue ??= 'India',
                ),
                options: List<String>.from([
                  'India',
                  'China',
                  'England',
                  'United Kingdom',
                  'Brazil',
                  'Germany',
                  'France',
                  'Italy'
                ]),
                optionLabels: const [
                  'India',
                  'China',
                  'England',
                  'United Kingdom',
                  'Brazil',
                  'Germany',
                  'France',
                  'Italy'
                ],
                onChanged: (val) =>
                    setState(() => _model.nationalityValue = val),
                width: 191.0,
                height: 50.0,
                searchHintTextStyle:
                    FlutterFlowTheme.of(context).labelMedium.override(
                          fontFamily: 'Poppins',
                          letterSpacing: 0.0,
                        ),
                searchTextStyle:
                    FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Outfit',
                          letterSpacing: 0.0,
                        ),
                textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Outfit',
                      letterSpacing: 0.0,
                    ),
                hintText: 'Nationality',
                searchHintText: '',
                icon: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 24.0,
                ),
                fillColor: FlutterFlowTheme.of(context).primaryBackground,
                elevation: 2.0,
                borderColor: FlutterFlowTheme.of(context).primaryBackground,
                borderWidth: 2.0,
                borderRadius: 8.0,
                margin: const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                hidesUnderline: true,
                isSearchable: true,
                isMultiSelect: false,
              ),
            ],
          ),
          const Divider(
            thickness: 1.0,
            color: Color(0x00616161),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlutterFlowDropDown<String>(
                controller: _model.genderValueController ??=
                    FormFieldController<String>(
                  _model.genderValue ??= 'Male',
                ),
                options: List<String>.from(['Male', 'Female', 'Others']),
                optionLabels: const ['Male', 'Female', 'Others'],
                onChanged: (val) => setState(() => _model.genderValue = val),
                width: 191.0,
                height: 50.0,
                searchHintTextStyle:
                    FlutterFlowTheme.of(context).labelMedium.override(
                          fontFamily: 'Poppins',
                          letterSpacing: 0.0,
                        ),
                searchTextStyle:
                    FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Outfit',
                          letterSpacing: 0.0,
                        ),
                textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Outfit',
                      letterSpacing: 0.0,
                    ),
                hintText: 'Gender',
                searchHintText: '',
                icon: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 24.0,
                ),
                fillColor: FlutterFlowTheme.of(context).primaryBackground,
                elevation: 2.0,
                borderColor: FlutterFlowTheme.of(context).primaryBackground,
                borderWidth: 2.0,
                borderRadius: 8.0,
                margin: const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                hidesUnderline: true,
                isSearchable: true,
                isMultiSelect: false,
              ),
              const VerticalDivider(
                thickness: 1.0,
                color: Color(0x00EEEEEE),
              ),
              FlutterFlowDropDown<String>(
                controller: _model.priceValueController ??=
                    FormFieldController<String>(
                  _model.priceValue ??= '',
                ),
                options: List<String>.from([
                  '0-500',
                  '500-1000',
                  '1000-1500',
                  '1500-2000',
                  '2000-3000',
                  '3000-5000',
                  '5000 and above'
                ]),
                optionLabels: const [
                  '0-500',
                  '500-1000',
                  '1000-1500',
                  '1500-2000',
                  '2000-3000',
                  '3000-5000',
                  '5000 and above'
                ],
                onChanged: (val) => setState(() => _model.priceValue = val),
                width: 191.0,
                height: 50.0,
                searchHintTextStyle:
                    FlutterFlowTheme.of(context).labelMedium.override(
                          fontFamily: 'Poppins',
                          letterSpacing: 0.0,
                        ),
                searchTextStyle:
                    FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Outfit',
                          letterSpacing: 0.0,
                        ),
                textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Outfit',
                      letterSpacing: 0.0,
                    ),
                hintText: 'Price per Session',
                searchHintText: '',
                icon: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 24.0,
                ),
                fillColor: FlutterFlowTheme.of(context).primaryBackground,
                elevation: 2.0,
                borderColor: FlutterFlowTheme.of(context).primaryBackground,
                borderWidth: 2.0,
                borderRadius: 8.0,
                margin: const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                hidesUnderline: true,
                isSearchable: true,
                isMultiSelect: false,
              ),
            ],
          ),
          const Divider(
            thickness: 1.0,
            color: Color(0x00616161),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlutterFlowDropDown<String>(
                controller: _model.specialisationValueController ??=
                    FormFieldController<String>(
                  _model.specialisationValue ??= 'Clinical Psychologist',
                ),
                options: List<String>.from(
                    ['Clinical Psychologist', 'Speech Therapist', 'Others']),
                optionLabels: const [
                  'Clinical Psychologist',
                  'Speech Therapist',
                  'Others'
                ],
                onChanged: (val) =>
                    setState(() => _model.specialisationValue = val),
                width: 191.0,
                height: 50.0,
                searchHintTextStyle:
                    FlutterFlowTheme.of(context).labelMedium.override(
                          fontFamily: 'Poppins',
                          letterSpacing: 0.0,
                        ),
                searchTextStyle:
                    FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Outfit',
                          letterSpacing: 0.0,
                        ),
                textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Outfit',
                      letterSpacing: 0.0,
                    ),
                hintText: 'Specialisation',
                searchHintText: '',
                icon: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 24.0,
                ),
                fillColor: FlutterFlowTheme.of(context).primaryBackground,
                elevation: 2.0,
                borderColor: FlutterFlowTheme.of(context).primaryBackground,
                borderWidth: 2.0,
                borderRadius: 8.0,
                margin: const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                hidesUnderline: true,
                isSearchable: true,
                isMultiSelect: false,
              ),
              const VerticalDivider(
                thickness: 1.0,
                color: Color(0x00EEEEEE),
              ),
              FlutterFlowDropDown<String>(
                controller: _model.experienceValueController ??=
                    FormFieldController<String>(
                  _model.experienceValue ??= '5 - 10 years',
                ),
                options: List<String>.from([
                  '0 to 1 year',
                  '1 - 2 years',
                  '2 - 5 years',
                  '5 - 10 years',
                  '10 years and above'
                ]),
                optionLabels: const [
                  '0 - 1 year',
                  '1 - 2 years',
                  '2 - 5 years',
                  '5 - 10 years',
                  '10 years and above'
                ],
                onChanged: (val) =>
                    setState(() => _model.experienceValue = val),
                width: 191.0,
                height: 50.0,
                searchHintTextStyle:
                    FlutterFlowTheme.of(context).labelMedium.override(
                          fontFamily: 'Poppins',
                          letterSpacing: 0.0,
                        ),
                searchTextStyle:
                    FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Outfit',
                          letterSpacing: 0.0,
                        ),
                textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Outfit',
                      letterSpacing: 0.0,
                    ),
                hintText: 'Years of Experience',
                searchHintText: '',
                icon: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 24.0,
                ),
                fillColor: FlutterFlowTheme.of(context).primaryBackground,
                elevation: 2.0,
                borderColor: FlutterFlowTheme.of(context).primaryBackground,
                borderWidth: 2.0,
                borderRadius: 8.0,
                margin: const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                hidesUnderline: true,
                isSearchable: true,
                isMultiSelect: false,
              ),
            ],
          ),
          const Divider(
            thickness: 1.0,
            color: Color(0x00616161),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed(
                      'ListDoctors',
                      queryParameters: {
                        'date': serializeParam(
                          widget.date,
                          ParamType.String,
                        ),
                        'userprof': serializeParam(
                          widget.userprof,
                          ParamType.String,
                        ),
                        'username': serializeParam(
                          widget.username,
                          ParamType.String,
                        ),
                      }.withoutNulls,
                    );
                  },
                  text: 'Remove Filters',
                  options: FFButtonOptions(
                    height: 40.0,
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: const Color(0xD4010000),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Outfit',
                          color: Colors.white,
                          letterSpacing: 0.0,
                        ),
                    elevation: 3.0,
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed(
                      'ListDoctorsFiltered',
                      queryParameters: {
                        'drLanguage': serializeParam(
                          _model.languageValue,
                          ParamType.String,
                        ),
                        'date': serializeParam(
                          widget.date,
                          ParamType.String,
                        ),
                        'userprof': serializeParam(
                          widget.userprof,
                          ParamType.String,
                        ),
                        'username': serializeParam(
                          widget.username,
                          ParamType.String,
                        ),
                        'filterNation': serializeParam(
                          _model.nationalityValue,
                          ParamType.String,
                        ),
                        'filterGender': serializeParam(
                          _model.genderValue,
                          ParamType.String,
                        ),
                        'filterSpec': serializeParam(
                          _model.specialisationValue,
                          ParamType.String,
                        ),
                        'filterExp': serializeParam(
                          _model.experienceValue,
                          ParamType.String,
                        ),
                      }.withoutNulls,
                    );
                  },
                  text: 'Save Changes',
                  options: FFButtonOptions(
                    height: 40.0,
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: const Color(0xD4010000),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Outfit',
                          color: Colors.white,
                          letterSpacing: 0.0,
                        ),
                    elevation: 3.0,
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
