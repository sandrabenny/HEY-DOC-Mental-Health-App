import '/flutter_flow/flutter_flow_util.dart';
import '/zz_c_o_m_p_o_n_e_n_t_s/user_nav_bar/user_nav_bar_bookings/user_nav_bar_bookings_widget.dart';
import 'bookings_page_widget.dart' show BookingsPageWidget;
import 'package:flutter/material.dart';

class BookingsPageModel extends FlutterFlowModel<BookingsPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for userNavBarBookings component.
  late UserNavBarBookingsModel userNavBarBookingsModel;

  @override
  void initState(BuildContext context) {
    userNavBarBookingsModel =
        createModel(context, () => UserNavBarBookingsModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    userNavBarBookingsModel.dispose();
  }
}
