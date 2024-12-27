local stripHash(hex) = std.lstripChars(hex, "#");

{
  local d = self.defs,
  defs:: error "Missing color definitions in Ghostty theme",

  background: stripHash(d.bg.terminal),
  foreground: stripHash(d.text.terminal),
  "selection-background": stripHash(d.bg.selection),
  "selection-foreground": stripHash(d.text.selection),
  "cursor-color": stripHash(d.bg.cursor),
  "cursor-text": stripHash(d.text.cursor),

  palette: [
    d.ansi.black,
    d.ansi.red,
    d.ansi.green,
    d.ansi.yellow,
    d.ansi.blue,
    d.ansi.magenta,
    d.ansi.cyan,
    d.ansi.white,
    d.ansi.brightBlack,
    d.ansi.brightRed,
    d.ansi.brightGreen,
    d.ansi.brightYellow,
    d.ansi.brightBlue,
    d.ansi.brightMagenta,
    d.ansi.brightCyan,
    d.ansi.brightWhite,
  ],
}
