//Singleton design pattern
class Assets {
  static final Assets _instance = Assets._internal();

  factory Assets() => _instance;

  Assets._internal();

  static const icLogo = "assets/images/logo.svg";
  static const icLogoP = "assets/images/logoP.png";
  static const icLogoT = "assets/images/logo_txt.svg";
  static const icLogoTxt = "assets/images/logo_txt2.svg";
  static const icmProfile = "assets/images/img_profile.svg";

  static const icAngle = "assets/images/angle_down.svg";
  static const icArrowL = "assets/images/arrow_left.svg";
  static const icArrowR = "assets/images/arrow_right.svg";
  static const icCalendar = "assets/images/calendar.svg";
  static const icCamera = "assets/images/camera.svg";
  static const icClockC = "assets/images/clock_clicked.svg";
  static const icClockU = "assets/images/clock_unclicked.svg";
  static const icClose = "assets/images/close.svg";
  static const icDatabase = "assets/images/database.svg";
  static const icHomeC = "assets/images/home_clicked.svg";
  static const icHomeU = "assets/images/home_unclicked.svg";
  static const icLogoutC = "assets/images/logout_clicked.svg";
  static const icLogoutU = "assets/images/logout_unclicked.svg";
  static const icPenC = "assets/images/pen_clicked.svg";
  static const icPrice = "assets/images/price.svg";
  static const icSeachC = "assets/images/search_clicked.svg";
  static const icSeachU = "assets/images/search_unclicked.svg";
  static const icTrashC = "assets/images/trash_clicked.svg";
  static const icTrashU = "assets/images/trash_unclicked.svg";
  static const icUserC = "assets/images/user_clicked.svg";
  static const icUserU = "assets/images/user_unclicked.svg";
  static const icUserS = "assets/images/user_stroke.svg";
  static const icUtensilsC = "assets/images/utensils_clicked.svg";
  static const icUtensilsU = "assets/images/utensils_unclicked.svg";
  static const icAdd = "assets/images/add.svg";
}
