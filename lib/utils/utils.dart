// import 'package:intl/intl.dart';

// import '../services/local_notifications_service.dart';

// // Converts DateTime to specified String format 'dd/MM/yyyy'
// String convertDateTimeDisplay(DateTime dateTime) {
//   final DateFormat originalFormat = DateFormat('yyyy-MM-dd HH:mm:ss.SSS');
//   final DateFormat displayFormat = DateFormat('yyyy-MM-dd');
//   final DateTime displayDate = originalFormat.parse(dateTime.toString());
//   final String formattedDate = displayFormat.format(displayDate);
//   return formattedDate;
// }

// // Checks if entered date is user's birth date
// Future<void> checkBirthDate(String? date) async {
//   if (date == null) return;
//   DateTime selectedDate = DateTime.parse(date);
//   DateTime currentDate =
//       DateFormat('yyyy-MM-dd').parse(DateTime.now().toString());
//   bool isBirthday = selectedDate.month == currentDate.month &&
//       selectedDate.day == currentDate.day;
//   if (isBirthday) {
//     LocalNotificationService.display('Happy birthday to you! 🎂😊');
//   }
// }
