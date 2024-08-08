import '/flutter_flow/flutter_flow_util.dart';
import '/zz_c_o_m_p_o_n_e_n_t_s/psychology_nav_bar/psych_nav_bar_main/psych_nav_bar_main_widget.dart';
import 'psychology_home_widget.dart' show PsychologyHomeWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class PsychologyHomeModel extends FlutterFlowModel<PsychologyHomeWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Carousel widget.
  CarouselController? carouselController;
  int carouselCurrentIndex = 1;

  // Model for psychNavBarMain component.
  late PsychNavBarMainModel psychNavBarMainModel;

  @override
  void initState(BuildContext context) {
    psychNavBarMainModel = createModel(context, () => PsychNavBarMainModel());
  }

  @override
  void dispose() {
    psychNavBarMainModel.dispose();
  }
}
