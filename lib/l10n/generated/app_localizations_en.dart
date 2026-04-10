// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get english => 'English';

  @override
  String get arabic => 'Arabic';

  @override
  String get spanish => 'Spanish';

  @override
  String get frensh => 'Frensh';

  @override
  String get german => 'German';

  @override
  String get turkish => 'Turkish';

  @override
  String get ok => 'Ok';

  @override
  String get back => 'Back';

  @override
  String get openNavigationMenu => 'Open navigation menu';

  @override
  String get error => 'Error';

  @override
  String get pleaseChoose => 'Please Choose';

  @override
  String get camera => 'Camera';

  @override
  String get gallery => 'Gallery';

  @override
  String get share => 'Share';

  @override
  String get errorHappenedWhileTryingToShareTheImage =>
      'An error happened while trying to share the image.';

  @override
  String get saveToGallery => 'Save to gallery';

  @override
  String get imageSavedToGallery => 'Image saved to gallery';

  @override
  String get errorHappenedWhileSavingTheImage =>
      'An error happened while saving the image to the gallery.';

  @override
  String get attention => 'Attention';

  @override
  String get doYouWantToExit => 'Do you want to exit?';

  @override
  String get exit => ' Exit ';

  @override
  String get cancel => 'Cancel';

  @override
  String get copyCode => 'Copy code';

  @override
  String get copid => 'Copid!';

  @override
  String get km => 'km';

  @override
  String get meter => 'meter';

  @override
  String get linkIsNotvalid => 'Link is Not valid';

  @override
  String get youAreCurrentlyOffline => 'You are currently offline';

  @override
  String get linkDoesnotPointToImage => 'Link doesn\'t point to an image';

  @override
  String get passwordMustBeAtLeastWithDetails =>
      'Password must be at least 8 characters long, with at least 5 alphabet, 2 numbers, and 1 special character like ';

  @override
  String get fiveAlphabetCharacters => '5 alphabet characters';

  @override
  String get twoNumbers => '2 numbers';

  @override
  String get oneSpecialCharachtersLike => '1 special charachters like ';

  @override
  String get passwordMustContainAtLeast => 'Password must contain at least';

  @override
  String get comma => ', ';

  @override
  String get and => 'And ';

  @override
  String get today => 'Today';

  @override
  String get yesterday => 'Yesterday';

  @override
  String get at => 'at';

  @override
  String get justNow => 'just now';

  @override
  String durationAgo(String durationInString) {
    return '$durationInString ago';
  }

  @override
  String durationFromNow(String durationInString) {
    return '$durationInString from now';
  }

  @override
  String get second => 'second';

  @override
  String get twoSeconds => '2 seconds';

  @override
  String secondsBeteenThreeAndTen(int numberOfSeconds) {
    return '$numberOfSeconds seconds';
  }

  @override
  String secondsMoreThanTen(int numberOfSeconds) {
    return '$numberOfSeconds seconds';
  }

  @override
  String get minute => 'minute';

  @override
  String get twoMinutes => '2 minutes';

  @override
  String minutesBeteenThreeAndTen(int numberOfMinutes) {
    return '$numberOfMinutes minutes';
  }

  @override
  String minutesMoreThanTen(int numberOfMinutes) {
    return '$numberOfMinutes minutes';
  }

  @override
  String get hour => 'hour';

  @override
  String get twoHours => '2 hours';

  @override
  String hoursBeteenThreeAndTen(int numberOfHours) {
    return '$numberOfHours hours';
  }

  @override
  String hoursMoreThanTen(int numberOfHours) {
    return '$numberOfHours hours';
  }

  @override
  String get day => 'day';

  @override
  String get twoDays => '2 days';

  @override
  String daysBeteenThreeAndTen(int numberOfDays) {
    return '$numberOfDays days';
  }

  @override
  String daysMoreThanTen(int numberOfDays) {
    return '$numberOfDays days';
  }

  @override
  String get week => 'week';

  @override
  String get twoWeeks => '2 weeks';

  @override
  String weeksBeteenThreeAndTen(int numberOfWeeks) {
    return '$numberOfWeeks weeks';
  }

  @override
  String weeksMoreThanTen(int numberOfWeeks) {
    return '$numberOfWeeks weeks';
  }

  @override
  String get month => 'month';

  @override
  String get twoMonths => '2 months';

  @override
  String monthsBeteenThreeAndTen(int numberOfMonths) {
    return '$numberOfMonths months';
  }

  @override
  String monthsMoreThanTen(int numberOfMonths) {
    return '$numberOfMonths months';
  }

  @override
  String get year => 'year';

  @override
  String get twoYears => '2 years';

  @override
  String yearsBeteenThreeAndTen(int numberOfYears) {
    return '$numberOfYears years';
  }

  @override
  String yearsMoreThanTen(int numberOfYears) {
    return '$numberOfYears years';
  }

  @override
  String get decade => 'decade';

  @override
  String get twoDecades => '2 decades';

  @override
  String decadesBeteenThreeAndTen(int numberOfDecades) {
    return '$numberOfDecades decades';
  }

  @override
  String decadesMoreThanTen(int numberOfDecades) {
    return '$numberOfDecades decades';
  }

  @override
  String get home => 'Home';

  @override
  String get profile => 'Profile';

  @override
  String get mealsSettings => 'Meals Settings';

  @override
  String get generalSettings => 'General Settings';

  @override
  String get settings => 'Settings';

  @override
  String get shareTheApp => 'Share';

  @override
  String get shareTheAppText =>
      '           AI MealMingle App\nDownload from the Play Store\n\nhttps://play.google.com/store/apps/details?id=com.salahalshafey.aimealmingle';

  @override
  String get about => 'About';

  @override
  String get logout => 'Log out';

  @override
  String get signIn => 'Sign In';

  @override
  String get adjustYourMealsSelection => 'Adjust your Meals Selection';

  @override
  String get glutenfree => 'Gluten-Free';

  @override
  String get lactosefree => 'Lactose-Free';

  @override
  String get vegetarian => 'Vegetarian';

  @override
  String get vegan => 'Vegan';

  @override
  String displayMealTypeMeals(String mealType) {
    return 'Display $mealType Meals';
  }

  @override
  String get displayArabicLanguage => 'Display Arabic Language';

  @override
  String get displayDarkTheme => 'Display Dark Theme';

  @override
  String get color => 'Color';

  @override
  String get resetToDefault => 'Reset to default';

  @override
  String get theme => 'Theme';

  @override
  String get themeMode => 'Theme Mode';

  @override
  String get systemDefault => 'System default';

  @override
  String get light => 'Light';

  @override
  String get dark => 'Dark';

  @override
  String get language => 'Language';

  @override
  String get notifications => 'Notifications';

  @override
  String get changeLanguage => 'Change Language';

  @override
  String get changeToLightMode => 'Change to Light Mode';

  @override
  String get changeToDarkMode => 'Change to Dark Mode';

  @override
  String get defaultWord => 'default';

  @override
  String get allLanguages => 'All Languages';

  @override
  String get hijri => 'Hijri';

  @override
  String get ageCalculator => 'Age Calculator';

  @override
  String get totalAge => 'TOTAL AGE';

  @override
  String get nextBirthday => 'NEXT BIRTHDAY';

  @override
  String get dateOfBirth => 'DATE OF BIRTH';

  @override
  String get noDateChosen => 'No Date Chosen';

  @override
  String get pickADate => 'Pick a Date';

  @override
  String get dayWhenYouBorn => 'DAY WHEN YOU BORN';

  @override
  String get pauseNextBirthdayLive => 'Pause Next Birthday Live';

  @override
  String get playNextBirthdayLive => 'Play Next Birthday Live';

  @override
  String get appOverview => 'App Overview';

  @override
  String get aboutAppDescription =>
      'Welcome to My Age App our Age Calculator app, the ultimate tool to celebrate life\'s milestones and stay connected with your loved ones. Our app goes beyond just calculating your age – it brings a unique blend of functionality to make each birthday a cherished memory. Discover the day of the week you were born and explore the beauty of your Hijri birthdate. Never miss an important date again with our countdown timer to your next birthday, ensuring you\'re ready for another year of joy. But it doesn\'t stop there – you can save and manage the birthdates of your family and friends, and our thoughtful notification system will ensure you never forget to send your best wishes. celebrating life, capturing moments, and forging stronger bonds with those who matter.';

  @override
  String get privacyPolicy => 'Privacy Policy';
}
