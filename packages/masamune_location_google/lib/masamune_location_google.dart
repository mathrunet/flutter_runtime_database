// Copyright 2023 mathru. All rights reserved.

/// Masamune plugin library for displaying GoogleMap including location information.
///
/// To use, import `package:masamune_location_google/masamune_location_google.dart`.
///
/// [mathru.net]: https://mathru.net
/// [YouTube]: https://www.youtube.com/c/mathrunetchannel
library masamune_location_google;

// Dart imports:
import 'dart:ui';

// Flutter imports:
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

// Package imports:
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:masamune/masamune.dart';
import 'package:masamune_location/masamune_location.dart';

export 'package:google_maps_flutter/google_maps_flutter.dart'
    show
        CameraPosition,
        MapCreatedCallback,
        CameraTargetBounds,
        MapType,
        MinMaxZoomPreference,
        CameraPositionCallback,
        ArgumentCallback,
        LatLng,
        BitmapDescriptor,
        Marker,
        Polygon,
        Polyline,
        Circle,
        TileOverlay;

part 'adapter/google_location_masamune_adapter.dart';

part 'src/map_style.dart';
part 'src/map_icon.dart';
part 'src/map_controller.dart';
part 'src/map_view.dart';
