enum RiveEnum {
  animationName('active'),
  asset('assets/rive/animated_icons.riv'),
  home('HOME'),
  search('SEARCH'),
  timer("TIMER"),
  bell("BELL"),
  settings("SETTINGS"),
  user("USER"),
  refresh("REFRESH/RELOAD"),
  like("LIKE"),
  chat("CHAT"),
  audio("AUDIO");


  final String value;
  const RiveEnum(this.value);

  String get toRiveString => value;
  String get toStateMachine => '${value}_Interactivity';
  
}