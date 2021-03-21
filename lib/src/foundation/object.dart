// This file was copied from the Flutter source code and modified for use
// by the flutter_polyfill package. The original source is Copyright 2014
// The Flutter Authors and is governed by a BSD-style license that can be
// found at: https://github.com/flutter/flutter/blob/master/LICENSE

/// Framework code should use this method in favor of calling `toString` on
/// [Object.runtimeType].
///
/// Calling `toString` on a runtime type is a non-trivial operation that can
/// negatively impact performance. If asserts are enabled, this method will
/// return `object.runtimeType.toString()`; otherwise, it will return the
/// [optimizedValue], which must be a simple constant string.
String objectRuntimeType(Object? object, String optimizedValue) {
  assert(() {
    optimizedValue = object.runtimeType.toString();
    return true;
  }());
  return optimizedValue;
}
