// create singleton class to store app data
class AppData {
  AppData._privateConstructor();

  static final AppData instance = AppData._privateConstructor();
  String userName = '';
  String sex = '';
  String age = '';
  String height = '';
  String weight = '';
  String weight2MonthsAgo = '';
}
