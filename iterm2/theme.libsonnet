local utils = import '../lib/utils.libsonnet';

local fromHexColor(hex, alpha=1) = {
  local rgb = utils.hexToRgb(hex),

  "Red Component": rgb[0] / 255,
  "Green Component": rgb[1] / 255,
  "Blue Component": rgb[2] / 255,
  "Alpha Component": alpha,
  "Color Space": "sRGB",
};

{
  local d = self.defs,
  defs:: error "Missing color definitions in iTerm2 theme",

  "Foreground Color": fromHexColor(d.text.terminal),
  "Background Color": fromHexColor(d.bg.terminal),
  "Bold Color": fromHexColor(d.text.terminalBold),
  "Link Color": fromHexColor(d.text.link),
  "Badge Color": fromHexColor(d.bg.badge),
  "Selection Color": fromHexColor(d.bg.selection),
  "Selected Text Color": fromHexColor(d.text.selection),
  "Tab Color": fromHexColor(d.bg.terminal),
  "Cursor Color": fromHexColor(d.bg.cursor),
  "Cursor Text Color": fromHexColor(d.text.cursor),
  "Cursor Guide Color": fromHexColor(d.text.cursor, alpha = 0.25),

  "Ansi 0 Color": fromHexColor(d.ansi.black),
  "Ansi 1 Color": fromHexColor(d.ansi.red),
  "Ansi 2 Color": fromHexColor(d.ansi.green),
  "Ansi 3 Color": fromHexColor(d.ansi.yellow),
  "Ansi 4 Color": fromHexColor(d.ansi.blue),
  "Ansi 5 Color": fromHexColor(d.ansi.magenta),
  "Ansi 6 Color": fromHexColor(d.ansi.cyan),
  "Ansi 7 Color": fromHexColor(d.ansi.white),
  "Ansi 8 Color": fromHexColor(d.ansi.brightBlack),
  "Ansi 9 Color": fromHexColor(d.ansi.brightRed),
  "Ansi 10 Color": fromHexColor(d.ansi.brightGreen),
  "Ansi 11 Color": fromHexColor(d.ansi.brightYellow),
  "Ansi 12 Color": fromHexColor(d.ansi.brightBlue),
  "Ansi 13 Color": fromHexColor(d.ansi.brightMagenta),
  "Ansi 14 Color": fromHexColor(d.ansi.brightCyan),
  "Ansi 15 Color": fromHexColor(d.ansi.brightWhite),
}