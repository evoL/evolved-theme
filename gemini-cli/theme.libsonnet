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
    focused: d.fg.selection,
  },
  status: {
    success: d.text.ok,
    warning: d.text.warning,
    ['error']: d.text['error'],
  },
  ui: {
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
