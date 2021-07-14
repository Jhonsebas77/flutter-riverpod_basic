import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:river_pod_basic/src/features/jokes/data/models/flags_model.dart';

part 'jokes_model.g.dart';

@JsonSerializable()
class JokeModel extends Equatable {
  final String? category;
  final String? delivery;
  final FlagsModel? flags;
  final int? id;
  final bool? safe;
  final String? setup;
  final String? type;

  JokeModel(
    this.category,
    this.delivery,
    this.flags,
    this.id,
    this.safe,
    this.setup,
    this.type,
  );

  factory JokeModel.fromJson(Map<String, dynamic> json) =>
      _$JokeModelFromJson(json);

  Map<String, dynamic> toJson() => _$JokeModelToJson(this);
  @override
  List<Object?> get props => [];

  @override
  String toString() {
    return '<JokeModel> -> category :$category, delivery :$delivery,safe :$safe,setup :$setup,type :$type';
  }
}
