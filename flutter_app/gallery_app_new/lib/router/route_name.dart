enum AppRouteNames {
  home(path: '/'),
  richText(path: '/richText'),
  stack(path: '/stack'),
  rowColumn(path: '/rowColumn'),
  container(path: '/container'),
  button(path: '/button'),
  textField(path: '/textField'),
  wrapChip(path: '/wrapChip'),
  bottomAppbar(path: '/bottomAppbar');

  const AppRouteNames({
    required this.path,
    this.paramName,
  });

  final String path;
  final String? paramName;

  String get name => path;

  String get subPath {
    if (path == '/') {
      return path;
    }
    return path.replaceFirst('/', '');
  }

  String get buildPathParam => '$path:$paramName';
  String get buildSubPathParam => '$subPath:$paramName';
}