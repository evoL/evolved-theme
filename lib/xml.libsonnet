// Source: https://jsonnet.org/articles/output-formats.html

{
  // Serialize a XML document represented as a
  // Jsonnet value.  Each node of the XML tree
  // has a field 'tag', and optionally 'attrs'
  // (an string mapping), and 'has', an array
  // of children.
  manifestXmlObj(value)::
    local formatValue(v) =
      if std.isString(v) then '%s' % [v]
      else if std.isNumber(v) then '%f' % [v]
      else error 'Expected a string or number, got %s'
          % std.type(v);
    local aux(v, cindent) =
      if !std.isObject(v) then
        error 'Expected a object, got %s'
            % std.type(v)
      else
        local attrs = [
          ' %s="%s"' % [k, v.attrs[k]]
          for k in std.objectFields(v.attrs)
        ];
        if std.length(v.has) > 1 || (std.length(v.has) == 1 && std.isObject(v.has[0])) then
          std.deepJoin([
            cindent, '<', v.tag, attrs, '>\n',
            [
              aux(x, cindent + '  ')
              for x in v.has
            ],
            cindent, '</', v.tag, '>\n'
          ])
        else
          std.deepJoin([
            cindent, '<', v.tag, attrs, '>',
            if std.length(v.has) == 1 && !std.isObject(v.has[0])
              then formatValue(v.has[0])
              else '',
            '</', v.tag, '>\n']);
    aux(value, ''),

  // A convenience object whose attributes are
  // taken from the top-level non-hidden fields
  // of the object.  This works except for
  // attributes called 'tag' or 'has'.
  Element(tag):: {
    local element = self,
    tag:: tag,
    attrs:: {
      [k]: element[k]
      for k in std.objectFields(element)
    },
    has:: [],
  },
}