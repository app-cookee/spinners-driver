extension MapCleanup on Map<String, dynamic> {
  Map<String, dynamic> clean() {
    return _cleanMap(this);
  }
  Map<String, dynamic> _cleanMap(Map<String, dynamic> originalMap) {
    final newMap = Map<String, dynamic>.of(originalMap);
    newMap.forEach((key, value) {
      if (value is Map<String, dynamic>) {
        newMap[key] = _cleanMap(value);
      } else if (value is List) {
        newMap[key] = value.map((item) => item is Map<String, dynamic> ? _cleanMap(item) : item).toList();
      }
    });

    final keysToRemove = newMap.keys.where((k) => ['', 'null','0.0','[]'].contains(newMap[k].toString())).toList();

    for (final key in keysToRemove) {
      newMap.remove(key);
    }

    return newMap;
  }

  Map<String, dynamic> updateKeysFromIdToId() {
    var updatedMap = <String, dynamic>{};
    forEach((key, value) {
      // Update the key from '_id' to 'id'
      var newKey = key == '_id' ? 'id' : key;
      // Recursively update nested Maps and Lists
      if (value is Map<String, dynamic>) {
        updatedMap[newKey] = value.updateKeysFromIdToId();
      } else if (value is List) {
        updatedMap[newKey] = value.updateListsFromIdToId();
      } else {
        updatedMap[newKey] = value;
      }
    });
    return updatedMap;
  } 
}
extension UpdateJsonKeyExtensionOnList on List {
  List<dynamic> updateListsFromIdToId() {
    return map((item) {
      if (item is Map<String, dynamic>) {
        return item.updateKeysFromIdToId();
      } else if (item is List) {
        return item.updateListsFromIdToId();
      } else {
        return item;
      }
    }).toList();
  }
}