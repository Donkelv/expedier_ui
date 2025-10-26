import 'package:expedier_ui/core/extensions/string_extensions.dart';

class OnboardingAssets {
  String? image;
  final String title;
  final String body;

  OnboardingAssets({this.image, required this.title, required this.body});
}

List<OnboardingAssets> onboardingAssets = [
  OnboardingAssets(
    image: "onboarding_1".jpg,
    title: "Experience effortless currency exchange and fast Transaction",
    body:
        "Seamlessly convert currencies at the best rates with quick and secure transactions",
  ),
  OnboardingAssets(
    image: "onboarding_2".png,
    title: "Card data security",
    body: "Experience peace of mind with our Secured and Trusted banking app. ",
  ),
  OnboardingAssets(
    image: null,
    title: "Exchange Money",
    body: "Enjoy excellent exchange rates for various currencies.",
  ),
];

class Currency {
  final String flag;
  final String code;
  final double sell;
  final double buy;
  Currency({
    required this.flag,
    required this.code,
    required this.sell,
    required this.buy,
  });
}

List<Currency> currencyList = [
  Currency(flag: '🇨🇦', code: 'CAD', sell: 76.36, buy: 72.36),
  Currency(flag: '🇳🇬', code: 'NGN', sell: 76.36, buy: 72.36),
  Currency(flag: '🇺🇸', code: 'USD', sell: 76.36, buy: 72.36),
];
