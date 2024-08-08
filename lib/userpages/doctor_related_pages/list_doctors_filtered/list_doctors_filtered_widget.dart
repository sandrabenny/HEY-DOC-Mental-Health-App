import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/zz_c_o_m_p_o_n_e_n_t_s/filter_doctor_popup/filter_doctor_popup_widget.dart';
import 'dart:async';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'list_doctors_filtered_model.dart';
export 'list_doctors_filtered_model.dart';

class ListDoctorsFilteredWidget extends StatefulWidget {
  const ListDoctorsFilteredWidget({
    super.key,
    String? drLanguage,
    required this.date,
    required this.userprof,
    required this.username,
    String? filterNation,
    String? filterGender,
    String? filterSpec,
    String? filterExp,
  })  : drLanguage = drLanguage ?? 'all',
        filterNation = filterNation ?? 'all',
        filterGender = filterGender ?? 'all',
        filterSpec = filterSpec ?? 'all',
        filterExp = filterExp ?? 'all';

  final String drLanguage;
  final String? date;
  final String? userprof;
  final String? username;
  final String filterNation;
  final String filterGender;
  final String filterSpec;
  final String filterExp;

  @override
  State<ListDoctorsFilteredWidget> createState() =>
      _ListDoctorsFilteredWidgetState();
}

class _ListDoctorsFilteredWidgetState extends State<ListDoctorsFilteredWidget> {
  late ListDoctorsFilteredModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListDoctorsFilteredModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0x6F131619),
        appBar: AppBar(
          backgroundColor: const Color(0x10131619),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.chevron_left_sharp,
              color: FlutterFlowTheme.of(context).white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pushNamed('UserHomePage');
            },
          ),
          title: Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Text(
              'Book Appointments',
              style: FlutterFlowTheme.of(context).displaySmall.override(
                    fontFamily: 'Outfit',
                    color: FlutterFlowTheme.of(context).white,
                    fontSize: 24.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.normal,
                  ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
              child: FlutterFlowIconButton(
                borderColor: const Color(0x0042BEA5),
                borderRadius: 20.0,
                borderWidth: 1.0,
                buttonSize: 40.0,
                fillColor: const Color(0x00FFFFFF),
                icon: Icon(
                  Icons.filter_list,
                  color: FlutterFlowTheme.of(context).white,
                  size: 24.0,
                ),
                onPressed: () async {
                  await showModalBottomSheet(
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    enableDrag: false,
                    context: context,
                    builder: (context) {
                      return GestureDetector(
                        onTap: () => FocusScope.of(context).unfocus(),
                        child: Padding(
                          padding: MediaQuery.viewInsetsOf(context),
                          child: FilterDoctorPopupWidget(
                            date: widget.date!,
                            userprof: widget.userprof!,
                            username: widget.username!,
                          ),
                        ),
                      );
                    },
                  ).then((value) => safeSetState(() {}));
                },
              ),
            ),
          ],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 420.0,
                height: 807.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                      child: StreamBuilder<List<DoctorSignupRecord>>(
                        stream: queryDoctorSignupRecord(
                          queryBuilder: (doctorSignupRecord) =>
                              doctorSignupRecord
                                  .where(
                                    'doctor_gender',
                                    isEqualTo: widget.filterGender,
                                  )
                                  .where(
                                    'doctor_occupation',
                                    isEqualTo: widget.filterSpec,
                                  )
                                  .where(
                                    'doctor_nationality',
                                    isEqualTo: widget.filterNation,
                                  )
                                  .where(
                                    'language',
                                    isEqualTo: widget.drLanguage,
                                  )
                                  .where(
                                    'experience',
                                    isEqualTo: widget.filterExp,
                                  ),
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

                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            primary: false,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: listViewDoctorSignupRecordList.length,
                            itemBuilder: (context, listViewIndex) {
                              final listViewDoctorSignupRecord =
                                  listViewDoctorSignupRecordList[listViewIndex];
                              return Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 8.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    unawaited(
                                      () async {
                                        await ChatusersRecord.collection
                                            .doc()
                                            .set({
                                          ...createChatusersRecordData(
                                            senderMail: 'HeyDoc Team',
                                            notificationPushed:
                                                'A client viewed your profile. Get premium to see who viewed.',
                                            receiverMail:
                                                listViewDoctorSignupRecord
                                                    .doctorEmail,
                                          ),
                                          ...mapToFirestore(
                                            {
                                              'pushed_time':
                                                  FieldValue.serverTimestamp(),
                                            },
                                          ),
                                        });
                                      }(),
                                    );

                                    context.pushNamed(
                                      'ProfileDoctor',
                                      queryParameters: {
                                        'doctorname': serializeParam(
                                          listViewDoctorSignupRecord.doctorName,
                                          ParamType.String,
                                        ),
                                        'doctorspec': serializeParam(
                                          listViewDoctorSignupRecord
                                              .doctorOccupation,
                                          ParamType.String,
                                        ),
                                        'doctormail': serializeParam(
                                          listViewDoctorSignupRecord
                                              .doctorEmail,
                                          ParamType.String,
                                        ),
                                        'userprof': serializeParam(
                                          widget.userprof,
                                          ParamType.String,
                                        ),
                                        'doctorFee': serializeParam(
                                          listViewDoctorSignupRecord.price,
                                          ParamType.int,
                                        ),
                                        'username': serializeParam(
                                          widget.username,
                                          ParamType.String,
                                        ),
                                      }.withoutNulls,
                                    );
                                  },
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      boxShadow: const [
                                        BoxShadow(
                                          blurRadius: 3.0,
                                          color: Color(0x411D2429),
                                          offset: Offset(
                                            0.0,
                                            1.0,
                                          ),
                                          spreadRadius: 3.0,
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 1.0, 1.0, 1.0),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(6.0),
                                              child: Image.network(
                                                listViewDoctorSignupRecord
                                                    .profile,
                                                width: 80.0,
                                                height: 80.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(8.0, 8.0, 4.0, 0.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    listViewDoctorSignupRecord
                                                        .doctorName,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .headlineSmall
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                  ),
                                                  Text(
                                                    listViewDoctorSignupRecord
                                                        .doctorEmail,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .headlineSmall
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          fontSize: 15.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 4.0,
                                                                8.0, 0.0),
                                                    child: AutoSizeText(
                                                      listViewDoctorSignupRecord
                                                          .doctorOccupation
                                                          .maybeHandleOverflow(
                                                        maxChars: 70,
                                                        replacement: '…',
                                                      ),
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .labelMedium
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    'Exp: ',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                  Text(
                                                    listViewDoctorSignupRecord
                                                        .experience,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        },
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
  }
}
