// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'document_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DocumentsState {

 List<DocumentEntity> get documents; bool get isLoading; String? get errorMessage;
/// Create a copy of DocumentsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DocumentsStateCopyWith<DocumentsState> get copyWith => _$DocumentsStateCopyWithImpl<DocumentsState>(this as DocumentsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DocumentsState&&const DeepCollectionEquality().equals(other.documents, documents)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(documents),isLoading,errorMessage);

@override
String toString() {
  return 'DocumentsState(documents: $documents, isLoading: $isLoading, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $DocumentsStateCopyWith<$Res>  {
  factory $DocumentsStateCopyWith(DocumentsState value, $Res Function(DocumentsState) _then) = _$DocumentsStateCopyWithImpl;
@useResult
$Res call({
 List<DocumentEntity> documents, bool isLoading, String? errorMessage
});




}
/// @nodoc
class _$DocumentsStateCopyWithImpl<$Res>
    implements $DocumentsStateCopyWith<$Res> {
  _$DocumentsStateCopyWithImpl(this._self, this._then);

  final DocumentsState _self;
  final $Res Function(DocumentsState) _then;

/// Create a copy of DocumentsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? documents = null,Object? isLoading = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
documents: null == documents ? _self.documents : documents // ignore: cast_nullable_to_non_nullable
as List<DocumentEntity>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DocumentsState].
extension DocumentsStatePatterns on DocumentsState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DocumentsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DocumentsState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DocumentsState value)  $default,){
final _that = this;
switch (_that) {
case _DocumentsState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DocumentsState value)?  $default,){
final _that = this;
switch (_that) {
case _DocumentsState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<DocumentEntity> documents,  bool isLoading,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DocumentsState() when $default != null:
return $default(_that.documents,_that.isLoading,_that.errorMessage);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<DocumentEntity> documents,  bool isLoading,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _DocumentsState():
return $default(_that.documents,_that.isLoading,_that.errorMessage);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<DocumentEntity> documents,  bool isLoading,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _DocumentsState() when $default != null:
return $default(_that.documents,_that.isLoading,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _DocumentsState implements DocumentsState {
  const _DocumentsState({final  List<DocumentEntity> documents = const [], this.isLoading = false, this.errorMessage}): _documents = documents;
  

 final  List<DocumentEntity> _documents;
@override@JsonKey() List<DocumentEntity> get documents {
  if (_documents is EqualUnmodifiableListView) return _documents;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_documents);
}

@override@JsonKey() final  bool isLoading;
@override final  String? errorMessage;

/// Create a copy of DocumentsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DocumentsStateCopyWith<_DocumentsState> get copyWith => __$DocumentsStateCopyWithImpl<_DocumentsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DocumentsState&&const DeepCollectionEquality().equals(other._documents, _documents)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_documents),isLoading,errorMessage);

@override
String toString() {
  return 'DocumentsState(documents: $documents, isLoading: $isLoading, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$DocumentsStateCopyWith<$Res> implements $DocumentsStateCopyWith<$Res> {
  factory _$DocumentsStateCopyWith(_DocumentsState value, $Res Function(_DocumentsState) _then) = __$DocumentsStateCopyWithImpl;
@override @useResult
$Res call({
 List<DocumentEntity> documents, bool isLoading, String? errorMessage
});




}
/// @nodoc
class __$DocumentsStateCopyWithImpl<$Res>
    implements _$DocumentsStateCopyWith<$Res> {
  __$DocumentsStateCopyWithImpl(this._self, this._then);

  final _DocumentsState _self;
  final $Res Function(_DocumentsState) _then;

/// Create a copy of DocumentsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? documents = null,Object? isLoading = null,Object? errorMessage = freezed,}) {
  return _then(_DocumentsState(
documents: null == documents ? _self._documents : documents // ignore: cast_nullable_to_non_nullable
as List<DocumentEntity>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
