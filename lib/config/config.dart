const config = const Config();

class Config {
  /////////////////////////////////////////////////////////////
  /* Define your values here
     Note: You don't have to define all of them,
           as everything has a default value, which
           you can also change
   */
  final Map<String, double> blur;
  final String wallpaper;
  final Map<String, String> colors;

  const Config(
      {this.blur: const {'sigmaX': 50.0, 'sigmaY': 50.0},
      this.wallpaper: 'wallpaper.jpg',
      this.colors: const {
        'topbar': '#333f3f3f',
        'sidemenu': '#332f2f2f',
        'emailContainer': '#33000000'
      }});
  //////////////////////////////////////////////////////////////
}
