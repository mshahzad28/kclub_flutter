class Constants {
  Constants._();
  static const Duration connectTimeout = Duration(seconds: 30);
  static const Duration receiveTimeout = Duration(seconds: 30);
  static const timeFormatter = 'hh:mm a'; // formats in AM/PM
  static const dateFormatter = 'dd MMMM, yyyy'; // formats in 12 August, 2023
  static const String dateTimeFormat = 'yyyy-mm-dd hh:mm';
}
