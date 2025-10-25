import 'package:expedier_ui/core/extensions/string_extensions.dart';

class OnboardingAssets {
  final String image;
  final String title;
  final String body;
  final bool isPng;

  OnboardingAssets({
    required this.image,
    required this.title,
    required this.body,
    required this.isPng,
  });
}

List<OnboardingAssets> onboardingAssets = [
  OnboardingAssets(
    image: "onboarding_1".jpg,
    title: "Experience effortless currency exchange and fast Transaction",
    body:
        "Seamlessly convert currencies at the best rates with quick and secure transactions",
    isPng: false,
  ),
  OnboardingAssets(
    image: "onboarding_2".png,
    title: "Card data security",
    body: "Experience peace of mind with our Secured and Trusted banking app. ",
    isPng: true,
  ),
  OnboardingAssets(
    image: "",
    title: "Exchange Money",
    body: "Enjoy excellent exchange rates for various currencies.",
    isPng: true,
  ),
];
