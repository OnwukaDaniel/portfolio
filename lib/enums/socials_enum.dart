enum SocialsEnum {
  linkedin(
    "https://www.linkedin.com/in/daniel-o-7a0b37127",
    'LinkedIn',
    'assets/icons/linkedin.png',
  ),
  twitter("https://x.com/io__daniel", 'Twitter', 'assets/icons/twitter.png');

  const SocialsEnum(this.link, this.name, this.image);

  final String link;
  final String name;
  final String image;
}
