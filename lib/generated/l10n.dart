// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Teacher`
  String get teacher {
    return Intl.message(
      'Teacher',
      name: 'teacher',
      desc: '',
      args: [],
    );
  }

  /// `Student`
  String get student {
    return Intl.message(
      'Student',
      name: 'student',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `The Login`
  String get theLogin {
    return Intl.message(
      'The Login',
      name: 'theLogin',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Forget Password`
  String get forgetPassword {
    return Intl.message(
      'Forget Password',
      name: 'forgetPassword',
      desc: '',
      args: [],
    );
  }

  /// `Or`
  String get or {
    return Intl.message(
      'Or',
      name: 'or',
      desc: '',
      args: [],
    );
  }

  /// `Create Account`
  String get createAccount {
    return Intl.message(
      'Create Account',
      name: 'createAccount',
      desc: '',
      args: [],
    );
  }

  /// `I Already Have An Account`
  String get iAlreadyHaveAnAccount {
    return Intl.message(
      'I Already Have An Account',
      name: 'iAlreadyHaveAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `I Don't Have An Account`
  String get iDontHaveAnAccount {
    return Intl.message(
      'I Don\'t Have An Account',
      name: 'iDontHaveAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `Enter Name`
  String get enterName {
    return Intl.message(
      'Enter Name',
      name: 'enterName',
      desc: '',
      args: [],
    );
  }

  /// `Enter Password`
  String get enterPassword {
    return Intl.message(
      'Enter Password',
      name: 'enterPassword',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password`
  String get confirmPassword {
    return Intl.message(
      'Confirm Password',
      name: 'confirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Enter date of birth`
  String get enterDateOfBirth {
    return Intl.message(
      'Enter date of birth',
      name: 'enterDateOfBirth',
      desc: '',
      args: [],
    );
  }

  /// `Gender`
  String get gender {
    return Intl.message(
      'Gender',
      name: 'gender',
      desc: '',
      args: [],
    );
  }

  /// `Male`
  String get male {
    return Intl.message(
      'Male',
      name: 'male',
      desc: '',
      args: [],
    );
  }

  /// `Female`
  String get female {
    return Intl.message(
      'Female',
      name: 'female',
      desc: '',
      args: [],
    );
  }

  /// `Submit`
  String get submit {
    return Intl.message(
      'Submit',
      name: 'submit',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `First Name`
  String get firstName {
    return Intl.message(
      'First Name',
      name: 'firstName',
      desc: '',
      args: [],
    );
  }

  /// `Enter phone number`
  String get enterPhoneNumber {
    return Intl.message(
      'Enter phone number',
      name: 'enterPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Enter your course to be displayed on the Wahha platform, which contains more than 10,000 students from all over the Kingdom of Saudi Arabia`
  String get enterYourCourse {
    return Intl.message(
      'Enter your course to be displayed on the Wahha platform, which contains more than 10,000 students from all over the Kingdom of Saudi Arabia',
      name: 'enterYourCourse',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to the Wahj educational platform`
  String get welcome {
    return Intl.message(
      'Welcome to the Wahj educational platform',
      name: 'welcome',
      desc: '',
      args: [],
    );
  }

  /// `High School`
  String get highSchool {
    return Intl.message(
      'High School',
      name: 'highSchool',
      desc: '',
      args: [],
    );
  }

  /// `Universities`
  String get universities {
    return Intl.message(
      'Universities',
      name: 'universities',
      desc: '',
      args: [],
    );
  }

  /// `Capabilities`
  String get capabilities {
    return Intl.message(
      'Capabilities',
      name: 'capabilities',
      desc: '',
      args: [],
    );
  }

  /// `Lectures`
  String get lectures {
    return Intl.message(
      'Lectures',
      name: 'lectures',
      desc: '',
      args: [],
    );
  }

  /// `Achievement`
  String get achievement {
    return Intl.message(
      'Achievement',
      name: 'achievement',
      desc: '',
      args: [],
    );
  }

  /// `Add A New Course`
  String get addNewCourse {
    return Intl.message(
      'Add A New Course',
      name: 'addNewCourse',
      desc: '',
      args: [],
    );
  }

  /// `Hour`
  String get hour {
    return Intl.message(
      'Hour',
      name: 'hour',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Books`
  String get books {
    return Intl.message(
      'Books',
      name: 'books',
      desc: '',
      args: [],
    );
  }

  /// `Cart`
  String get cart {
    return Intl.message(
      'Cart',
      name: 'cart',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Statistics`
  String get statistics {
    return Intl.message(
      'Statistics',
      name: 'statistics',
      desc: '',
      args: [],
    );
  }

  /// `Students`
  String get students {
    return Intl.message(
      'Students',
      name: 'students',
      desc: '',
      args: [],
    );
  }

  /// `The Students`
  String get theStudents {
    return Intl.message(
      'The Students',
      name: 'theStudents',
      desc: '',
      args: [],
    );
  }

  /// `Organization`
  String get organization {
    return Intl.message(
      'Organization',
      name: 'organization',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get search {
    return Intl.message(
      'Search',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `Third Secondary`
  String get thirdSecondary {
    return Intl.message(
      'Third Secondary',
      name: 'thirdSecondary',
      desc: '',
      args: [],
    );
  }

  /// `Degrees`
  String get degrees {
    return Intl.message(
      'Degrees',
      name: 'degrees',
      desc: '',
      args: [],
    );
  }

  /// `the line`
  String get theLine {
    return Intl.message(
      'the line',
      name: 'theLine',
      desc: '',
      args: [],
    );
  }

  /// `Devices Used`
  String get devicesUsed {
    return Intl.message(
      'Devices Used',
      name: 'devicesUsed',
      desc: '',
      args: [],
    );
  }

  /// `Courses`
  String get courses {
    return Intl.message(
      'Courses',
      name: 'courses',
      desc: '',
      args: [],
    );
  }

  /// `Phone`
  String get phone {
    return Intl.message(
      'Phone',
      name: 'phone',
      desc: '',
      args: [],
    );
  }

  /// `Course`
  String get course {
    return Intl.message(
      'Course',
      name: 'course',
      desc: '',
      args: [],
    );
  }

  /// `Durations`
  String get duration {
    return Intl.message(
      'Durations',
      name: 'duration',
      desc: '',
      args: [],
    );
  }

  /// `Lesson`
  String get lesson {
    return Intl.message(
      'Lesson',
      name: 'lesson',
      desc: '',
      args: [],
    );
  }

  /// `Test`
  String get test {
    return Intl.message(
      'Test',
      name: 'test',
      desc: '',
      args: [],
    );
  }

  /// `Answers`
  String get answers {
    return Intl.message(
      'Answers',
      name: 'answers',
      desc: '',
      args: [],
    );
  }

  /// `About the teacher`
  String get aboutTheTeacher {
    return Intl.message(
      'About the teacher',
      name: 'aboutTheTeacher',
      desc: '',
      args: [],
    );
  }

  /// `The Student`
  String get theStudent {
    return Intl.message(
      'The Student',
      name: 'theStudent',
      desc: '',
      args: [],
    );
  }

  /// `Sunday`
  String get sunday {
    return Intl.message(
      'Sunday',
      name: 'sunday',
      desc: '',
      args: [],
    );
  }

  /// `Thursday`
  String get thursday {
    return Intl.message(
      'Thursday',
      name: 'thursday',
      desc: '',
      args: [],
    );
  }

  /// `Evaluations`
  String get evaluations {
    return Intl.message(
      'Evaluations',
      name: 'evaluations',
      desc: '',
      args: [],
    );
  }

  /// `A math teacher with more than ten years of experience and has taught more than 5000 students over ten years. He has more than five years of experience in teaching abilities.`
  String get aMathTeacherWithMoreThanTenYearsOfExperience {
    return Intl.message(
      'A math teacher with more than ten years of experience and has taught more than 5000 students over ten years. He has more than five years of experience in teaching abilities.',
      name: 'aMathTeacherWithMoreThanTenYearsOfExperience',
      desc: '',
      args: [],
    );
  }

  /// `Description`
  String get description {
    return Intl.message(
      'Description',
      name: 'description',
      desc: '',
      args: [],
    );
  }

  /// `The Lectures`
  String get theLectures {
    return Intl.message(
      'The Lectures',
      name: 'theLectures',
      desc: '',
      args: [],
    );
  }

  /// `Remaining Course`
  String get remainingCourse {
    return Intl.message(
      'Remaining Course',
      name: 'remainingCourse',
      desc: '',
      args: [],
    );
  }

  /// `Subscribers`
  String get subscribers {
    return Intl.message(
      'Subscribers',
      name: 'subscribers',
      desc: '',
      args: [],
    );
  }

  /// `Phone Users`
  String get phoneUsers {
    return Intl.message(
      'Phone Users',
      name: 'phoneUsers',
      desc: '',
      args: [],
    );
  }

  /// `Computer Users`
  String get computerUsers {
    return Intl.message(
      'Computer Users',
      name: 'computerUsers',
      desc: '',
      args: [],
    );
  }

  /// `Completed`
  String get completed {
    return Intl.message(
      'Completed',
      name: 'completed',
      desc: '',
      args: [],
    );
  }

  /// `Remaining`
  String get remaining {
    return Intl.message(
      'Remaining',
      name: 'remaining',
      desc: '',
      args: [],
    );
  }

  /// `From`
  String get from {
    return Intl.message(
      'From',
      name: 'from',
      desc: '',
      args: [],
    );
  }

  /// `To`
  String get to {
    return Intl.message(
      'To',
      name: 'to',
      desc: '',
      args: [],
    );
  }

  /// `Weeks`
  String get weeks {
    return Intl.message(
      'Weeks',
      name: 'weeks',
      desc: '',
      args: [],
    );
  }

  /// `Week`
  String get week {
    return Intl.message(
      'Week',
      name: 'week',
      desc: '',
      args: [],
    );
  }

  /// `Of The Weeks`
  String get ofTheWeeks {
    return Intl.message(
      'Of The Weeks',
      name: 'ofTheWeeks',
      desc: '',
      args: [],
    );
  }

  /// `number Of Courses Sold`
  String get numberOfCoursesSold {
    return Intl.message(
      'number Of Courses Sold',
      name: 'numberOfCoursesSold',
      desc: '',
      args: [],
    );
  }

  /// `Number Of Students Enrolled`
  String get numberOfStudentsEnrolled {
    return Intl.message(
      'Number Of Students Enrolled',
      name: 'numberOfStudentsEnrolled',
      desc: '',
      args: [],
    );
  }

  /// `Percentage Of Courses Completed`
  String get percentageOfCoursesCompleted {
    return Intl.message(
      'Percentage Of Courses Completed',
      name: 'percentageOfCoursesCompleted',
      desc: '',
      args: [],
    );
  }

  /// `Percentage Of Profits`
  String get percentageOfProfits {
    return Intl.message(
      'Percentage Of Profits',
      name: 'percentageOfProfits',
      desc: '',
      args: [],
    );
  }

  /// `Sales`
  String get sales {
    return Intl.message(
      'Sales',
      name: 'sales',
      desc: '',
      args: [],
    );
  }

  /// `Total Sales`
  String get totalSales {
    return Intl.message(
      'Total Sales',
      name: 'totalSales',
      desc: '',
      args: [],
    );
  }

  /// `Total Profit`
  String get totalProfit {
    return Intl.message(
      'Total Profit',
      name: 'totalProfit',
      desc: '',
      args: [],
    );
  }

  /// `Question`
  String get question {
    return Intl.message(
      'Question',
      name: 'question',
      desc: '',
      args: [],
    );
  }

  /// `Enter course content`
  String get enterCourseContent {
    return Intl.message(
      'Enter course content',
      name: 'enterCourseContent',
      desc: '',
      args: [],
    );
  }

  /// `Educational Material`
  String get educationalMaterial {
    return Intl.message(
      'Educational Material',
      name: 'educationalMaterial',
      desc: '',
      args: [],
    );
  }

  /// `Enter the name of the educational material`
  String get enterTheNameOfTheEducationalMaterial {
    return Intl.message(
      'Enter the name of the educational material',
      name: 'enterTheNameOfTheEducationalMaterial',
      desc: '',
      args: [],
    );
  }

  /// `Number Of Days`
  String get numberOfDays {
    return Intl.message(
      'Number Of Days',
      name: 'numberOfDays',
      desc: '',
      args: [],
    );
  }

  /// `Number Of Tests`
  String get numberOfTests {
    return Intl.message(
      'Number Of Tests',
      name: 'numberOfTests',
      desc: '',
      args: [],
    );
  }

  /// `Number Of Lectures`
  String get numberOfLectures {
    return Intl.message(
      'Number Of Lectures',
      name: 'numberOfLectures',
      desc: '',
      args: [],
    );
  }

  /// `Enter today`
  String get enterToday {
    return Intl.message(
      'Enter today',
      name: 'enterToday',
      desc: '',
      args: [],
    );
  }

  /// `The Previous`
  String get thePrevious {
    return Intl.message(
      'The Previous',
      name: 'thePrevious',
      desc: '',
      args: [],
    );
  }

  /// `The Appointment`
  String get theAppointment {
    return Intl.message(
      'The Appointment',
      name: 'theAppointment',
      desc: '',
      args: [],
    );
  }

  /// `Time`
  String get time {
    return Intl.message(
      'Time',
      name: 'time',
      desc: '',
      args: [],
    );
  }

  /// `Test Duration`
  String get testDuration {
    return Intl.message(
      'Test Duration',
      name: 'testDuration',
      desc: '',
      args: [],
    );
  }

  /// `Number Of Questions`
  String get numberOfQuestions {
    return Intl.message(
      'Number Of Questions',
      name: 'numberOfQuestions',
      desc: '',
      args: [],
    );
  }

  /// `Enter Question`
  String get enterQuestion {
    return Intl.message(
      'Enter Question',
      name: 'enterQuestion',
      desc: '',
      args: [],
    );
  }

  /// `Write question here`
  String get writeQuestionHere {
    return Intl.message(
      'Write question here',
      name: 'writeQuestionHere',
      desc: '',
      args: [],
    );
  }

  /// `Go to the next test`
  String get goToTheNextTest {
    return Intl.message(
      'Go to the next test',
      name: 'goToTheNextTest',
      desc: '',
      args: [],
    );
  }

  /// `Complete`
  String get complete {
    return Intl.message(
      'Complete',
      name: 'complete',
      desc: '',
      args: [],
    );
  }

  /// `Lecturers`
  String get lecturers {
    return Intl.message(
      'Lecturers',
      name: 'lecturers',
      desc: '',
      args: [],
    );
  }

  /// `Materials`
  String get materials {
    return Intl.message(
      'Materials',
      name: 'materials',
      desc: '',
      args: [],
    );
  }

  /// `Enter the code`
  String get enterTheCode {
    return Intl.message(
      'Enter the code',
      name: 'enterTheCode',
      desc: '',
      args: [],
    );
  }

  /// `Number of courses`
  String get numberOfCourses {
    return Intl.message(
      'Number of courses',
      name: 'numberOfCourses',
      desc: '',
      args: [],
    );
  }

  /// `Complete the subscription process`
  String get completeTheSubscriptionProcess {
    return Intl.message(
      'Complete the subscription process',
      name: 'completeTheSubscriptionProcess',
      desc: '',
      args: [],
    );
  }

  /// `Edit`
  String get edit {
    return Intl.message(
      'Edit',
      name: 'edit',
      desc: '',
      args: [],
    );
  }

  /// `Completed Courses`
  String get completedCourses {
    return Intl.message(
      'Completed Courses',
      name: 'completedCourses',
      desc: '',
      args: [],
    );
  }

  /// `Abilities Course`
  String get abilitiesCourse {
    return Intl.message(
      'Abilities Course',
      name: 'abilitiesCourse',
      desc: '',
      args: [],
    );
  }

  /// `Details`
  String get details {
    return Intl.message(
      'Details',
      name: 'details',
      desc: '',
      args: [],
    );
  }

  /// `Days`
  String get days {
    return Intl.message(
      'Days',
      name: 'days',
      desc: '',
      args: [],
    );
  }

  /// `Tests`
  String get tests {
    return Intl.message(
      'Tests',
      name: 'tests',
      desc: '',
      args: [],
    );
  }

  /// `Allowed Devices`
  String get allowedDevices {
    return Intl.message(
      'Allowed Devices',
      name: 'allowedDevices',
      desc: '',
      args: [],
    );
  }

  /// `Mobile phone`
  String get mobilePhone {
    return Intl.message(
      'Mobile phone',
      name: 'mobilePhone',
      desc: '',
      args: [],
    );
  }

  /// `entrance`
  String get entrance {
    return Intl.message(
      'entrance',
      name: 'entrance',
      desc: '',
      args: [],
    );
  }

  /// `Close`
  String get close {
    return Intl.message(
      'Close',
      name: 'close',
      desc: '',
      args: [],
    );
  }

  /// `The Lesson`
  String get theLesson {
    return Intl.message(
      'The Lesson',
      name: 'theLesson',
      desc: '',
      args: [],
    );
  }

  /// `Theoretical`
  String get theoretical {
    return Intl.message(
      'Theoretical',
      name: 'theoretical',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
