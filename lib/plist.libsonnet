local xml = import './xml.libsonnet';

local elementMap = {
  number: (function(v) xml.Element('real') { has: [v] }),
  string: (function(v) xml.Element('string') { has: [v] }),
  boolean: (function(v) xml.Element(if v then 'true' else 'false')),
  object: (function(obj) xml.Element('dict') {
             has: std.flattenArrays([
               [
                 xml.Element('key') { has: [key] },
                 elementMap[std.type(obj[key])](obj[key]),
               ]
               for key in std.objectFields(obj)
             ]),
           }),
};

{
  manifestPlist(obj):: |||
    <?xml version="1.0" encoding="UTF-8"?>
    <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
  ||| + xml.manifestXmlObj(
    xml.Element('plist') {
      version: '1.0',
      has: [elementMap.object(obj)],
    }
  ),
}
