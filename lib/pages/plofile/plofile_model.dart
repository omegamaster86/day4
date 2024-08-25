import '/auth/firebase_auth/auth_util.dart';
import '/components/side_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'plofile_widget.dart' show PlofileWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PlofileModel extends FlutterFlowModel<PlofileWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for side component.
  late SideModel sideModel;

  @override
  void initState(BuildContext context) {
    sideModel = createModel(context, () => SideModel());
  }

  @override
  void dispose() {
    sideModel.dispose();
  }
}
