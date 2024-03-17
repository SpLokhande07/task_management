/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'dart:async' as _i2;
import 'package:task_management_client/src/helper/response.dart' as _i3;
import 'package:task_management_client/src/protocol/events/event.dart' as _i4;
import 'package:serverpod_auth_client/module.dart' as _i5;
import 'protocol.dart' as _i6;

/// {@category Endpoint}
class EndpointEvent extends _i1.EndpointRef {
  EndpointEvent(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'event';

  _i2.Future<_i3.Response> createEvent(_i4.Event event) =>
      caller.callServerEndpoint<_i3.Response>(
        'event',
        'createEvent',
        {'event': event},
      );
}

/// {@category Endpoint}
class EndpointExample extends _i1.EndpointRef {
  EndpointExample(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'example';

  _i2.Future<String> hello(String name) => caller.callServerEndpoint<String>(
        'example',
        'hello',
        {'name': name},
      );
}

class _Modules {
  _Modules(Client client) {
    auth = _i5.Caller(client);
  }

  late final _i5.Caller auth;
}

class Client extends _i1.ServerpodClient {
  Client(
    String host, {
    dynamic securityContext,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
    Duration? streamingConnectionTimeout,
    Duration? connectionTimeout,
  }) : super(
          host,
          _i6.Protocol(),
          securityContext: securityContext,
          authenticationKeyManager: authenticationKeyManager,
          streamingConnectionTimeout: streamingConnectionTimeout,
          connectionTimeout: connectionTimeout,
        ) {
    event = EndpointEvent(this);
    example = EndpointExample(this);
    modules = _Modules(this);
  }

  late final EndpointEvent event;

  late final EndpointExample example;

  late final _Modules modules;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'event': event,
        'example': example,
      };

  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup =>
      {'auth': modules.auth};
}
