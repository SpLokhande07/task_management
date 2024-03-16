import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:task_management_flutter/core/components/events/controller/event_pod.dart';
part 'event_futures.g.dart';

@riverpod
getEventsWithData(GetEventsWithDataRef ref, DateTime date) async {
  return await ref.read(eventProvider.notifier).getEvents(date);
}
