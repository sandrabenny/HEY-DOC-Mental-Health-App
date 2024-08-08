import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'terms_of_service_model.dart';
export 'terms_of_service_model.dart';

class TermsOfServiceWidget extends StatefulWidget {
  const TermsOfServiceWidget({super.key});

  @override
  State<TermsOfServiceWidget> createState() => _TermsOfServiceWidgetState();
}

class _TermsOfServiceWidgetState extends State<TermsOfServiceWidget> {
  late TermsOfServiceModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TermsOfServiceModel());
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: const Color(0xFF060000),
          automaticallyImplyLeading: false,
          title: Text(
            'Terms of Service',
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
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Welcome to HeyDoc!\nBy using HeyDoc, you agree to the following terms:\n\n1. Account Registration and Usage\n\na. Normal Users: As a normal user, you may seek therapy or assistance from registered doctors and chat with psychology students for no additional cost. You agree to pay the designated fees for consultations with doctors.\n\nb. Doctors: As a registered doctor on HeyDoc, you agree to provide therapy and consultations to normal users. You will receive the respective fees as designated and agreed upon by HeyDoc.\n\nc. Psychology Students: As a psychology student, you can engage in chatting with normal users to assist them. Your performance, as indicated by user reviews and ratings, will contribute to earning certificates and badges for use in your resume or CV.\n\n2. Conduct and Responsibilities\n\na. Normal Users: You agree to use the HeyDoc platform responsibly and follow guidelines for respectful communication with doctors and psychology students.\n\nb. Doctors: You agree to provide professional and ethical therapy and consultations to normal users within your scope of practice.\n\nc. Psychology Students: You agree to assist normal users within your level of education and training. You will maintain professionalism and ethical standards during interactions.\n\n3. Badges and Certificates\n\na. Psychology Students: Your performance on the HeyDoc platform will contribute to the earning of badges and certificates. These credentials can be added to your resume or CV for professional opportunities.\n\n4. User Reviews and Ratings\n\na. Normal Users: You can provide ratings and reviews for doctors and psychology students based on your experience and interactions.\n\nb. Doctors and Psychology Students: Ratings and reviews from normal users will contribute to your profile reputation and the earning of badges or certificates (for psychology students).\n\n5. Privacy and Confidentiality\n\na. HeyDoc is committed to maintaining user privacy and confidentiality. All personal and health-related information will be kept secure and confidential.\n\n6. Termination and Dispute Resolution\n\na. HeyDoc reserves the right to terminate accounts that violate the terms and conditions. Disputes between users will be handled by HeyDoc in accordance with these terms.\n\n7. Amendments to Terms\n\na. HeyDoc reserves the right to amend the terms and conditions. Users will be notified of any significant changes.\n\nBy using HeyDoc, you agree to these terms. For any questions or concerns, please contact HeyDoc support.',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Outfit',
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            10.0, 30.0, 10.0, 150.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            context.pop();
                          },
                          text: 'Done',
                          options: FFButtonOptions(
                            height: 40.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: const Color(0xFF060000),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
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
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
