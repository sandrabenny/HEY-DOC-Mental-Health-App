import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/auth/base_auth_user_provider.dart';

import '/index.dart';
import '/flutter_flow/flutter_flow_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? const SplashScreenWidget() : const LoginPageWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.loggedIn
              ? const SplashScreenWidget()
              : const LoginPageWidget(),
        ),
        FFRoute(
          name: 'SplashScreen',
          path: '/splashScreen',
          builder: (context, params) => const SplashScreenWidget(),
        ),
        FFRoute(
          name: 'AboutUs',
          path: '/aboutUs',
          builder: (context, params) => const AboutUsWidget(),
        ),
        FFRoute(
          name: 'LoginPage',
          path: '/loginPage',
          builder: (context, params) => const LoginPageWidget(),
        ),
        FFRoute(
          name: 'ChangePassword',
          path: '/changePassword',
          builder: (context, params) => const ChangePasswordWidget(),
        ),
        FFRoute(
          name: 'UserProfile',
          path: '/userProfile',
          builder: (context, params) => const UserProfileWidget(),
        ),
        FFRoute(
          name: 'ListDoctors',
          path: '/listDoctors',
          builder: (context, params) => ListDoctorsWidget(
            date: params.getParam(
              'date',
              ParamType.String,
            ),
            userprof: params.getParam(
              'userprof',
              ParamType.String,
            ),
            username: params.getParam(
              'username',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'TalkToFriend',
          path: '/talkToFriend',
          builder: (context, params) => TalkToFriendWidget(
            userName: params.getParam(
              'userName',
              ParamType.String,
            ),
            userProf: params.getParam(
              'userProf',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'ProfileDoctor',
          path: '/profileDoctor',
          builder: (context, params) => ProfileDoctorWidget(
            doctorname: params.getParam(
              'doctorname',
              ParamType.String,
            ),
            doctorspec: params.getParam(
              'doctorspec',
              ParamType.String,
            ),
            doctormail: params.getParam(
              'doctormail',
              ParamType.String,
            ),
            userprof: params.getParam(
              'userprof',
              ParamType.String,
            ),
            doctorFee: params.getParam(
              'doctorFee',
              ParamType.int,
            ),
            username: params.getParam(
              'username',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'ProfilePsychology',
          path: '/profilePsychology',
          builder: (context, params) => ProfilePsychologyWidget(
            pStudMail: params.getParam(
              'pStudMail',
              ParamType.String,
            ),
            pStudName: params.getParam(
              'pStudName',
              ParamType.String,
            ),
            pStudProf: params.getParam(
              'pStudProf',
              ParamType.String,
            ),
            userName: params.getParam(
              'userName',
              ParamType.String,
            ),
            userProf: params.getParam(
              'userProf',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'MeditationPage2',
          path: '/meditationPage2',
          builder: (context, params) => const MeditationPage2Widget(),
        ),
        FFRoute(
          name: 'MeditationHomePage',
          path: '/meditationHomePage',
          builder: (context, params) => const MeditationHomePageWidget(),
        ),
        FFRoute(
          name: 'MeditationPage3',
          path: '/meditationPage3',
          builder: (context, params) => const MeditationPage3Widget(),
        ),
        FFRoute(
          name: 'UserSignUp',
          path: '/userSignUp',
          builder: (context, params) => const UserSignUpWidget(),
        ),
        FFRoute(
          name: 'DoctorsSignUp',
          path: '/doctorsSignUp',
          builder: (context, params) => const DoctorsSignUpWidget(),
        ),
        FFRoute(
          name: 'DoctorProfile',
          path: '/doctorProfile',
          builder: (context, params) => const DoctorProfileWidget(),
        ),
        FFRoute(
          name: 'EditUser',
          path: '/editUser',
          builder: (context, params) => const EditUserWidget(),
        ),
        FFRoute(
          name: 'EditPsychology',
          path: '/editPsychology',
          builder: (context, params) => const EditPsychologyWidget(),
        ),
        FFRoute(
          name: 'PsychologySignUp',
          path: '/psychologySignUp',
          builder: (context, params) => const PsychologySignUpWidget(),
        ),
        FFRoute(
          name: 'PsychologyProfile',
          path: '/psychologyProfile',
          builder: (context, params) => const PsychologyProfileWidget(),
        ),
        FFRoute(
          name: 'EditDoctor',
          path: '/editDoctor',
          builder: (context, params) => const EditDoctorWidget(),
        ),
        FFRoute(
          name: 'ConfirmBooking',
          path: '/confirmBooking',
          builder: (context, params) => ConfirmBookingWidget(
            drmail: params.getParam(
              'drmail',
              ParamType.String,
            ),
            userprof: params.getParam(
              'userprof',
              ParamType.String,
            ),
            drname: params.getParam(
              'drname',
              ParamType.String,
            ),
            doctorFee: params.getParam(
              'doctorFee',
              ParamType.int,
            ),
            username: params.getParam(
              'username',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'SuccessPage',
          path: '/successPage',
          builder: (context, params) => const SuccessPageWidget(),
        ),
        FFRoute(
          name: 'DoctorHomePage',
          path: '/doctorHomePage',
          builder: (context, params) => const DoctorHomePageWidget(),
        ),
        FFRoute(
          name: 'UserHomePage',
          path: '/userHomePage',
          builder: (context, params) => const UserHomePageWidget(),
        ),
        FFRoute(
          name: 'BookingsPage',
          path: '/bookingsPage',
          builder: (context, params) => const BookingsPageWidget(),
        ),
        FFRoute(
          name: 'ConfirmSlot',
          path: '/confirmSlot',
          builder: (context, params) => ConfirmSlotWidget(
            usermail: params.getParam(
              'usermail',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'YourRequests',
          path: '/yourRequests',
          builder: (context, params) => const YourRequestsWidget(),
        ),
        FFRoute(
          name: 'PsychologyHome',
          path: '/psychologyHome',
          builder: (context, params) => const PsychologyHomeWidget(),
        ),
        FFRoute(
          name: 'ChatPageUsers',
          path: '/chatPageUsers',
          builder: (context, params) => ChatPageUsersWidget(
            pStudMail: params.getParam(
              'pStudMail',
              ParamType.String,
            ),
            pStudName: params.getParam(
              'pStudName',
              ParamType.String,
            ),
            pStudProf: params.getParam(
              'pStudProf',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'ChatPagePsychology',
          path: '/chatPagePsychology',
          builder: (context, params) => ChatPagePsychologyWidget(
            userEmail: params.getParam(
              'userEmail',
              ParamType.String,
            ),
            userName: params.getParam(
              'userName',
              ParamType.String,
            ),
            userProfile: params.getParam(
              'userProfile',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'AllChatsUsers',
          path: '/allChatsUsers',
          builder: (context, params) => const AllChatsUsersWidget(),
        ),
        FFRoute(
          name: 'AllChatsPsychology',
          path: '/allChatsPsychology',
          builder: (context, params) => const AllChatsPsychologyWidget(),
        ),
        FFRoute(
          name: 'ChatPageReference',
          path: '/chatPageReference',
          builder: (context, params) => ChatPageReferenceWidget(
            pStudMail: params.getParam(
              'pStudMail',
              ParamType.String,
            ),
            pStudName: params.getParam(
              'pStudName',
              ParamType.String,
            ),
            pStudProf: params.getParam(
              'pStudProf',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'ChatPageListViewScrollable',
          path: '/chatPageListViewScrollable',
          builder: (context, params) => ChatPageListViewScrollableWidget(
            pStudMail: params.getParam(
              'pStudMail',
              ParamType.String,
            ),
            pStudName: params.getParam(
              'pStudName',
              ParamType.String,
            ),
            pStudProf: params.getParam(
              'pStudProf',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'PaymentPage',
          path: '/paymentPage',
          builder: (context, params) => PaymentPageWidget(
            doctormail: params.getParam(
              'doctormail',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'PaymentConfirmation',
          path: '/paymentConfirmation',
          builder: (context, params) => PaymentConfirmationWidget(
            amount: params.getParam(
              'amount',
              ParamType.int,
            ),
            doctorMail: params.getParam(
              'doctorMail',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'ListDoctorsFiltered',
          path: '/listDoctorsFiltered',
          builder: (context, params) => ListDoctorsFilteredWidget(
            drLanguage: params.getParam(
              'drLanguage',
              ParamType.String,
            ),
            date: params.getParam(
              'date',
              ParamType.String,
            ),
            userprof: params.getParam(
              'userprof',
              ParamType.String,
            ),
            username: params.getParam(
              'username',
              ParamType.String,
            ),
            filterNation: params.getParam(
              'filterNation',
              ParamType.String,
            ),
            filterGender: params.getParam(
              'filterGender',
              ParamType.String,
            ),
            filterSpec: params.getParam(
              'filterSpec',
              ParamType.String,
            ),
            filterExp: params.getParam(
              'filterExp',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'UserNotificationsPage',
          path: '/userNotificationsPage',
          builder: (context, params) => const UserNotificationsPageWidget(),
        ),
        FFRoute(
          name: 'DoctorNotificationsPage',
          path: '/doctorNotificationsPage',
          builder: (context, params) => const DoctorNotificationsPageWidget(),
        ),
        FFRoute(
          name: 'PsychologyNotificationsPage',
          path: '/psychologyNotificationsPage',
          builder: (context, params) => const PsychologyNotificationsPageWidget(),
        ),
        FFRoute(
          name: 'DraftNotificationsPage',
          path: '/draftNotificationsPage',
          builder: (context, params) => const DraftNotificationsPageWidget(),
        ),
        FFRoute(
          name: 'UserAccountInfo',
          path: '/userAccountInfo',
          builder: (context, params) => const UserAccountInfoWidget(),
        ),
        FFRoute(
          name: 'DoctorAccountInfo',
          path: '/doctorAccountInfo',
          builder: (context, params) => const DoctorAccountInfoWidget(),
        ),
        FFRoute(
          name: 'PsychologyAccountInfo',
          path: '/psychologyAccountInfo',
          builder: (context, params) => const PsychologyAccountInfoWidget(),
        ),
        FFRoute(
          name: 'UserAccessibility',
          path: '/userAccessibility',
          builder: (context, params) => const UserAccessibilityWidget(),
        ),
        FFRoute(
          name: 'DoctorAccessibility',
          path: '/doctorAccessibility',
          builder: (context, params) => const DoctorAccessibilityWidget(),
        ),
        FFRoute(
          name: 'PsychologyAccessibility',
          path: '/psychologyAccessibility',
          builder: (context, params) => const PsychologyAccessibilityWidget(),
        ),
        FFRoute(
          name: 'UserChatSettings',
          path: '/userChatSettings',
          builder: (context, params) => const UserChatSettingsWidget(),
        ),
        FFRoute(
          name: 'PsychologyChatSettings',
          path: '/psychologyChatSettings',
          builder: (context, params) => const PsychologyChatSettingsWidget(),
        ),
        FFRoute(
          name: 'UserRewards',
          path: '/userRewards',
          builder: (context, params) => const UserRewardsWidget(),
        ),
        FFRoute(
          name: 'FavoriteDoctors',
          path: '/favoriteDoctors',
          builder: (context, params) => const FavoriteDoctorsWidget(),
        ),
        FFRoute(
          name: 'FavoriteStudents',
          path: '/favoriteStudents',
          builder: (context, params) => const FavoriteStudentsWidget(),
        ),
        FFRoute(
          name: 'UserNotificationSettings',
          path: '/userNotificationSettings',
          builder: (context, params) => const UserNotificationSettingsWidget(),
        ),
        FFRoute(
          name: 'DoctorNotificationSettings',
          path: '/doctorNotificationSettings',
          builder: (context, params) => const DoctorNotificationSettingsWidget(),
        ),
        FFRoute(
          name: 'PsychologyNotificationSettings',
          path: '/psychologyNotificationSettings',
          builder: (context, params) => const PsychologyNotificationSettingsWidget(),
        ),
        FFRoute(
          name: 'UserRestrictedAccounts',
          path: '/userRestrictedAccounts',
          builder: (context, params) => const UserRestrictedAccountsWidget(),
        ),
        FFRoute(
          name: 'TermsOfService',
          path: '/termsOfService',
          builder: (context, params) => const TermsOfServiceWidget(),
        ),
        FFRoute(
          name: 'HelpSupport',
          path: '/helpSupport',
          builder: (context, params) => const HelpSupportWidget(),
        ),
        FFRoute(
          name: 'UserPaymentMethods',
          path: '/userPaymentMethods',
          builder: (context, params) => const UserPaymentMethodsWidget(),
        ),
        FFRoute(
          name: 'DoctorPaymentMethods',
          path: '/doctorPaymentMethods',
          builder: (context, params) => const DoctorPaymentMethodsWidget(),
        ),
        FFRoute(
          name: 'IncomeEarned',
          path: '/incomeEarned',
          builder: (context, params) => const IncomeEarnedWidget(),
        ),
        FFRoute(
          name: 'DoctorCertificate',
          path: '/doctorCertificate',
          builder: (context, params) => const DoctorCertificateWidget(),
        ),
        FFRoute(
          name: 'DoctorBadges',
          path: '/doctorBadges',
          builder: (context, params) => const DoctorBadgesWidget(),
        ),
        FFRoute(
          name: 'DoctorLanguages',
          path: '/doctorLanguages',
          builder: (context, params) => const DoctorLanguagesWidget(),
        ),
        FFRoute(
          name: 'PsychologyLanguages',
          path: '/psychologyLanguages',
          builder: (context, params) => const PsychologyLanguagesWidget(),
        ),
        FFRoute(
          name: 'PsychologyBadges',
          path: '/psychologyBadges',
          builder: (context, params) => const PsychologyBadgesWidget(),
        ),
        FFRoute(
          name: 'PsychologyID',
          path: '/psychologyID',
          builder: (context, params) => const PsychologyIDWidget(),
        ),
        FFRoute(
          name: 'SuccessPageCopy',
          path: '/successPageCopy',
          builder: (context, params) => const SuccessPageCopyWidget(),
        ),
        FFRoute(
          name: 'psychbadges',
          path: '/psychbadges',
          builder: (context, params) => const PsychbadgesWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      observers: [routeObserver],
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/loginPage';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: Colors.transparent,
                  child: Image.asset(
                    'assets/images/splash_screen.gif',
                    fit: BoxFit.cover,
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => const TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
