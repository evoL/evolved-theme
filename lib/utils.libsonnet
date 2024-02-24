{
  hexToRgb(color)::
    assert std.isString(color) && std.length(color) == 7 : 'Invalid hex color';
    [
      std.parseHex(color[1:3]),
      std.parseHex(color[3:5]),
      std.parseHex(color[5:7]),
    ],
}
