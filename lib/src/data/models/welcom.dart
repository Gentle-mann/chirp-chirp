class OnboardingMessage {
  final String image, description, title;
  const OnboardingMessage({
    required this.image,
    required this.description,
    required this.title,
  });
  static const onboardingMessages = [
    OnboardingMessage(
        image: 'assets/images/globe.jpg',
        description:
            'Be the first to know the latest news from all around the globe.',
        title: 'First to know'),
    OnboardingMessage(
        image: 'assets/images/car.jpg',
        description:
            'Stay up-to-date on any of your favourite topics including sports, lifestyle, and travel.',
        title: 'Explore!'),
    OnboardingMessage(
        image: 'assets/images/knuckle.jpg',
        description:
            'All news in one place. Just sit back, relax and enjoy latest updates.',
        title: 'You\'re welcome'),
  ];
}
