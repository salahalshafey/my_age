// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get english => 'الإنجليزية';

  @override
  String get arabic => 'العربية';

  @override
  String get spanish => 'الأسبانية';

  @override
  String get frensh => 'الفرنسية';

  @override
  String get german => 'الألمانية';

  @override
  String get turkish => 'التركية';

  @override
  String get ok => 'حسناً';

  @override
  String get back => 'رجوع';

  @override
  String get openNavigationMenu => 'فتح قائمة التنقل';

  @override
  String get error => 'خطأ';

  @override
  String get pleaseChoose => 'الرجاء تحديد خيار';

  @override
  String get camera => 'الكاميرا';

  @override
  String get gallery => 'الاستوديو';

  @override
  String get share => 'شارك';

  @override
  String get errorHappenedWhileTryingToShareTheImage =>
      'حدث خطأ أثناء محاولة مشاركة الصورة.';

  @override
  String get saveToGallery => 'حفظ في الاستوديو';

  @override
  String get imageSavedToGallery => 'تم حفظ الصورة في الاستوديو';

  @override
  String get errorHappenedWhileSavingTheImage =>
      'حدث خطأ أثناء حفظ الصورة في الاستوديو.';

  @override
  String get attention => 'انتباه';

  @override
  String get doYouWantToExit => 'هل تريد الخروج؟';

  @override
  String get exit => 'الخروج';

  @override
  String get cancel => 'إلغاء';

  @override
  String get copyCode => 'إنسخ الكود';

  @override
  String get copid => 'تم النسخ!';

  @override
  String get km => 'كيلومتر';

  @override
  String get meter => 'متر';

  @override
  String get linkIsNotvalid => 'الرابط غير صالح';

  @override
  String get youAreCurrentlyOffline => 'أنت غير متصل بالانترنت';

  @override
  String get linkDoesnotPointToImage => 'الرابط لا يشير إلى الصورة';

  @override
  String get passwordMustBeAtLeastWithDetails =>
      'يجب أن تتكون كلمة المرور من 8 أحرف على الأقل، وأن تحتوي على 5 حروف ورقمين وحرف خاص واحد على الأقل مثل ';

  @override
  String get fiveAlphabetCharacters => '5 حروف';

  @override
  String get twoNumbers => 'رقمين';

  @override
  String get oneSpecialCharachtersLike => 'حرف خاص مثل ';

  @override
  String get passwordMustContainAtLeast => 'يجب أن تحتوي كلمة المرور على الأقل';

  @override
  String get comma => ' و';

  @override
  String get and => 'و';

  @override
  String get today => 'اليوم';

  @override
  String get yesterday => 'أمس';

  @override
  String get at => 'الساعة';

  @override
  String get justNow => 'الآن';

  @override
  String durationAgo(String durationInString) {
    return 'منذ $durationInString';
  }

  @override
  String durationFromNow(String durationInString) {
    return 'بعد $durationInString من الآن';
  }

  @override
  String get second => 'ثانية';

  @override
  String get twoSeconds => 'ثانيتين';

  @override
  String secondsBeteenThreeAndTen(int numberOfSeconds) {
    return '$numberOfSeconds ثواني';
  }

  @override
  String secondsMoreThanTen(int numberOfSeconds) {
    return '$numberOfSeconds ثانية';
  }

  @override
  String get minute => 'دقيقة';

  @override
  String get twoMinutes => 'دقيقتين';

  @override
  String minutesBeteenThreeAndTen(int numberOfMinutes) {
    return '$numberOfMinutes دقائق';
  }

  @override
  String minutesMoreThanTen(int numberOfMinutes) {
    return '$numberOfMinutes دقيقة';
  }

  @override
  String get hour => 'ساعة';

  @override
  String get twoHours => 'ساعتين';

  @override
  String hoursBeteenThreeAndTen(int numberOfHours) {
    return '$numberOfHours ساعات';
  }

  @override
  String hoursMoreThanTen(int numberOfHours) {
    return '$numberOfHours ساعة';
  }

  @override
  String get day => 'يوم';

  @override
  String get twoDays => 'يومين';

  @override
  String daysBeteenThreeAndTen(int numberOfDays) {
    return '$numberOfDays أيام';
  }

  @override
  String daysMoreThanTen(int numberOfDays) {
    return '$numberOfDays يوم';
  }

  @override
  String get week => 'إسبوع';

  @override
  String get twoWeeks => 'إسبوعين';

  @override
  String weeksBeteenThreeAndTen(int numberOfWeeks) {
    return '$numberOfWeeks أسابيع';
  }

  @override
  String weeksMoreThanTen(int numberOfWeeks) {
    return '$numberOfWeeks إسبوع';
  }

  @override
  String get month => 'شهر';

  @override
  String get twoMonths => 'شهرين';

  @override
  String monthsBeteenThreeAndTen(int numberOfMonths) {
    return '$numberOfMonths أشهر';
  }

  @override
  String monthsMoreThanTen(int numberOfMonths) {
    return '$numberOfMonths شهر';
  }

  @override
  String get year => 'سنة';

  @override
  String get twoYears => 'سنتين';

  @override
  String yearsBeteenThreeAndTen(int numberOfYears) {
    return '$numberOfYears سنوات';
  }

  @override
  String yearsMoreThanTen(int numberOfYears) {
    return '$numberOfYears سنة';
  }

  @override
  String get decade => 'عقد';

  @override
  String get twoDecades => 'عقدين';

  @override
  String decadesBeteenThreeAndTen(int numberOfDecades) {
    return '$numberOfDecades عقود';
  }

  @override
  String decadesMoreThanTen(int numberOfDecades) {
    return '$numberOfDecades عقد';
  }

  @override
  String get home => 'الرئيسية';

  @override
  String get profile => 'الحساب الشخصي';

  @override
  String get mealsSettings => 'إعدادات الوجبات';

  @override
  String get generalSettings => 'الإعدادات العامة';

  @override
  String get settings => 'الإعدادات';

  @override
  String get shareTheApp => 'شارك التطبيق';

  @override
  String get shareTheAppText =>
      'تطبيق AI MealMingle \n لتحميل التطبيق من جوجل بلاي\n\nhttps://play.google.com/store/apps/details?id=com.salahalshafey.aimealmingle';

  @override
  String get about => 'عن التطبيق';

  @override
  String get logout => 'تسجيل الخروج';

  @override
  String get signIn => 'تسجيل الدخول';

  @override
  String get adjustYourMealsSelection => 'تعديل اختيارات وجباتك';

  @override
  String get glutenfree => 'خالي من الجلوتين';

  @override
  String get lactosefree => 'خالي من اللاكتوز';

  @override
  String get vegetarian => 'نباتي';

  @override
  String get vegan => 'نباتي صارم (فيجان)';

  @override
  String displayMealTypeMeals(String mealType) {
    return 'عرض وجبات $mealType';
  }

  @override
  String get displayArabicLanguage => 'عرض اللغة العربية';

  @override
  String get displayDarkTheme => 'عرض الوضع المظلم';

  @override
  String get color => 'اللون';

  @override
  String get resetToDefault => 'إعادة إلى الوضع الافتراضي';

  @override
  String get theme => 'السمات';

  @override
  String get themeMode => 'السمات';

  @override
  String get systemDefault => 'تلقائياً مع النظام';

  @override
  String get light => 'فاتح';

  @override
  String get dark => 'مظلم';

  @override
  String get language => 'اللغة';

  @override
  String get notifications => 'الإشعارات';

  @override
  String get changeLanguage => 'تغيير اللغة';

  @override
  String get changeToLightMode => 'التغيير إلى الوضع الفاتح';

  @override
  String get changeToDarkMode => 'التغيير إلى الوضع المظلم';

  @override
  String get defaultWord => 'تلقائياً';

  @override
  String get allLanguages => 'كل اللغات';

  @override
  String get hijri => 'هجرياً';

  @override
  String get ageCalculator => 'حاسبة العمر';

  @override
  String get totalAge => 'العمر الإجمالي';

  @override
  String get nextBirthday => 'عيد الميلاد القادم';

  @override
  String get dateOfBirth => 'تاريخ الميلاد';

  @override
  String get noDateChosen => 'لم يتم اختيار تاريخ';

  @override
  String get pickADate => 'اختر تاريخ';

  @override
  String get dayWhenYouBorn => 'يوم ميلادك';

  @override
  String get pauseNextBirthdayLive => 'إيقاف العد التنازلي لعيد الميلاد';

  @override
  String get playNextBirthdayLive => 'بدء العد التنازلي لعيد الميلاد';

  @override
  String get appOverview => 'نظرة عامة على التطبيق';

  @override
  String get aboutAppDescription =>
      'مرحبًا بك في تطبيق حساب العمر، الأداة النهائية للاحتفال بمحطات الحياة والبقاء على اتصال مع أحبائك. يتجاوز تطبيقنا مجرد حساب عمرك - فهو يجلب مزيجًا فريدًا من الوظائف لجعل كل عيد ميلاد ذكرى عزيزة. اكتشف يوم الأسبوع الذي ولدت فيه واستكشف جمال تاريخ ميلادك الهجري. لا تفوت أبدًا تاريخًا مهمًا مرة أخرى مع مؤقت العد التنازلي لعيد ميلادك القادم، مما يضمن أنك مستعد لعام آخر من السعادة. ولكن لا يتوقف الأمر عند هذا الحد - يمكنك حفظ وإدارة تواريخ ميلاد عائلتك وأصدقائك، وسيضمن نظام الإشعارات الخاص بنا ألا تنسى أبدًا إرسال أفضل التمنيات. الاحتفال بالحياة، وتسجيل اللحظات، وتكوين روابط أقوى مع من يهم.';

  @override
  String get privacyPolicy => 'سياسة الخصوصية';
}
