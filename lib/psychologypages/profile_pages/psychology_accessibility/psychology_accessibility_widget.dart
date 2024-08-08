import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'psychology_accessibility_model.dart';
export 'psychology_accessibility_model.dart';

class PsychologyAccessibilityWidget extends StatefulWidget {
  const PsychologyAccessibilityWidget({super.key});

  @override
  State<PsychologyAccessibilityWidget> createState() =>
      _PsychologyAccessibilityWidgetState();
}

class _PsychologyAccessibilityWidgetState
    extends State<PsychologyAccessibilityWidget> {
  late PsychologyAccessibilityModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PsychologyAccessibilityModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
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
          'Settings Page',
          style: FlutterFlowTheme.of(context).headlineSmall.override(
                fontFamily: 'Outfit',
                color: FlutterFlowTheme.of(context).white,
                letterSpacing: 0.0,
              ),
        ),
        actions: const [],
        centerTitle: true,
        elevation: 2.0,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          SwitchListTile.adaptive(
            value: _model.switchListTileValue ??= false,
            onChanged: (newValue) async {
              setState(() => _model.switchListTileValue = newValue);
              if (newValue) {
                setDarkModeSetting(context, ThemeMode.dark);
              } else {
                setDarkModeSetting(context, ThemeMode.light);
              }
            },
            title: Text(
              'Switch Dark/Light Mode',
              style: FlutterFlowTheme.of(context).bodyLarge.override(
                    fontFamily: 'Poppins',
                    fontSize: 18.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w800,
                    lineHeight: 2.0,
                  ),
            ),
            tileColor: FlutterFlowTheme.of(context).secondaryBackground,
            activeColor: FlutterFlowTheme.of(context).primaryText,
            activeTrackColor: FlutterFlowTheme.of(context).secondaryText,
            dense: false,
            controlAffinity: ListTileControlAffinity.trailing,
            contentPadding:
                const EdgeInsetsDirectional.fromSTEB(24.0, 12.0, 24.0, 12.0),
          ),
        ],
      ),
    );
  }
}
