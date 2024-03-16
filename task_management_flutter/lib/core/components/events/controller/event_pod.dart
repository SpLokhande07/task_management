import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_management_flutter/core/components/events/modal/event_modal.dart';

var eventProvider =
    StateNotifierProvider<EventPod, EventModal>((ref) => EventPod(ref));

class EventPod extends StateNotifier<EventModal> {
  Ref ref;
  EventPod(this.ref) : super(EventModal());

  getEvents(DateTime date) async {}
}
