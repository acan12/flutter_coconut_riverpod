enum Flavor {
  staging,
  prod,
}

class F {
  static late final Flavor appFlavor;

  static String get name => appFlavor.name;

  static String get title {
    switch (appFlavor) {
      case Flavor.staging:
        return 'Demo Staging';
      case Flavor.prod:
        return 'Demo Prod';
    }
  }

}
