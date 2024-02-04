import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'note_dot_component_model.dart';
export 'note_dot_component_model.dart';

class NoteDotComponentWidget extends StatefulWidget {
  const NoteDotComponentWidget({
    super.key,
    Color? colour,
    required this.onCircleTapAction,
  }) : colour = colour ?? const Color(0xFFEE684A);

  final Color colour;
  final Future Function()? onCircleTapAction;

  @override
  State<NoteDotComponentWidget> createState() => _NoteDotComponentWidgetState();
}

class _NoteDotComponentWidgetState extends State<NoteDotComponentWidget> {
  late NoteDotComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NoteDotComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 24.0,
      height: 24.0,
      decoration: BoxDecoration(
        color: widget.colour,
        shape: BoxShape.circle,
      ),
    );
  }
}
