import 'package:equatable/equatable.dart';

class Tag extends Equatable {
  final String name;
  final String url;

  const Tag({required this.name, required this.url});

  @override
  List<Object?> get props => [name, url];
}