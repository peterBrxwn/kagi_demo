// Package imports:
import 'package:bloc_notification/bloc_notification.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

// Project imports:
import 'package:kagi_demo/core/bloc/observer.dart';
import 'package:kagi_demo/core/notifications/notification.dart';

class MockBloc extends Mock implements Bloc<dynamic, dynamic> {}

class MockNotification extends Mock implements BlocNotification {}

class MockHandleEvent extends Mock {
  void call(Bloc bloc, Object? event);
}

class MockHandleError extends Mock {
  void call(BlocBase bloc, Object error, StackTrace stackTrace);
}

class MockHandleNotification extends Mock {
  void call(Notification notification);
}

void main() {
  late KagiBlocObserver observer;
  late MockBloc mockBloc;
  late MockNotification mockNotification;
  late MockHandleEvent mockHandleEvent;
  late MockHandleError mockHandleError;
  late MockHandleNotification mockHandleNotification;

  setUp(() {
    mockHandleEvent = MockHandleEvent();
    mockHandleError = MockHandleError();
    mockHandleNotification = MockHandleNotification();
    observer = KagiBlocObserver(
      handleEvent: mockHandleEvent.call,
      handleError: mockHandleError.call,
      handleNotification: mockHandleNotification.call,
    );
    mockBloc = MockBloc();
    mockNotification = MockNotification();
  });

  group('KagiBlocObserver', () {
    test('onEvent is called and handleEvent is invoked', () {
      const event = 'TestEvent';

      observer.onEvent(mockBloc, event);

      verify(() => mockHandleEvent.call(mockBloc, event)).called(1);
    });

    test('onError is called and handleError is invoked', () {
      const error = 'TestError';
      final stackTrace = StackTrace.current;

      observer.onError(mockBloc, error, stackTrace);

      verify(() => mockHandleError.call(mockBloc, error, stackTrace)).called(1);
    });

    test('onNotification is called and handleNotification is invoked', () {
      final notification = Notification(message: 'Test Notification');
      when(() => mockNotification.notification).thenReturn(notification);

      observer.onNotification(mockBloc, mockNotification);

      verify(() => mockHandleNotification.call(notification)).called(1);
    });
  });
}
