import 'package:final_task/data/app_repository.dart';
import 'package:final_task/models/models.dart';
import 'package:final_task/middleware/auth/auth_middleware.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';

EpicMiddleware<AppState> epicMiddleware(AppRepository repository) =>
    EpicMiddleware<AppState>(
      combineEpics<AppState>(
        <Epic<AppState>>[],
      ),
    );

List<Middleware<AppState>> middleware(AppRepository repository) =>
    <List<Middleware<AppState>>>[
      AuthMiddleware(repository: repository).createAuthMiddleware(),
    ].expand((List<Middleware<AppState>> list) => list).toList();
