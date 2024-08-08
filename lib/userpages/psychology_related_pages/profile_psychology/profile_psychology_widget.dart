import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'profile_psychology_model.dart';
export 'profile_psychology_model.dart';

class ProfilePsychologyWidget extends StatefulWidget {
  const ProfilePsychologyWidget({
    super.key,
    required this.pStudMail,
    required this.pStudName,
    required this.pStudProf,
    required this.userName,
    required this.userProf,
  });

  final String? pStudMail;
  final String? pStudName;
  final String? pStudProf;
  final String? userName;
  final String? userProf;

  @override
  State<ProfilePsychologyWidget> createState() =>
      _ProfilePsychologyWidgetState();
}

class _ProfilePsychologyWidgetState extends State<ProfilePsychologyWidget> {
  late ProfilePsychologyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfilePsychologyModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<PsychProfileDetailsRecord>>(
      stream: queryPsychProfileDetailsRecord(
        queryBuilder: (psychProfileDetailsRecord) =>
            psychProfileDetailsRecord.where(
          'stud_email',
          isEqualTo: widget.pStudMail,
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
        List<PsychProfileDetailsRecord>
            profilePsychologyPsychProfileDetailsRecordList = snapshot.data!;
        final profilePsychologyPsychProfileDetailsRecord =
            profilePsychologyPsychProfileDetailsRecordList.isNotEmpty
                ? profilePsychologyPsychProfileDetailsRecordList.first
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
                icon: Icon(
                  Icons.chevron_left_sharp,
                  color: FlutterFlowTheme.of(context).white,
                  size: 30.0,
                ),
                onPressed: () async {
                  context.pop();
                },
              ),
              title: Text(
                'Student Details',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Outfit',
                      color: FlutterFlowTheme.of(context).white,
                      letterSpacing: 0.0,
                    ),
              ),
              actions: const [],
              centerTitle: true,
              elevation: 0.0,
            ),
            body: SafeArea(
              top: true,
              child: Stack(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.network(
                                widget.pStudProf!,
                                width: double.infinity,
                                height: 240.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  8.0, 0.0, 8.0, 8.0),
                              child: StreamBuilder<List<SignupDetailsRecord>>(
                                stream: querySignupDetailsRecord(
                                  queryBuilder: (signupDetailsRecord) =>
                                      signupDetailsRecord.where(
                                    'email',
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
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                  List<SignupDetailsRecord>
                                      containerSignupDetailsRecordList =
                                      snapshot.data!;
                                  final containerSignupDetailsRecord =
                                      containerSignupDetailsRecordList
                                              .isNotEmpty
                                          ? containerSignupDetailsRecordList
                                              .first
                                          : null;

                                  return Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      boxShadow: const [
                                        BoxShadow(
                                          color: Color(0x33000000),
                                          offset: Offset(
                                            0.0,
                                            2.0,
                                          ),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(8.0),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: SingleChildScrollView(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              profilePsychologyPsychProfileDetailsRecord!
                                                  .studCourse,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 8.0, 0.0, 8.0),
                                              child: Text(
                                                widget.pStudName!,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineMedium
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 8.0, 0.0, 8.0),
                                              child: Text(
                                                widget.pStudMail!,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineMedium
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                            Text(
                                              profilePsychologyPsychProfileDetailsRecord
                                                  .studUniversity,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 12.0, 0.0, 12.0),
                                              child: Container(
                                                width: double.infinity,
                                                height: 50.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    width: 2.0,
                                                  ),
                                                ),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Expanded(
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        12.0,
                                                                        0.0,
                                                                        12.0),
                                                            child: Icon(
                                                              Icons
                                                                  .email_outlined,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryText,
                                                              size: 24.0,
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8.0,
                                                                        0.0,
                                                                        12.0,
                                                                        0.0),
                                                            child: Text(
                                                              'E-mail',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Outfit',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Text(
                                                'Student Bio',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                              ),
                                            ),
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 8.0, 0.0, 12.0),
                                                child: Text(
                                                  profilePsychologyPsychProfileDetailsRecord
                                                      .studBio,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  8.0, 0.0, 8.0, 8.0),
                              child: StreamBuilder<List<MessagingRecord>>(
                                stream: queryMessagingRecord(
                                  queryBuilder: (messagingRecord) =>
                                      messagingRecord
                                          .where(
                                            'user_a_mail',
                                            isEqualTo: currentUserEmail,
                                          )
                                          .where(
                                            'user_b_mail',
                                            isEqualTo: widget.pStudMail,
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
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                  List<MessagingRecord>
                                      containerMessagingRecordList =
                                      snapshot.data!;
                                  final containerMessagingRecord =
                                      containerMessagingRecordList.isNotEmpty
                                          ? containerMessagingRecordList.first
                                          : null;

                                  return Container(
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 2.0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          if ((currentUserEmail ==
                                                  containerMessagingRecord
                                                      ?.userAMail) &&
                                              (widget.pStudMail ==
                                                  containerMessagingRecord
                                                      ?.userBMail)) {
                                            context.pushNamed(
                                              'ChatPageUsers',
                                              queryParameters: {
                                                'pStudMail': serializeParam(
                                                  widget.pStudMail,
                                                  ParamType.String,
                                                ),
                                                'pStudName': serializeParam(
                                                  widget.pStudName,
                                                  ParamType.String,
                                                ),
                                                'pStudProf': serializeParam(
                                                  widget.pStudProf,
                                                  ParamType.String,
                                                ),
                                              }.withoutNulls,
                                            );
                                          } else {
                                            await MessagingRecord.collection
                                                .doc()
                                                .set(createMessagingRecordData(
                                                  userAMail: currentUserEmail,
                                                  userBMail: widget.pStudMail,
                                                  userAName: widget.userName,
                                                  userBName: widget.pStudName,
                                                  userAProfile:
                                                      widget.userProf,
                                                  userBProfile:
                                                      widget.pStudProf,
                                                ));

                                            context.pushNamed(
                                              'ChatPageUsers',
                                              queryParameters: {
                                                'pStudMail': serializeParam(
                                                  widget.pStudMail,
                                                  ParamType.String,
                                                ),
                                                'pStudName': serializeParam(
                                                  widget.pStudName,
                                                  ParamType.String,
                                                ),
                                                'pStudProf': serializeParam(
                                                  widget.pStudProf,
                                                  ParamType.String,
                                                ),
                                              }.withoutNulls,
                                            );
                                          }
                                        },
                                        text: 'CHAT',
                                        icon: const Icon(
                                          Icons.chat,
                                          size: 15.0,
                                        ),
                                        options: FFButtonOptions(
                                          width: double.infinity,
                                          height: 48.0,
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          iconPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: const Color(0xFF060000),
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Outfit',
                                                    color: Colors.white,
                                                    letterSpacing: 0.0,
                                                  ),
                                          borderSide: const BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            StreamBuilder<List<FavouriteStudentsRecord>>(
                              stream: queryFavouriteStudentsRecord(
                                queryBuilder: (favouriteStudentsRecord) =>
                                    favouriteStudentsRecord
                                        .where(
                                          'user_mail',
                                          isEqualTo: currentUserEmail,
                                        )
                                        .where(
                                          'student_mail',
                                          isEqualTo: widget.pStudMail,
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
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                          FlutterFlowTheme.of(context).primary,
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                List<FavouriteStudentsRecord>
                                    rowFavouriteStudentsRecordList =
                                    snapshot.data!;
                                final rowFavouriteStudentsRecord =
                                    rowFavouriteStudentsRecordList.isNotEmpty
                                        ? rowFavouriteStudentsRecordList.first
                                        : null;

                                return Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            10.0, 0.0, 10.0, 12.0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            if ((widget.pStudMail ==
                                                    rowFavouriteStudentsRecord
                                                        ?.studentMail) &&
                                                (currentUserEmail ==
                                                    rowFavouriteStudentsRecord
                                                        ?.userMail)) {
                                              await rowFavouriteStudentsRecord!
                                                  .reference
                                                  .delete();
                                            } else {
                                              await FavouriteStudentsRecord
                                                  .collection
                                                  .doc()
                                                  .set(
                                                      createFavouriteStudentsRecordData(
                                                    userMail: currentUserEmail,
                                                    userName: widget.userName,
                                                    userProfile:
                                                        widget.userProf,
                                                    studentMail:
                                                        widget.pStudMail,
                                                    studentName:
                                                        widget.pStudName,
                                                    studentProfile:
                                                        widget.pStudProf,
                                                  ));
                                            }
                                          },
                                          text: (widget.pStudMail ==
                                                      rowFavouriteStudentsRecord
                                                          ?.studentMail) &&
                                                  (currentUserEmail ==
                                                      rowFavouriteStudentsRecord
                                                          ?.userMail)
                                              ? 'Unfavourite Student'
                                              : 'Favourite Student',
                                          icon: Icon(
                                            Icons.favorite_border,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            size: 15.0,
                                          ),
                                          options: FFButtonOptions(
                                            width: double.infinity,
                                            height: 48.0,
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            iconPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: (widget.pStudMail ==
                                                        rowFavouriteStudentsRecord
                                                            ?.studentMail) &&
                                                    (currentUserEmail ==
                                                        rowFavouriteStudentsRecord
                                                            ?.userMail)
                                                ? const Color(0xFFB00046)
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyLarge
                                                    .override(
                                                      fontFamily: 'Poppins',
                                                      letterSpacing: 0.0,
                                                    ),
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            ),
                          ],
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
