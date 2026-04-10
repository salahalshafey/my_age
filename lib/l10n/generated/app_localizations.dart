import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en'),
  ];

  /// the english language word
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get english;

  /// the arabic language word
  ///
  /// In en, this message translates to:
  /// **'Arabic'**
  String get arabic;

  /// the spanish language word
  ///
  /// In en, this message translates to:
  /// **'Spanish'**
  String get spanish;

  /// the frensh language word
  ///
  /// In en, this message translates to:
  /// **'Frensh'**
  String get frensh;

  /// the german language word
  ///
  /// In en, this message translates to:
  /// **'German'**
  String get german;

  /// the turkish language word
  ///
  /// In en, this message translates to:
  /// **'Turkish'**
  String get turkish;

  /// the ok word
  ///
  /// In en, this message translates to:
  /// **'Ok'**
  String get ok;

  /// the back word `for backArrow icon tooltip`
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get back;

  /// the drawer icon tooltip`
  ///
  /// In en, this message translates to:
  /// **'Open navigation menu'**
  String get openNavigationMenu;

  /// the Error word
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get error;

  /// the Please Choose word
  ///
  /// In en, this message translates to:
  /// **'Please Choose'**
  String get pleaseChoose;

  /// the Camera word
  ///
  /// In en, this message translates to:
  /// **'Camera'**
  String get camera;

  /// the Gallery word
  ///
  /// In en, this message translates to:
  /// **'Gallery'**
  String get gallery;

  /// the Share word
  ///
  /// In en, this message translates to:
  /// **'Share'**
  String get share;

  /// the error if Trying To Share did not complete
  ///
  /// In en, this message translates to:
  /// **'An error happened while trying to share the image.'**
  String get errorHappenedWhileTryingToShareTheImage;

  /// the Save to gallery word
  ///
  /// In en, this message translates to:
  /// **'Save to gallery'**
  String get saveToGallery;

  /// the image saved to gallery word, basicly in imageScreen of imageContainer
  ///
  /// In en, this message translates to:
  /// **'Image saved to gallery'**
  String get imageSavedToGallery;

  /// the error if Trying To save to gallery did not complete
  ///
  /// In en, this message translates to:
  /// **'An error happened while saving the image to the gallery.'**
  String get errorHappenedWhileSavingTheImage;

  /// the Attention word
  ///
  /// In en, this message translates to:
  /// **'Attention'**
  String get attention;

  /// the response if you pressed the system navigation back button ON the scope of homeScreen
  ///
  /// In en, this message translates to:
  /// **'Do you want to exit?'**
  String get doYouWantToExit;

  /// the Exit word
  ///
  /// In en, this message translates to:
  /// **' Exit '**
  String get exit;

  /// the Cancel word
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// the Copy code word, for code container
  ///
  /// In en, this message translates to:
  /// **'Copy code'**
  String get copyCode;

  /// the Copid! word
  ///
  /// In en, this message translates to:
  /// **'Copid!'**
  String get copid;

  /// the km word
  ///
  /// In en, this message translates to:
  /// **'km'**
  String get km;

  /// the meter word
  ///
  /// In en, this message translates to:
  /// **'meter'**
  String get meter;

  /// the response if `web link` is not valid
  ///
  /// In en, this message translates to:
  /// **'Link is Not valid'**
  String get linkIsNotvalid;

  /// the response if no internet connections
  ///
  /// In en, this message translates to:
  /// **'You are currently offline'**
  String get youAreCurrentlyOffline;

  /// the response if the linke is valid but not resolve as an image
  ///
  /// In en, this message translates to:
  /// **'Link doesn\'t point to an image'**
  String get linkDoesnotPointToImage;

  /// the response if `password formField in SignUp screen` is empty or less than 8 characters.
  ///
  /// In en, this message translates to:
  /// **'Password must be at least 8 characters long, with at least 5 alphabet, 2 numbers, and 1 special character like '**
  String get passwordMustBeAtLeastWithDetails;

  /// one of possible errors in `password formField in SignUp screen`
  ///
  /// In en, this message translates to:
  /// **'5 alphabet characters'**
  String get fiveAlphabetCharacters;

  /// one of possible errors in `password formField in SignUp screen`
  ///
  /// In en, this message translates to:
  /// **'2 numbers'**
  String get twoNumbers;

  /// one of possible errors in `password formField in SignUp screen`
  ///
  /// In en, this message translates to:
  /// **'1 special charachters like '**
  String get oneSpecialCharachtersLike;

  /// one of possible errors in `password formField in SignUp screen`
  ///
  /// In en, this message translates to:
  /// **'Password must contain at least'**
  String get passwordMustContainAtLeast;

  /// the comma seperator `,`
  ///
  /// In en, this message translates to:
  /// **', '**
  String get comma;

  /// the and word
  ///
  /// In en, this message translates to:
  /// **'And '**
  String get and;

  /// the Today word
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today;

  /// the Yesterday word
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get yesterday;

  /// the at word `for clocks` like **at 10:33 PM**
  ///
  /// In en, this message translates to:
  /// **'at'**
  String get at;

  /// the just now word
  ///
  /// In en, this message translates to:
  /// **'just now'**
  String get justNow;

  /// used for duration ago like: `3 years ago`
  ///
  /// In en, this message translates to:
  /// **'{durationInString} ago'**
  String durationAgo(String durationInString);

  /// used for duration from now like: `3 years from now`
  ///
  /// In en, this message translates to:
  /// **'{durationInString} from now'**
  String durationFromNow(String durationInString);

  /// the second word
  ///
  /// In en, this message translates to:
  /// **'second'**
  String get second;

  /// the 2 seconds word
  ///
  /// In en, this message translates to:
  /// **'2 seconds'**
  String get twoSeconds;

  /// number of seconds between 3 and 10 like: 3, 5 or 10 seconds
  ///
  /// In en, this message translates to:
  /// **'{numberOfSeconds} seconds'**
  String secondsBeteenThreeAndTen(int numberOfSeconds);

  /// number of seconds more than 10 like: 11 seconds
  ///
  /// In en, this message translates to:
  /// **'{numberOfSeconds} seconds'**
  String secondsMoreThanTen(int numberOfSeconds);

  /// the minute word
  ///
  /// In en, this message translates to:
  /// **'minute'**
  String get minute;

  /// the 2 minutes word
  ///
  /// In en, this message translates to:
  /// **'2 minutes'**
  String get twoMinutes;

  /// number of minutes between 3 and 10 like: 3, 5 or 10 minutes
  ///
  /// In en, this message translates to:
  /// **'{numberOfMinutes} minutes'**
  String minutesBeteenThreeAndTen(int numberOfMinutes);

  /// number of minutes more than 10 like: 11 minutes
  ///
  /// In en, this message translates to:
  /// **'{numberOfMinutes} minutes'**
  String minutesMoreThanTen(int numberOfMinutes);

  /// the hour word
  ///
  /// In en, this message translates to:
  /// **'hour'**
  String get hour;

  /// the 2 hours word
  ///
  /// In en, this message translates to:
  /// **'2 hours'**
  String get twoHours;

  /// number of hours between 3 and 10 like: 3, 5 or 10 hours
  ///
  /// In en, this message translates to:
  /// **'{numberOfHours} hours'**
  String hoursBeteenThreeAndTen(int numberOfHours);

  /// number of hours more than 10 like: 11 hours
  ///
  /// In en, this message translates to:
  /// **'{numberOfHours} hours'**
  String hoursMoreThanTen(int numberOfHours);

  /// the day word
  ///
  /// In en, this message translates to:
  /// **'day'**
  String get day;

  /// the 2 days word
  ///
  /// In en, this message translates to:
  /// **'2 days'**
  String get twoDays;

  /// number of days between 3 and 10 like: 3, 5 or 10 days
  ///
  /// In en, this message translates to:
  /// **'{numberOfDays} days'**
  String daysBeteenThreeAndTen(int numberOfDays);

  /// number of days more than 10 like: 11 days
  ///
  /// In en, this message translates to:
  /// **'{numberOfDays} days'**
  String daysMoreThanTen(int numberOfDays);

  /// the week word
  ///
  /// In en, this message translates to:
  /// **'week'**
  String get week;

  /// the 2 weeks word
  ///
  /// In en, this message translates to:
  /// **'2 weeks'**
  String get twoWeeks;

  /// number of weeks between 3 and 10 like: 3, 5 or 10 weeks
  ///
  /// In en, this message translates to:
  /// **'{numberOfWeeks} weeks'**
  String weeksBeteenThreeAndTen(int numberOfWeeks);

  /// number of weeks more than 10 like: 11 weeks
  ///
  /// In en, this message translates to:
  /// **'{numberOfWeeks} weeks'**
  String weeksMoreThanTen(int numberOfWeeks);

  /// the month word
  ///
  /// In en, this message translates to:
  /// **'month'**
  String get month;

  /// the 2 months word
  ///
  /// In en, this message translates to:
  /// **'2 months'**
  String get twoMonths;

  /// number of months between 3 and 10 like: 3, 5 or 10 months
  ///
  /// In en, this message translates to:
  /// **'{numberOfMonths} months'**
  String monthsBeteenThreeAndTen(int numberOfMonths);

  /// number of months more than 10 like: 11 months
  ///
  /// In en, this message translates to:
  /// **'{numberOfMonths} months'**
  String monthsMoreThanTen(int numberOfMonths);

  /// the year word
  ///
  /// In en, this message translates to:
  /// **'year'**
  String get year;

  /// the 2 years word
  ///
  /// In en, this message translates to:
  /// **'2 years'**
  String get twoYears;

  /// number of years between 3 and 10 like: 3, 5 or 10 years
  ///
  /// In en, this message translates to:
  /// **'{numberOfYears} years'**
  String yearsBeteenThreeAndTen(int numberOfYears);

  /// number of years more than 10 like: 11 years
  ///
  /// In en, this message translates to:
  /// **'{numberOfYears} years'**
  String yearsMoreThanTen(int numberOfYears);

  /// the decade word
  ///
  /// In en, this message translates to:
  /// **'decade'**
  String get decade;

  /// the 2 decades word
  ///
  /// In en, this message translates to:
  /// **'2 decades'**
  String get twoDecades;

  /// number of decades between 3 and 10 like: 3, 5 or 10 decades
  ///
  /// In en, this message translates to:
  /// **'{numberOfDecades} decades'**
  String decadesBeteenThreeAndTen(int numberOfDecades);

  /// number of decades more than 10 like: 11 decades
  ///
  /// In en, this message translates to:
  /// **'{numberOfDecades} decades'**
  String decadesMoreThanTen(int numberOfDecades);

  /// the home button of menue screen
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// the profile button of menue screen
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// title in `_SETTINGS_SCREENS`
  ///
  /// In en, this message translates to:
  /// **'Meals Settings'**
  String get mealsSettings;

  /// title in `_SETTINGS_SCREENS`
  ///
  /// In en, this message translates to:
  /// **'General Settings'**
  String get generalSettings;

  /// title of settings screen
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// the Share The App word
  ///
  /// In en, this message translates to:
  /// **'Share'**
  String get shareTheApp;

  /// share text of share the app button in menue screen
  ///
  /// In en, this message translates to:
  /// **'           AI MealMingle App\nDownload from the Play Store\n\nhttps://play.google.com/store/apps/details?id=com.salahalshafey.aimealmingle'**
  String get shareTheAppText;

  /// the about button of menue screen
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get about;

  /// the log out button of menue screen
  ///
  /// In en, this message translates to:
  /// **'Log out'**
  String get logout;

  /// the Sign In button of menue screen 'guest view'
  ///
  /// In en, this message translates to:
  /// **'Sign In'**
  String get signIn;

  /// the tilte of `meals settings screen`
  ///
  /// In en, this message translates to:
  /// **'Adjust your Meals Selection'**
  String get adjustYourMealsSelection;

  /// one setting of `meals settings screen`
  ///
  /// In en, this message translates to:
  /// **'Gluten-Free'**
  String get glutenfree;

  /// one setting of `meals settings screen`
  ///
  /// In en, this message translates to:
  /// **'Lactose-Free'**
  String get lactosefree;

  /// one setting of `meals settings screen`
  ///
  /// In en, this message translates to:
  /// **'Vegetarian'**
  String get vegetarian;

  /// one setting of `meals settings screen`
  ///
  /// In en, this message translates to:
  /// **'Vegan'**
  String get vegan;

  /// Display {mealType} meals, like: Display Vegan Meals
  ///
  /// In en, this message translates to:
  /// **'Display {mealType} Meals'**
  String displayMealTypeMeals(String mealType);

  /// subtitle of Language in `_SETTINGS_SCREENS`
  ///
  /// In en, this message translates to:
  /// **'Display Arabic Language'**
  String get displayArabicLanguage;

  /// subtitle of ThemeMode in `_SETTINGS_SCREENS`
  ///
  /// In en, this message translates to:
  /// **'Display Dark Theme'**
  String get displayDarkTheme;

  /// the color word
  ///
  /// In en, this message translates to:
  /// **'Color'**
  String get color;

  /// the reset to default tooltip in `_SETTINGS_SCREEN`
  ///
  /// In en, this message translates to:
  /// **'Reset to default'**
  String get resetToDefault;

  /// theme text of settings screen
  ///
  /// In en, this message translates to:
  /// **'Theme'**
  String get theme;

  /// theme mode text of settings screen
  ///
  /// In en, this message translates to:
  /// **'Theme Mode'**
  String get themeMode;

  /// System default of theme
  ///
  /// In en, this message translates to:
  /// **'System default'**
  String get systemDefault;

  /// Light mode of theme
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get light;

  /// Dark mode of theme
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get dark;

  /// the language word
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// the notifications word
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notifications;

  /// tooltip Change to Language of sign in screen
  ///
  /// In en, this message translates to:
  /// **'Change Language'**
  String get changeLanguage;

  /// tooltip Change to Light Mode of ToggleThemeButton
  ///
  /// In en, this message translates to:
  /// **'Change to Light Mode'**
  String get changeToLightMode;

  /// tooltip Change to Dark Mode of ToggleThemeButton
  ///
  /// In en, this message translates to:
  /// **'Change to Dark Mode'**
  String get changeToDarkMode;

  /// the default word
  ///
  /// In en, this message translates to:
  /// **'default'**
  String get defaultWord;

  /// the All Languages word
  ///
  /// In en, this message translates to:
  /// **'All Languages'**
  String get allLanguages;

  /// the hijri word
  ///
  /// In en, this message translates to:
  /// **'Hijri'**
  String get hijri;

  /// Title of the Home Screen
  ///
  /// In en, this message translates to:
  /// **'Age Calculator'**
  String get ageCalculator;

  /// Label for total age display
  ///
  /// In en, this message translates to:
  /// **'TOTAL AGE'**
  String get totalAge;

  /// Label for next birthday display
  ///
  /// In en, this message translates to:
  /// **'NEXT BIRTHDAY'**
  String get nextBirthday;

  /// Label for date of birth field
  ///
  /// In en, this message translates to:
  /// **'DATE OF BIRTH'**
  String get dateOfBirth;

  /// Placeholder text when no date is selected
  ///
  /// In en, this message translates to:
  /// **'No Date Chosen'**
  String get noDateChosen;

  /// Tooltip for date picker icon
  ///
  /// In en, this message translates to:
  /// **'Pick a Date'**
  String get pickADate;

  /// Label for the day you were born section
  ///
  /// In en, this message translates to:
  /// **'DAY WHEN YOU BORN'**
  String get dayWhenYouBorn;

  /// Tooltip for pausing the next birthday live countdown
  ///
  /// In en, this message translates to:
  /// **'Pause Next Birthday Live'**
  String get pauseNextBirthdayLive;

  /// Tooltip for playing the next birthday live countdown
  ///
  /// In en, this message translates to:
  /// **'Play Next Birthday Live'**
  String get playNextBirthdayLive;

  /// Title of the About App Screen
  ///
  /// In en, this message translates to:
  /// **'App Overview'**
  String get appOverview;

  /// Description text for the About App Screen
  ///
  /// In en, this message translates to:
  /// **'Welcome to My Age App our Age Calculator app, the ultimate tool to celebrate life\'s milestones and stay connected with your loved ones. Our app goes beyond just calculating your age – it brings a unique blend of functionality to make each birthday a cherished memory. Discover the day of the week you were born and explore the beauty of your Hijri birthdate. Never miss an important date again with our countdown timer to your next birthday, ensuring you\'re ready for another year of joy. But it doesn\'t stop there – you can save and manage the birthdates of your family and friends, and our thoughtful notification system will ensure you never forget to send your best wishes. celebrating life, capturing moments, and forging stronger bonds with those who matter.'**
  String get aboutAppDescription;

  /// Text for the Privacy Policy button
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacyPolicy;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
