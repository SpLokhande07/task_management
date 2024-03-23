import 'package:serverpod/serverpod.dart';
import 'package:task_management_server/src/generated/protocol.dart';
import 'package:task_management_server/src/helper/response.dart';
import 'package:task_management_server/src/strings/message.dart';

class EventEndpoint extends Endpoint {
  Future<Response> createEvent(Session session, Event event) async {
    try {
      Event newEvent = await Event.db.insertRow(session, event);

      return Response(
        statusCode: 200,
        data: newEvent.toJson(),
        message: Messages().event_created_successfully,
      );
    } catch (e) {
      return Response(
        statusCode: 400,
        message: e.toString(),
      );
    }
  }
}
