import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'doctor_languages_model.dart';
export 'doctor_languages_model.dart';

class DoctorLanguagesWidget extends StatefulWidget {
  const DoctorLanguagesWidget({super.key});

  @override
  State<DoctorLanguagesWidget> createState() => _DoctorLanguagesWidgetState();
}

class _DoctorLanguagesWidgetState extends State<DoctorLanguagesWidget> {
  late DoctorLanguagesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DoctorLanguagesModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<DoctorSignupRecord>>(
      stream: queryDoctorSignupRecord(
        queryBuilder: (doctorSignupRecord) => doctorSignupRecord.where(
          'doctor_email',
          isEqualTo: currentUserEmail,
        ),
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        List<DoctorSignupRecord> doctorLanguagesDoctorSignupRecordList =
            snapshot.data!;
        final doctorLanguagesDoctorSignupRecord =
            doctorLanguagesDoctorSignupRecordList.isNotEmpty
                ? doctorLanguagesDoctorSignupRecordList.first
                : null;

        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: AppBar(
              backgroundColor: const Color(0xFF060000),
              automaticallyImplyLeading: false,
              leading: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 60.0,
                icon: const Icon(
                  Icons.chevron_left,
                  color: Colors.white,
                  size: 30.0,
                ),
                onPressed: () async {
                  context.pop();
                },
              ),
              title: Text(
                'Your Languages',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Outfit',
                      color: Colors.white,
                      fontSize: 22.0,
                      letterSpacing: 0.0,
                    ),
              ),
              actions: const [],
              centerTitle: true,
              elevation: 2.0,
            ),
            body: SafeArea(
              top: true,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: StreamBuilder<List<DoctorSignupRecord>>(
                      stream: queryDoctorSignupRecord(
                        queryBuilder: (doctorSignupRecord) =>
                            doctorSignupRecord.where(
                          'doctor_email',
                          isEqualTo: currentUserEmail,
                        ),
                        singleRecord: true,
                      ),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50.0,
                              height: 50.0,
                              child: CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  FlutterFlowTheme.of(context).primary,
                                ),
                              ),
                            ),
                          );
                        }
                        List<DoctorSignupRecord>
                            listViewDoctorSignupRecordList = snapshot.data!;
                        final listViewDoctorSignupRecord =
                            listViewDoctorSignupRecordList.isNotEmpty
                                ? listViewDoctorSignupRecordList.first
                                : null;

                        return Builder(
                          builder: (context) {
                            final languageList = listViewDoctorSignupRecord
                                    ?.filterLanguages
                                    .toList() ??
                                [];

                            return ListView.builder(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: languageList.length,
                              itemBuilder: (context, languageListIndex) {
                                final languageListItem =
                                    languageList[languageListIndex];
                                return Container(
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      width: 1.0,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          languageListItem,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Outfit',
                                                fontSize: 18.0,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FlutterFlowDropDown<String>(
                          controller: _model.dropDownremValueController ??=
                              FormFieldController<String>(
                            _model.dropDownremValue ??= '',
                          ),
                          options: List<String>.from(
                              doctorLanguagesDoctorSignupRecord!
                                  .filterLanguages),
                          optionLabels: doctorLanguagesDoctorSignupRecord
                              .filterLanguages,
                          onChanged: (val) async {
                            setState(() => _model.dropDownremValue = val);
                            await doctorLanguagesDoctorSignupRecord.reference
                                .update({
                              ...mapToFirestore(
                                {
                                  'filter_languages': FieldValue.arrayRemove(
                                      [_model.dropDownremValue]),
                                },
                              ),
                            });
                          },
                          width: 180.0,
                          height: 50.0,
                          searchHintTextStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context).white,
                                    letterSpacing: 0.0,
                                  ),
                          searchTextStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Outfit',
                                    letterSpacing: 0.0,
                                  ),
                          textStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Outfit',
                                    color: FlutterFlowTheme.of(context).white,
                                    letterSpacing: 0.0,
                                  ),
                          hintText: 'Remove Language',
                          searchHintText: 'Search...',
                          fillColor: const Color(0xFFB10A0A),
                          elevation: 2.0,
                          borderColor: const Color(0xFF060000),
                          borderWidth: 2.0,
                          borderRadius: 8.0,
                          margin: const EdgeInsets.all(0.0),
                          hidesUnderline: true,
                          isSearchable: true,
                          isMultiSelect: false,
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              30.0, 0.0, 0.0, 0.0),
                          child: FlutterFlowDropDown<String>(
                            controller: _model.dropDownValueController ??=
                                FormFieldController<String>(
                              _model.dropDownValue ??= '',
                            ),
                            options: List<String>.from([
                              'English',
                              'Malayalam',
                              'Hindi',
                              'Tamil',
                              'Kannada',
                              'Telugu'
                            ]),
                            optionLabels: const [
                              'English',
                              'Malayalam',
                              'Hindi',
                              'Tamil',
                              'Kannada',
                              'Telugu'
                            ],
                            onChanged: (val) async {
                              setState(() => _model.dropDownValue = val);
                              await doctorLanguagesDoctorSignupRecord.reference
                                  .update({
                                ...mapToFirestore(
                                  {
                                    'filter_languages': FieldValue.arrayUnion(
                                        [_model.dropDownValue]),
                                  },
                                ),
                              });
                            },
                            width: 180.0,
                            height: 50.0,
                            searchHintTextStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.of(context).white,
                                  letterSpacing: 0.0,
                                ),
                            searchTextStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Outfit',
                                  letterSpacing: 0.0,
                                ),
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Outfit',
                                  color: FlutterFlowTheme.of(context).white,
                                  letterSpacing: 0.0,
                                ),
                            hintText: 'Add Language',
                            searchHintText: 'Search...',
                            fillColor: const Color(0xFF060000),
                            elevation: 2.0,
                            borderColor: const Color(0xFF060000),
                            borderWidth: 2.0,
                            borderRadius: 8.0,
                            margin: const EdgeInsets.all(0.0),
                            hidesUnderline: true,
                            isSearchable: true,
                            isMultiSelect: false,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
