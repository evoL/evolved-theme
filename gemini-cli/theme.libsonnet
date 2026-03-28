{
  local d = self.defs,
  defs:: error 'Missing color definitions in Gemini CLI theme',

  name: self.name,
  type: 'custom',
  background: {
    primary: d.bg.terminal,
    diff: {
      added: d.bg.addedLine,
      removed: d.bg.deletedLine,
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
    focused: d.outline.active,
  },
  status: {
    success: d.fg.ok,
    warning: d.fg.warning,
    ['error']: d.fg['error'],
  },
  ui: {
    comment: d.syntax.comment,
    symbol: d.syntax.operator,
    gradient: [
      d.palette.e(500),
      d.palette.v(500),
      d.palette.o(500),
      d.palette.l(500),
    ],
  },
}
