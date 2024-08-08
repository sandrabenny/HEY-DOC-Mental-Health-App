import '/flutter_flow/flutter_flow_util.dart';
import '/zz_c_o_m_p_o_n_e_n_t_s/doctor_nav_bar/doctor_nav_bar_bookings/doctor_nav_bar_bookings_widget.dart';
import 'your_requests_widget.dart' show YourRequestsWidget;
import 'package:flutter/material.dart';

class YourRequestsModel extends FlutterFlowModel<YourRequestsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for doctorNavBarBookings component.
  late DoctorNavBarBookingsModel doctorNavBarBookingsModel;

  @override
  void initState(BuildContext context) {
    doctorNavBarBookingsModel =
        createModel(context, () => DoctorNavBarBookingsModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    doctorNavBarBookingsModel.dispose();
  }
}
