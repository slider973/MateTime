# MateTime

## Structure du projet

├── create_project_structure.dart
├── lib/
│   ├── config/
│   │   ├── di/
│   │   │   ├── injection.dart
│   │   ├── routes/
│   │   ├── theme/
│   ├── core/
│   │   ├── errors/
│   │   ├── network/
│   │   ├── usecases/
│   │   ├── utils/
│   ├── features/
│   │   ├── auth/
│   │   │   ├── config/
│   │   │   │   ├── di/
│   │   │   │   │   ├── auth_injection.dart
│   │   │   ├── data/
│   │   │   │   ├── datasources/
│   │   │   │   │   ├── api/
│   │   │   │   │   │   ├── api_auth_service.dart
│   │   │   │   │   ├── firebase/
│   │   │   │   │   │   ├── firebase_auth_service.dart
│   │   │   │   ├── interfaces/
│   │   │   │   │   ├── auth_service.dart
│   │   │   │   ├── models/
│   │   │   │   ├── repositories/
│   │   │   │   │   ├── auth_repository_impl.dart
│   │   │   ├── domain/
│   │   │   │   ├── entities/
│   │   │   │   │   ├── user.dart
│   │   │   │   ├── repositories/
│   │   │   │   │   ├── auth_repository.dart
│   │   │   │   ├── usecases/
│   │   │   │   │   ├── sign_in_usecase.dart
│   │   │   ├── presentation/
│   │   │   │   ├── bloc/
│   │   │   │   │   ├── auth_bloc.dart
│   │   │   │   │   ├── auth_event.dart
│   │   │   │   │   ├── auth_state.dart
│   │   │   │   ├── pages/
│   │   │   │   │   ├── sign_in_page.dart
│   │   │   │   ├── widgets/
│   │   ├── home/
│   │   │   ├── config/
│   │   │   │   ├── di/
│   │   │   │   │   ├── home_injection.dart
│   │   │   ├── data/
│   │   │   │   ├── datasources/
│   │   │   │   ├── interfaces/
│   │   │   │   ├── models/
│   │   │   │   ├── repositories/
│   │   │   ├── domain/
│   │   │   │   ├── entities/
│   │   │   │   ├── repositories/
│   │   │   │   ├── usecases/
│   │   │   ├── presentation/
│   │   │   │   ├── bloc/
│   │   │   │   ├── pages/
│   │   │   │   ├── widgets/
│   │   ├── profile/
│   │   │   ├── config/
│   │   │   │   ├── di/
│   │   │   │   │   ├── profile_injection.dart
│   │   │   ├── data/
│   │   │   │   ├── datasources/
│   │   │   │   │   ├── firebase/
│   │   │   │   │   │   ├── firebase_profile_service.dart
│   │   │   │   ├── interfaces/
│   │   │   │   ├── models/
│   │   │   │   ├── repositories/
│   │   │   ├── domain/
│   │   │   │   ├── entities/
│   │   │   │   ├── repositories/
│   │   │   │   ├── usecases/
│   │   │   ├── presentation/
│   │   │   │   ├── bloc/
│   │   │   │   ├── pages/
│   │   │   │   ├── widgets/
│   ├── main.dart
├── pubspec.lock
├── pubspec.yaml
├── test/
│   ├── widget_test.dart
