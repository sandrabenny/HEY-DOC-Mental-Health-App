import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'chat_page_psychology_model.dart';
export 'chat_page_psychology_model.dart';

class ChatPagePsychologyWidget extends StatefulWidget {
  const ChatPagePsychologyWidget({
    super.key,
    required this.userEmail,
    required this.userName,
    required this.userProfile,
  });

  final String? userEmail;
  final String? userName;
  final String? userProfile;

  @override
  State<ChatPagePsychologyWidget> createState() =>
      _ChatPagePsychologyWidgetState();
}

class _ChatPagePsychologyWidgetState extends State<ChatPagePsychologyWidget> {
  late ChatPagePsychologyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChatPagePsychologyModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<MessagingRecord>>(
      stream: queryMessagingRecord(
        queryBuilder: (messagingRecord) => messagingRecord
            .where(
              'user_b_mail',
              isEqualTo: currentUserEmail,
            )
            .where(
              'user_a_mail',
              isEqualTo: widget.userEmail,
            ),
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
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
        List<MessagingRecord> chatPagePsychologyMessagingRecordList =
            snapshot.data!;
        final chatPagePsychologyMessagingRecord =
            chatPagePsychologyMessagingRecordList.isNotEmpty
                ? chatPagePsychologyMessagingRecordList.first
                : null;

        return Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            backgroundColor: const Color(0xD4010000),
            automaticallyImplyLeading: false,
            leading: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30.0,
              borderWidth: 1.0,
              buttonSize: 46.0,
              icon: Icon(
                Icons.arrow_back_ios,
                color: FlutterFlowTheme.of(context).white,
                size: 24.0,
              ),
              onPressed: () async {
                context.pushNamed('AllChatsPsychology');
              },
            ),
            title: Stack(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 36.0,
                      height: 36.0,
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.network(
                        widget.userProfile!,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 0.0, 0.0),
                          child: Text(
                            widget.userName!,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Lexend Deca',
                                  color: FlutterFlowTheme.of(context).white,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 0.0, 0.0),
                          child: Text(
                            widget.userEmail!,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Outfit',
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBtnText,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            actions: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          'Navigate to add users page!',
                          style: TextStyle(
                            color: Color(0x00000000),
                          ),
                        ),
                        duration: Duration(milliseconds: 4000),
                      ),
                    );
                  },
                  child: Icon(
                    Icons.expand_more_outlined,
                    color: FlutterFlowTheme.of(context).white,
                    size: 24.0,
                  ),
                ),
              ),
            ],
            centerTitle: false,
            elevation: 2.0,
          ),
          body: SafeArea(
            top: true,
            child: Stack(
              children: [
                StreamBuilder<List<MessagingRecord>>(
                  stream: queryMessagingRecord(
                    queryBuilder: (messagingRecord) => messagingRecord
                        .where(
                          'user_b_mail',
                          isEqualTo: currentUserEmail,
                        )
                        .where(
                          'user_a_mail',
                          isEqualTo: widget.userEmail,
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
                    List<MessagingRecord> scrollableColumnMessagingRecordList =
                        snapshot.data!;
                    // Return an empty Container when the item does not exist.
                    if (snapshot.data!.isEmpty) {
                      return Container();
                    }
                    final scrollableColumnMessagingRecord =
                        scrollableColumnMessagingRecordList.isNotEmpty
                            ? scrollableColumnMessagingRecordList.first
                            : null;

                    return SingleChildScrollView(
                      controller: _model.scrollableColumn,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 100.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 10.0, 0.0),
                                child: SingleChildScrollView(
                                  controller: _model.columnController1,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      const Divider(
                                        thickness: 1.0,
                                        color: Color(0x00EEEEEE),
                                      ),
                                      ListView(
                                        padding: EdgeInsets.zero,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        controller: _model.listViewController,
                                        children: [
                                          StreamBuilder<
                                              List<MessagingDepthRecord>>(
                                            stream: queryMessagingDepthRecord(
                                              queryBuilder:
                                                  (messagingDepthRecord) =>
                                                      messagingDepthRecord
                                                          .orderBy(
                                                              'delivered_time'),
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    child:
                                                        CircularProgressIndicator(
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                              Color>(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<MessagingDepthRecord>
                                                  columnMessagingDepthRecordList =
                                                  snapshot.data!;

                                              return SingleChildScrollView(
                                                controller:
                                                    _model.columnController2,
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: List.generate(
                                                      columnMessagingDepthRecordList
                                                          .length,
                                                      (columnIndex) {
                                                    final columnMessagingDepthRecord =
                                                        columnMessagingDepthRecordList[
                                                            columnIndex];
                                                    return Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  16.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .end,
                                                        children: [
                                                          if (((columnMessagingDepthRecord
                                                                          .deliveredMail ==
                                                                      widget
                                                                          .userEmail) &&
                                                                  (columnMessagingDepthRecord
                                                                          .receivedMail ==
                                                                      currentUserEmail)) ||
                                                              ((columnMessagingDepthRecord
                                                                          .deliveredMail ==
                                                                      currentUserEmail) &&
                                                                  (columnMessagingDepthRecord
                                                                          .receivedMail ==
                                                                      widget
                                                                          .userEmail)))
                                                            Flexible(
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        valueOrDefault<
                                                                            double>(
                                                                          columnMessagingDepthRecord.deliveredMail == widget.userEmail
                                                                              ? -1.0
                                                                              : 1.0,
                                                                          0.0,
                                                                        ),
                                                                        0.0),
                                                                child: Material(
                                                                  color: Colors
                                                                      .transparent,
                                                                  elevation:
                                                                      5.0,
                                                                  shape:
                                                                      const RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .only(
                                                                      bottomLeft:
                                                                          Radius.circular(
                                                                              24.0),
                                                                      bottomRight:
                                                                          Radius.circular(
                                                                              24.0),
                                                                      topLeft: Radius
                                                                          .circular(
                                                                              3.0),
                                                                      topRight:
                                                                          Radius.circular(
                                                                              24.0),
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      Container(
                                                                    constraints:
                                                                        const BoxConstraints(
                                                                      minWidth:
                                                                          300.0,
                                                                      minHeight:
                                                                          50.0,
                                                                      maxWidth:
                                                                          300.0,
                                                                    ),
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: valueOrDefault<
                                                                          Color>(
                                                                        (columnMessagingDepthRecord.deliveredMail == widget.userEmail) &&
                                                                                (columnMessagingDepthRecord.receivedMail == currentUserEmail)
                                                                            ? const Color(0xD4010000)
                                                                            : FlutterFlowTheme.of(context).primaryBtnText,
                                                                        FlutterFlowTheme.of(context)
                                                                            .error,
                                                                      ),
                                                                      boxShadow: const [
                                                                        BoxShadow(
                                                                          blurRadius:
                                                                              4.0,
                                                                          color:
                                                                              Color(0x33000000),
                                                                          offset:
                                                                              Offset(
                                                                            0.0,
                                                                            2.0,
                                                                          ),
                                                                          spreadRadius:
                                                                              4.0,
                                                                        )
                                                                      ],
                                                                      borderRadius:
                                                                          const BorderRadius
                                                                              .only(
                                                                        bottomLeft:
                                                                            Radius.circular(24.0),
                                                                        bottomRight:
                                                                            Radius.circular(24.0),
                                                                        topLeft:
                                                                            Radius.circular(3.0),
                                                                        topRight:
                                                                            Radius.circular(24.0),
                                                                      ),
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding:
                                                                          const EdgeInsets.all(
                                                                              12.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Expanded(
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                              children: [
                                                                                Container(
                                                                                  width: 180.0,
                                                                                  decoration: BoxDecoration(
                                                                                    color: const Color(0x00FFFFFF),
                                                                                    border: Border.all(
                                                                                      color: Colors.transparent,
                                                                                    ),
                                                                                  ),
                                                                                  child: Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                    child: Text(
                                                                                      columnMessagingDepthRecord.messageSent.maybeHandleOverflow(maxChars: 250),
                                                                                      maxLines: 6,
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Outfit',
                                                                                            color: valueOrDefault<Color>(
                                                                                              (columnMessagingDepthRecord.deliveredMail == widget.userEmail) && (columnMessagingDepthRecord.receivedMail == currentUserEmail) ? FlutterFlowTheme.of(context).primaryBtnText : const Color(0xD4010000),
                                                                                              FlutterFlowTheme.of(context).success,
                                                                                            ),
                                                                                            fontSize: 16.0,
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Align(
                                                                                alignment: const AlignmentDirectional(1.0, 0.0),
                                                                                child: Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                                                                                  child: Text(
                                                                                    valueOrDefault<String>(
                                                                                      dateTimeFormat("M/d h:mm a", columnMessagingDepthRecord.deliveredTime),
                                                                                      'loading...',
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Outfit',
                                                                                          color: valueOrDefault<Color>(
                                                                                            (columnMessagingDepthRecord.deliveredMail == widget.userEmail) && (columnMessagingDepthRecord.receivedMail == currentUserEmail) ? FlutterFlowTheme.of(context).primaryBtnText : const Color(0xD4010000),
                                                                                            FlutterFlowTheme.of(context).success,
                                                                                          ),
                                                                                          fontSize: 12.0,
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                        ],
                                                      ),
                                                    );
                                                  }),
                                                ),
                                              );
                                            },
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, 1.0),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 4.0,
                            color: Color(0x33000000),
                            offset: Offset(
                              0.0,
                              2.0,
                            ),
                            spreadRadius: 4.0,
                          )
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            10.0, 0.0, 10.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    8.0, 0.0, 8.0, 0.0),
                                child: TextFormField(
                                  controller: _model.textController,
                                  focusNode: _model.textFieldFocusNode,
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Type here...',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          letterSpacing: 0.0,
                                        ),
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          letterSpacing: 0.0,
                                        ),
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    focusedErrorBorder: InputBorder.none,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Outfit',
                                        letterSpacing: 0.0,
                                      ),
                                  validator: _model.textControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 0.0,
                              child: VerticalDivider(
                                thickness: 1.0,
                                color: Color(0x00EEEEEE),
                              ),
                            ),
                            FlutterFlowIconButton(
                              borderColor: const Color(0x0042BEA5),
                              borderRadius: 20.0,
                              borderWidth: 1.0,
                              buttonSize: 40.0,
                              fillColor: const Color(0x00616161),
                              icon: const Icon(
                                Icons.send_sharp,
                                color: Color(0xFF1A3F6C),
                                size: 24.0,
                              ),
                              onPressed: () async {
                                await MessagingDepthRecord.collection
                                    .doc()
                                    .set({
                                  ...createMessagingDepthRecordData(
                                    deliveredMail: currentUserEmail,
                                    messageSent: _model.textController.text,
                                    receivedMail: widget.userEmail,
                                  ),
                                  ...mapToFirestore(
                                    {
                                      'delivered_time':
                                          FieldValue.serverTimestamp(),
                                    },
                                  ),
                                });

                                await chatPagePsychologyMessagingRecord!
                                    .reference
                                    .update({
                                  ...createMessagingRecordData(
                                    lastMessage: _model.textController.text,
                                  ),
                                  ...mapToFirestore(
                                    {
                                      'last_message_time':
                                          FieldValue.serverTimestamp(),
                                    },
                                  ),
                                });
                                setState(() {
                                  _model.textController?.clear();
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.95, 0.77),
                  child: FlutterFlowIconButton(
                    borderColor: const Color(0x0042BEA5),
                    borderRadius: 20.0,
                    borderWidth: 1.0,
                    buttonSize: 40.0,
                    fillColor: const Color(0x00616161),
                    icon: FaIcon(
                      FontAwesomeIcons.caretDown,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 24.0,
                    ),
                    onPressed: () async {
                      await _model.scrollableColumn?.animateTo(
                        _model.scrollableColumn!.position.maxScrollExtent,
                        duration: const Duration(milliseconds: 100),
                        curve: Curves.ease,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
