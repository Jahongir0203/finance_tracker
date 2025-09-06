import 'package:toastification/toastification.dart';
import '../../../../exports.dart';

showSuccessToast(String message) {
  toastification.show(
    showIcon: true,
    backgroundColor: AppColors.c3E4C59,
    closeButton: ToastCloseButton(showType: CloseButtonShowType.always),
    icon: Icon(Icons.check_circle_outline, color: AppColors.cFFFFFF),
    context: navigatorKey.currentContext,
    borderRadius: BorderRadius.circular(12),
    style: ToastificationStyle.fillColored,
    type: ToastificationType.success,

    title: Text(
      message,
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        fontFamily: AppLocaleKeys.fontSemiBold,
        color: AppColors.cFFFFFF,
      ),
    ),

    autoCloseDuration: const Duration(seconds: 5),
  );
}

showErrorToast(String? message) {
  toastification.show(
    showIcon: true,
    backgroundColor: AppColors.cEF4E4E,
    context: navigatorKey.currentContext,
    borderRadius: BorderRadius.circular(12),
    style: ToastificationStyle.fillColored,
    type: ToastificationType.error,
    icon: Icon(Icons.error_outline, color: AppColors.cFFFFFF),

    title: Text(
      message ?? AppLocaleKeys.unExpectedError,
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        fontFamily: AppLocaleKeys.fontSemiBold,
        color: AppColors.cFFFFFF,
      ),
    ),

    autoCloseDuration: const Duration(seconds: 5),
  );
}
