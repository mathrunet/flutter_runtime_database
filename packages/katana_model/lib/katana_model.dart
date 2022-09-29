// Copyright 2023 mathru. All rights reserved.

/// Package that defines and notifies the model.
///
/// To use, import `package:katana_model/katana_model.dart`.
///
/// [mathru.net]: https://mathru.net
/// [YouTube]: https://www.youtube.com/c/mathrunetchannel
library katana_model;

import 'dart:async';
import 'dart:collection';
import 'dart:math';

import 'package:flutter/widgets.dart';
import 'package:katana/katana.dart';

export 'package:katana/katana.dart';

part 'adapter/runtime_model_adapter.dart';

part 'extension/searchable_document_mixin.dart';

part 'src/model_update_notification.dart';
part 'src/document_base.dart';
part 'src/model_adapter.dart';
part 'src/no_sql_database.dart';
part 'src/model_query.dart';
part 'src/collection_base.dart';
part 'src/loadable_document.dart';
part 'src/savable_document.dart';
part 'src/loadable_collection.dart';
part 'src/listenable_listener.dart';
