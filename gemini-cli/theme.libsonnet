{
  local d = self.defs,
  defs:: error 'Missing color definitions in Gemini CLI theme',

  name: self.name,
  type: 'custom',
  background: {
    primary: d.bg.terminal,
    diff: {
      added: d.bg.added,
      removed: d.bg.deleted,
    },
  },
  text: {
    primary: d.text.terminal,
    secondary: d.text.dim,
    link: d.text.link,
    accent: d.text.accent,
  },
  border: {
    default: d.outline.ui,
  },
  status: {
    success: d.text.ok,
    warning: d.text.warning,
    ['error']: d.text['error'],
  },
  ui: {
    // Primary foreground color for selected/focused values.
    focus: d.fg.selection,
    active: d.fg.info,
    comment: d.syntax.comment,
    symbol: d.syntax.operator,
    gradient: [
      d.palette.e(600),
      d.palette.v(800),
      d.palette.o(700),
      d.palette.l(600),
    ],
  },
}
