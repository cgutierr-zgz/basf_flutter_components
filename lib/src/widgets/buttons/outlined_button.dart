import 'package:basf_flutter_components/basf_flutter_components.dart';
import 'package:flutter/material.dart';

/// {@template basf_otulined_button}
/// A BasfButton with outline
/// {@endtemplate}
class BasfOutlinedButton extends BasfButton {
  /// {@macro basf_otulined_button}
  const BasfOutlinedButton({
    super.key,
    super.text,
    super.leadingIcon,
    super.trailingIcon,
    super.iconSize,
    super.child,
    super.onPressed,
    super.onLongPress,
    super.style,
    super.size,
    super.expanded,
    super.alignment,
    super.isLoading,
  });

  @override
  Widget build(BuildContext context) {
    if (alignment == null) {
      return _button(context);
    } else {
      return Align(
        alignment: alignment!,
        child: _button(context),
      );
    }
  }

  Widget _button(BuildContext context) {
    final c = child != null ? buttonChildContent() : buttonStandardContent();

    final content = isLoading
        ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              c,
              const SizedBox(
                height: 20,
                width: 20,
                child: CircularProgressIndicator(
                  color: Colors.white,
                ),
              ),
            ].joinWithSeparator(HorizontalSpacer.medium()),
          )
        : c;

    return OutlinedButton(
      onPressed: onPressed,
      onLongPress: onLongPress,
      style: getStyleWithAdjustments(
        context: context,
        buttonType: ButtonType.outlined,
      ),
      child: content,
    );
  }
}
