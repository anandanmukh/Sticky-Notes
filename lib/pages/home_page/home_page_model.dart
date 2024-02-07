import '/components/new_note_selector_component/new_note_selector_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for newNoteSelectorComponent component.
  late NewNoteSelectorComponentModel newNoteSelectorComponentModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    newNoteSelectorComponentModel =
        createModel(context, () => NewNoteSelectorComponentModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    newNoteSelectorComponentModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
