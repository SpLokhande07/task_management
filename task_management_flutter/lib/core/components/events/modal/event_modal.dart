import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_management_flutter/core/components/events/constants.dart';
part 'event_modal.freezed.dart';
part 'event_modal.g.dart';

@freezed
class EventModal with _$EventModal {
  factory EventModal({
    String? title,
    String? description,
    DateTime? date,
    String? time,
    String? location,
    String? category,
    String? color,
    String? image,
    EventType? type,
  }) = _EventModal;

  // //create default constructor
  // factory EventModal.initial() => EventModal(
  //     title: '',
  //     description: '',
  //     date: DateTime.now(),
  //     time: '',
  //     location: '',
  //     category: '',
  //     color: '',
  //     image: '',
  //     type: EventType.birthday);

  factory EventModal.fromJson(Map<String, dynamic> json) =>
      _$EventModalFromJson(json);
}
