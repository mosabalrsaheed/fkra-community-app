import 'package:applimode_app/custom_settings.dart';
import 'package:applimode_app/src/constants/constants.dart';
import 'package:flutter/material.dart';

double getMaxWidth(
  BuildContext context, {
  required PostsListType postsListType,
  double breakPoint = pcWidthBreakpoint,
  double padding = defaultHorizontalPadding,
}) {
  final mediaWidth = MediaQuery.sizeOf(context).width;
  final isLandscape =
      MediaQuery.of(context).orientation == Orientation.landscape;
  final extraPadding = isLandscape ? 160.0 : 0;

  if (breakPoint == 0 || postsListType == PostsListType.page) {
    final maxWidth = mediaWidth - (2 * padding) - extraPadding;
    return maxWidth;
  }

  if (postsListType == PostsListType.round) {
    final maxWidth = mediaWidth > breakPoint
        ? breakPoint - (2 * roundCardPadding) - (2 * padding) - extraPadding
        : mediaWidth - (2 * roundCardPadding) - (2 * padding) - extraPadding;
    return maxWidth;
  }

  final maxWidth = mediaWidth > breakPoint
      ? (mediaWidth - 2 * padding - extraPadding) / 2
      : mediaWidth - 2 * padding - extraPadding;
  return maxWidth;
}
