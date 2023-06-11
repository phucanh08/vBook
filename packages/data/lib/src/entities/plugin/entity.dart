import 'package:objectbox/objectbox.dart';

@Entity(realClass: Plugin)
class Plugin {
  Plugin({
    required this.updatedAt,
    required this.name,
    required this.author,
    required this.path,
    required this.version,
    required this.source,
    required this.icon,
    required this.description,
    required this.type,
    required this.locale,
    required this.tag,
    this.id = 0,
  });

  @Id() int id;
  final int updatedAt;
  final String name;
  final String author;
  final String path;
  final int version;
  final String source;
  final String icon;
  final String description;
  final String type;
  final String locale;
  final String? tag;
}
