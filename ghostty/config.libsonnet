{
  manifestGhosttyConfig(obj):: 
    assert std.isObject(obj) : "A Ghostty config can only be manifested from an object";

    local formatKeyValue(key, value) =
      if std.isArray(value) then
        std.mapWithIndex(
          (function(i, el) "%s = %d=%s" % [key, i, el]),
        value)
      else ["%s = %s" % [key, value]];

    std.join("\n", std.flattenArrays([
      formatKeyValue(key, obj[key])
      for key in std.objectFields(obj)
    ]))
}
