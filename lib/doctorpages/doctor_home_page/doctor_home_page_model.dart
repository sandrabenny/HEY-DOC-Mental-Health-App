import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/zz_c_o_m_p_o_n_e_n_t_s/doctor_nav_bar/doctor_nav_bar_main/doctor_nav_bar_main_widget.dart';
import 'doctor_home_page_widget.dart' show DoctorHomePageWidget;
import 'package:flutter/material.dart';

class DoctorHomePageModel extends FlutterFlowModel<DoctorHomePageWidget> {
  ///  State fields for stateful widgets in this page.

  DateTime? datePicked;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;
  // Model for doctorNavBarMain component.
  late DoctorNavBarMainModel doctorNavBarMainModel;

  @override
  void initState(BuildContext context) {
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
    doctorNavBarMainModel = createModel(context, () => DoctorNavBarMainModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    doctorNavBarMainModel.dispose();
  }
}
