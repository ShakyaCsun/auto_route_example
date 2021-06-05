// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'books_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BookTearOff {
  const _$BookTearOff();

  _Book call({required int id, required String title}) {
    return _Book(
      id: id,
      title: title,
    );
  }
}

/// @nodoc
const $Book = _$BookTearOff();

/// @nodoc
mixin _$Book {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookCopyWith<Book> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookCopyWith<$Res> {
  factory $BookCopyWith(Book value, $Res Function(Book) then) =
      _$BookCopyWithImpl<$Res>;
  $Res call({int id, String title});
}

/// @nodoc
class _$BookCopyWithImpl<$Res> implements $BookCopyWith<$Res> {
  _$BookCopyWithImpl(this._value, this._then);

  final Book _value;
  // ignore: unused_field
  final $Res Function(Book) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$BookCopyWith<$Res> implements $BookCopyWith<$Res> {
  factory _$BookCopyWith(_Book value, $Res Function(_Book) then) =
      __$BookCopyWithImpl<$Res>;
  @override
  $Res call({int id, String title});
}

/// @nodoc
class __$BookCopyWithImpl<$Res> extends _$BookCopyWithImpl<$Res>
    implements _$BookCopyWith<$Res> {
  __$BookCopyWithImpl(_Book _value, $Res Function(_Book) _then)
      : super(_value, (v) => _then(v as _Book));

  @override
  _Book get _value => super._value as _Book;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
  }) {
    return _then(_Book(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Book implements _Book {
  const _$_Book({required this.id, required this.title});

  @override
  final int id;
  @override
  final String title;

  @override
  String toString() {
    return 'Book(id: $id, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Book &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title);

  @JsonKey(ignore: true)
  @override
  _$BookCopyWith<_Book> get copyWith =>
      __$BookCopyWithImpl<_Book>(this, _$identity);
}

abstract class _Book implements Book {
  const factory _Book({required int id, required String title}) = _$_Book;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BookCopyWith<_Book> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$BooksEventTearOff {
  const _$BooksEventTearOff();

  _Requested requested() {
    return const _Requested();
  }
}

/// @nodoc
const $BooksEvent = _$BooksEventTearOff();

/// @nodoc
mixin _$BooksEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Requested value) requested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Requested value)? requested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BooksEventCopyWith<$Res> {
  factory $BooksEventCopyWith(
          BooksEvent value, $Res Function(BooksEvent) then) =
      _$BooksEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$BooksEventCopyWithImpl<$Res> implements $BooksEventCopyWith<$Res> {
  _$BooksEventCopyWithImpl(this._value, this._then);

  final BooksEvent _value;
  // ignore: unused_field
  final $Res Function(BooksEvent) _then;
}

/// @nodoc
abstract class _$RequestedCopyWith<$Res> {
  factory _$RequestedCopyWith(
          _Requested value, $Res Function(_Requested) then) =
      __$RequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$RequestedCopyWithImpl<$Res> extends _$BooksEventCopyWithImpl<$Res>
    implements _$RequestedCopyWith<$Res> {
  __$RequestedCopyWithImpl(_Requested _value, $Res Function(_Requested) _then)
      : super(_value, (v) => _then(v as _Requested));

  @override
  _Requested get _value => super._value as _Requested;
}

/// @nodoc

class _$_Requested implements _Requested {
  const _$_Requested();

  @override
  String toString() {
    return 'BooksEvent.requested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Requested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requested,
  }) {
    return requested();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requested,
    required TResult orElse(),
  }) {
    if (requested != null) {
      return requested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Requested value) requested,
  }) {
    return requested(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Requested value)? requested,
    required TResult orElse(),
  }) {
    if (requested != null) {
      return requested(this);
    }
    return orElse();
  }
}

abstract class _Requested implements BooksEvent {
  const factory _Requested() = _$_Requested;
}

/// @nodoc
class _$BooksStateTearOff {
  const _$BooksStateTearOff();

  BooksInitial initial() {
    return const BooksInitial();
  }

  BooksInProgress inProgress() {
    return const BooksInProgress();
  }

  BooksSuccess success({required List<Book> books}) {
    return BooksSuccess(
      books: books,
    );
  }

  BooksFailure failure({required String message}) {
    return BooksFailure(
      message: message,
    );
  }
}

/// @nodoc
const $BooksState = _$BooksStateTearOff();

/// @nodoc
mixin _$BooksState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(List<Book> books) success,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<Book> books)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BooksInitial value) initial,
    required TResult Function(BooksInProgress value) inProgress,
    required TResult Function(BooksSuccess value) success,
    required TResult Function(BooksFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BooksInitial value)? initial,
    TResult Function(BooksInProgress value)? inProgress,
    TResult Function(BooksSuccess value)? success,
    TResult Function(BooksFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BooksStateCopyWith<$Res> {
  factory $BooksStateCopyWith(
          BooksState value, $Res Function(BooksState) then) =
      _$BooksStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$BooksStateCopyWithImpl<$Res> implements $BooksStateCopyWith<$Res> {
  _$BooksStateCopyWithImpl(this._value, this._then);

  final BooksState _value;
  // ignore: unused_field
  final $Res Function(BooksState) _then;
}

/// @nodoc
abstract class $BooksInitialCopyWith<$Res> {
  factory $BooksInitialCopyWith(
          BooksInitial value, $Res Function(BooksInitial) then) =
      _$BooksInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$BooksInitialCopyWithImpl<$Res> extends _$BooksStateCopyWithImpl<$Res>
    implements $BooksInitialCopyWith<$Res> {
  _$BooksInitialCopyWithImpl(
      BooksInitial _value, $Res Function(BooksInitial) _then)
      : super(_value, (v) => _then(v as BooksInitial));

  @override
  BooksInitial get _value => super._value as BooksInitial;
}

/// @nodoc

class _$BooksInitial implements BooksInitial {
  const _$BooksInitial();

  @override
  String toString() {
    return 'BooksState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is BooksInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(List<Book> books) success,
    required TResult Function(String message) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<Book> books)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BooksInitial value) initial,
    required TResult Function(BooksInProgress value) inProgress,
    required TResult Function(BooksSuccess value) success,
    required TResult Function(BooksFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BooksInitial value)? initial,
    TResult Function(BooksInProgress value)? inProgress,
    TResult Function(BooksSuccess value)? success,
    TResult Function(BooksFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class BooksInitial implements BooksState {
  const factory BooksInitial() = _$BooksInitial;
}

/// @nodoc
abstract class $BooksInProgressCopyWith<$Res> {
  factory $BooksInProgressCopyWith(
          BooksInProgress value, $Res Function(BooksInProgress) then) =
      _$BooksInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$BooksInProgressCopyWithImpl<$Res> extends _$BooksStateCopyWithImpl<$Res>
    implements $BooksInProgressCopyWith<$Res> {
  _$BooksInProgressCopyWithImpl(
      BooksInProgress _value, $Res Function(BooksInProgress) _then)
      : super(_value, (v) => _then(v as BooksInProgress));

  @override
  BooksInProgress get _value => super._value as BooksInProgress;
}

/// @nodoc

class _$BooksInProgress implements BooksInProgress {
  const _$BooksInProgress();

  @override
  String toString() {
    return 'BooksState.inProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is BooksInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(List<Book> books) success,
    required TResult Function(String message) failure,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<Book> books)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BooksInitial value) initial,
    required TResult Function(BooksInProgress value) inProgress,
    required TResult Function(BooksSuccess value) success,
    required TResult Function(BooksFailure value) failure,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BooksInitial value)? initial,
    TResult Function(BooksInProgress value)? inProgress,
    TResult Function(BooksSuccess value)? success,
    TResult Function(BooksFailure value)? failure,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class BooksInProgress implements BooksState {
  const factory BooksInProgress() = _$BooksInProgress;
}

/// @nodoc
abstract class $BooksSuccessCopyWith<$Res> {
  factory $BooksSuccessCopyWith(
          BooksSuccess value, $Res Function(BooksSuccess) then) =
      _$BooksSuccessCopyWithImpl<$Res>;
  $Res call({List<Book> books});
}

/// @nodoc
class _$BooksSuccessCopyWithImpl<$Res> extends _$BooksStateCopyWithImpl<$Res>
    implements $BooksSuccessCopyWith<$Res> {
  _$BooksSuccessCopyWithImpl(
      BooksSuccess _value, $Res Function(BooksSuccess) _then)
      : super(_value, (v) => _then(v as BooksSuccess));

  @override
  BooksSuccess get _value => super._value as BooksSuccess;

  @override
  $Res call({
    Object? books = freezed,
  }) {
    return _then(BooksSuccess(
      books: books == freezed
          ? _value.books
          : books // ignore: cast_nullable_to_non_nullable
              as List<Book>,
    ));
  }
}

/// @nodoc

class _$BooksSuccess implements BooksSuccess {
  const _$BooksSuccess({required this.books});

  @override
  final List<Book> books;

  @override
  String toString() {
    return 'BooksState.success(books: $books)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BooksSuccess &&
            (identical(other.books, books) ||
                const DeepCollectionEquality().equals(other.books, books)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(books);

  @JsonKey(ignore: true)
  @override
  $BooksSuccessCopyWith<BooksSuccess> get copyWith =>
      _$BooksSuccessCopyWithImpl<BooksSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(List<Book> books) success,
    required TResult Function(String message) failure,
  }) {
    return success(books);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<Book> books)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(books);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BooksInitial value) initial,
    required TResult Function(BooksInProgress value) inProgress,
    required TResult Function(BooksSuccess value) success,
    required TResult Function(BooksFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BooksInitial value)? initial,
    TResult Function(BooksInProgress value)? inProgress,
    TResult Function(BooksSuccess value)? success,
    TResult Function(BooksFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class BooksSuccess implements BooksState {
  const factory BooksSuccess({required List<Book> books}) = _$BooksSuccess;

  List<Book> get books => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BooksSuccessCopyWith<BooksSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BooksFailureCopyWith<$Res> {
  factory $BooksFailureCopyWith(
          BooksFailure value, $Res Function(BooksFailure) then) =
      _$BooksFailureCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$BooksFailureCopyWithImpl<$Res> extends _$BooksStateCopyWithImpl<$Res>
    implements $BooksFailureCopyWith<$Res> {
  _$BooksFailureCopyWithImpl(
      BooksFailure _value, $Res Function(BooksFailure) _then)
      : super(_value, (v) => _then(v as BooksFailure));

  @override
  BooksFailure get _value => super._value as BooksFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(BooksFailure(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BooksFailure implements BooksFailure {
  const _$BooksFailure({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'BooksState.failure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BooksFailure &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $BooksFailureCopyWith<BooksFailure> get copyWith =>
      _$BooksFailureCopyWithImpl<BooksFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(List<Book> books) success,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<Book> books)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BooksInitial value) initial,
    required TResult Function(BooksInProgress value) inProgress,
    required TResult Function(BooksSuccess value) success,
    required TResult Function(BooksFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BooksInitial value)? initial,
    TResult Function(BooksInProgress value)? inProgress,
    TResult Function(BooksSuccess value)? success,
    TResult Function(BooksFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class BooksFailure implements BooksState {
  const factory BooksFailure({required String message}) = _$BooksFailure;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BooksFailureCopyWith<BooksFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
