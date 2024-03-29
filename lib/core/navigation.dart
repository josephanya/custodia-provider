import 'package:custodia_provider/ui/core/constants/colors.dart';
import 'package:custodia_provider/ui/widgets/utils/custom_flashbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:overlay_support/overlay_support.dart';

final navigationProvider = Provider((ref) => Navigation());

class Navigation {
  final navigatorKey = GlobalKey<NavigatorState>();

  Future<T?>? push<T extends Object?>(Route<T> route) {
    return navigatorKey.currentState?.push(route);
  }

  Future<T?>? pushNamed<T extends Object?>(
    String route, {
    Object? arguments,
  }) {
    return navigatorKey.currentState?.pushNamed(
      route,
      arguments: arguments,
    );
  }

  Future<T?>? pushReplacement<T extends Object?, TO extends Object?>(
    Route<T> route, {
    TO? result,
  }) {
    return navigatorKey.currentState?.pushReplacement(
      route,
      result: result,
    );
  }

  Future<T?>? pushReplacementNamed<T extends Object?, TO extends Object?>(
    String route, {
    TO? result,
    Object? arguments,
  }) {
    return navigatorKey.currentState?.pushReplacementNamed(
      route,
      result: result,
      arguments: arguments,
    );
  }

  Future<T?>? pushAndRemoveUntil<T extends Object?>(
    Route<T> route,
    bool Function(Route<dynamic>) predicate,
  ) {
    return navigatorKey.currentState?.pushAndRemoveUntil(
      route,
      predicate,
    );
  }

  Future<T?>? pushNamedAndRemoveUntil<T extends Object?>(
    String route,
    bool Function(Route<dynamic>) predicate, {
    Object? arguments,
  }) {
    return navigatorKey.currentState?.pushNamedAndRemoveUntil(
      route,
      predicate,
      arguments: arguments,
    );
  }

  void popUntil<T extends Object?>(bool Function(Route<dynamic>) predicate) {
    navigatorKey.currentState?.popUntil(predicate);
  }

  void pop<T extends Object?>([T? result]) {
    navigatorKey.currentState?.pop(result);
  }

  Future<T?>? popAndPushNamed<T extends Object?>(String route,
      {Object? result, Object? arguments}) {
    return navigatorKey.currentState
        ?.popAndPushNamed(route, result: result, arguments: arguments);
  }

  void showCustomSnackbar({required String message}) {
    showOverlayNotification(
      (context) {
        return Flashbar(
          color: AppColors.navyBlue,
          message: message,
        );
      },
      duration: const Duration(milliseconds: 4000),
    );
  }

  void showCustomMessageSnackbar({required String sender, message}) {
    showOverlayNotification(
      (context) {
        return MessageFlashbar(
          color: AppColors.navyBlue,
          sender: sender,
          message: message,
        );
      },
      duration: const Duration(milliseconds: 8000),
    );
  }

  void showErrorSnackbar({required String message}) {
    showOverlayNotification(
      (context) {
        return Flashbar(
          color: AppColors.red,
          message: message,
        );
      },
      duration: const Duration(milliseconds: 4000),
    );
  }
}
