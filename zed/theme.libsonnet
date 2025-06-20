local textmate = import '../lib/textmate.libsonnet';
local alpha(num) = std.format('%02x', num / 100 * 255);
local PlayerDef(paletteFn) = {
  cursor: paletteFn('foreground'),
  background: paletteFn('foreground'),
  selection: paletteFn('foreground') + alpha(20),
};

{
  local d = self.defs,
  local tm = textmate { defs:: d },

  defs:: error 'Missing color definitions in Zed theme',

  name: error 'Missing name for Zed theme',
  appearance: error 'Missing appearance (light/dark) for Zed theme',
  accents: [
    d.palette.v('foreground'),
    d.palette.o('foreground'),
    d.palette.l('foreground'),
    d.palette.e('foreground'),
    d.palette.pink('foreground'),
    d.palette.cyan('foreground'),
  ],
  style: {
    background: d.bg.ui,
    foreground: d.fg.ui,

    border: d.outline.ui,
    'border.disabled': d.outline.ui,
    'border.focused': d.outline.active,
    'border.selected': d.outline.active,
    'border.transparent': d.outline.ui + alpha(0),
    'border.variant': d.outline.ruler,

    text: d.text.ui,
    'text.accent': d.text.accent,
    'text.disabled': d.text.inactive,
    'text.muted': d.text.dim,
    'text.placeholder': d.text.inactive,

    'elevated_surface.background': d.bg.elevatedUi,
    'surface.background': d.bg.ui,

    // Other editors don't have a concept of "elements" and "ghost elements",
    // where it's only possible to control the background color and not the
    // foreground. To handle those, the Zed theme reaches directly to the
    // palette.

    'element.background': d.palette.neutral('background', -2),
    // Also used for hovering stuff in code.
    'element.hover': d.palette.accent('foreground', +4),
    'element.active': d.palette.accent('foreground', +5),
    'element.selected': d.palette.accent('foreground', +4),
    'element.disabled': d.bg.inactive,

    'ghost_element.background': '#00000000',
    'ghost_element.hover': d.palette.neutral('foreground') + alpha(8),
    'ghost_element.active': d.palette.neutral('foreground') + alpha(12),
    'ghost_element.selected': d.palette.neutral('foreground') + alpha(8),
    'ghost_element.disabled': d.bg.inactive,

    'drop_target.background': d.bg.selection + alpha(30),

    icon: d.fg.ui,
    'icon.accent': d.fg.accent,
    'icon.disabled': d.fg.inactive,
    'icon.muted': d.fg.dim,
    'icon.placeholder': d.fg.inactive,

    'status_bar.background': d.bg.ui,

    'title_bar.background': d.bg.ui,
    'title_bar.inactive_background': d.bg.inactive,

    'toolbar.background': d.bg.code,

    'tab_bar.background': d.bg.ui,
    'tab.inactive_background': d.bg.ui,
    'tab.active_background': d.bg.code,

    'search.match_background': d.bg.findMatch,

    'panel.background': d.bg.ui,
    'panel.focused_border': d.outline.active,

    'pane.focused_border': null,

    'scrollbar.thumb.background': d.bg.scrollbar + alpha(30),  // alpha unused in sidebar
    'scrollbar.thumb.hover_background': d.bg.scrollbar + alpha(50),  // unused?
    'scrollbar.thumb.border': d.outline.pronounced,
    'scrollbar.track.background': d.outline.ruler + alpha(5),
    'scrollbar.track.border': d.outline.ruler,

    'editor.foreground': d.text.code,
    'editor.background': d.bg.code,
    'editor.gutter.background': d.bg.code,
    'editor.subheader.background': d.bg.code,
    'editor.active_line.background': d.bg.currentLine,
    'editor.highlighted_line.background': d.bg.currentLine,
    'editor.line_number': d.text.inactive,
    'editor.active_line_number': d.text.accent,
    'editor.invisible': d.text.whitespace + alpha(40),
    'editor.indent_guide': d.outline.indentGuide + alpha(30),
    'editor.indent_guide_active': d.outline.activeIndentGuide,
    'editor.wrap_guide': d.outline.ruler,
    'editor.active_wrap_guide': d.outline.ruler,  // ?
    'editor.document_highlight.read_background': d.bg.wordHighlight + alpha(30),
    'editor.document_highlight.write_background': d.bg.strongWordHighlight + alpha(40),

    'terminal.background': d.bg.terminal,
    'terminal.foreground': d.text.terminal,
    'terminal.bright_foreground': d.text.terminalBold,
    'terminal.dim_foreground': d.text.terminal,
    'terminal.ansi.black': d.ansi.black,
    'terminal.ansi.bright_black': d.ansi.brightBlack,
    'terminal.ansi.dim_black': d.ansi.black,
    'terminal.ansi.red': d.ansi.red,
    'terminal.ansi.bright_red': d.ansi.brightRed,
    'terminal.ansi.dim_red': d.ansi.red,
    'terminal.ansi.green': d.ansi.green,
    'terminal.ansi.bright_green': d.ansi.brightGreen,
    'terminal.ansi.dim_green': d.ansi.green,
    'terminal.ansi.yellow': d.ansi.yellow,
    'terminal.ansi.bright_yellow': d.ansi.brightYellow,
    'terminal.ansi.dim_yellow': d.ansi.yellow,
    'terminal.ansi.blue': d.ansi.blue,
    'terminal.ansi.bright_blue': d.ansi.brightBlue,
    'terminal.ansi.dim_blue': d.ansi.blue,
    'terminal.ansi.magenta': d.ansi.magenta,
    'terminal.ansi.bright_magenta': d.ansi.brightMagenta,
    'terminal.ansi.dim_magenta': d.ansi.magenta,
    'terminal.ansi.cyan': d.ansi.cyan,
    'terminal.ansi.bright_cyan': d.ansi.brightCyan,
    'terminal.ansi.dim_cyan': d.ansi.cyan,
    'terminal.ansi.white': d.ansi.white,
    'terminal.ansi.bright_white': d.ansi.brightWhite,
    'terminal.ansi.dim_white': d.ansi.white,

    'link_text.hover': d.text.activeLink,

    // Used for gutter and background (with added alpha).
    'version_control.added': d.fg.added,
    'version_control.modified': d.fg.modified,
    'version_control.deleted': d.fg.deleted,

    conflict: d.fg.conflicting,
    'conflict.background': d.bg.conflicting,
    'conflict.border': d.outline.conflicting,

    created: d.fg.added,
    'created.background': d.bg.added,
    'created.border': d.outline.added,

    deleted: d.fg.deleted,
    'deleted.background': d.bg.deleted,
    'deleted.border': d.outline.deleted,

    'error': d.fg['error'],
    'error.background': d.bg['error'],
    'error.border': d.fg['error'],

    hidden: d.text.inactive,
    'hidden.background': d.bg.inactive,
    'hidden.border': d.outline.inactive,

    hint: d.text.dim,
    'hint.background': d.bg.hint,
    'hint.border': d.bg.hint,

    ignored: d.fg.ignored,
    'ignored.background': d.bg.ignored,
    'ignored.border': d.outline.ignored,

    info: d.text.info,
    // Also used for active buttons.
    'info.background': d.palette.accent('foreground', +2) + alpha(24),
    'info.border': d.fg.info,

    modified: d.fg.modified,
    'modified.background': d.bg.modified,
    'modified.border': d.outline.modified,

    predictive: d.text.predictive,
    'predictive.background': d.bg.predictive,
    'predictive.border': d.outline.predictive,

    renamed: d.fg.renamed,
    'renamed.background': d.bg.renamed,
    'renamed.border': d.outline.renamed,

    success: d.text.ok,
    'success.background': d.bg.ok + alpha(30),
    'success.border': d.fg.ok,

    unreachable: d.text.inactive,
    'unreachable.background': d.bg.inactive,
    'unreachable.border': d.outline.inactive,

    warning: d.text.warning,
    'warning.background': d.bg.warning + alpha(30),
    'warning.border': d.fg.warning,

    players: [
      PlayerDef(d.palette.v),
      PlayerDef(d.palette.o),
      PlayerDef(d.palette.l),
      PlayerDef(d.palette.e),
      PlayerDef(d.palette.pink),
      PlayerDef(d.palette.cyan),
      PlayerDef(d.palette.neutral),
    ],

    syntax: {
      local SyntaxDef = {
        color: null,
        font_style: null,
        font_weight: null,
      },

      // Keys described in
      // https://zed.dev/docs/extensions/languages#syntax-highlighting
      attribute: SyntaxDef { color: d.syntax.attribute },
      boolean: SyntaxDef { color: d.syntax.keyword },
      comment: SyntaxDef {
        color: d.syntax.comment,
        font_style: 'italic',
      },
      'comment.doc': SyntaxDef {
        color: d.syntax.comment,
        font_style: 'italic',
      },
      constant: SyntaxDef { color: d.syntax.localVariable },
      constructor: SyntaxDef { color: d.syntax['function'] },
      embedded: SyntaxDef { color: d.syntax.codeBlock },
      emphasis: SyntaxDef { color: d.text.code, font_style: 'italic' },
      'emphasis.strong': SyntaxDef { color: d.text.code, font_weight: 700 },
      enum: SyntaxDef { color: d.syntax.enum },
      field: SyntaxDef { color: d.syntax.property },
      'function': SyntaxDef { color: d.syntax['function'] },
      hint: SyntaxDef { color: d.text.hint, },
      keyword: SyntaxDef { color: d.syntax.keyword },
      label: SyntaxDef { color: d.syntax.type },
      link_text: SyntaxDef { color: d.syntax.linkTitle },
      link_uri: SyntaxDef { color: d.syntax.linkUrl },
      number: SyntaxDef { color: d.syntax.number },
      operator: SyntaxDef { color: d.syntax.operator },
      predictive: SyntaxDef { color: d.text.predictive, },
      preproc: SyntaxDef { color: d.syntax.keyword },
      primary: SyntaxDef { color: d.text.code },
      property: SyntaxDef { color: d.syntax.property },
      punctuation: SyntaxDef { color: d.text.code },
      'punctuation.bracket': SyntaxDef { color: d.text.code },
      'punctuation.delimiter': SyntaxDef { color: d.text.code },
      'punctuation.list_marker': SyntaxDef { color: d.syntax.listMarker },
      'punctuation.special': SyntaxDef { color: d.syntax.specialStringPart },
      string: SyntaxDef { color: d.syntax.string },
      'string.escape': SyntaxDef { color: d.syntax.specialStringPart },
      'string.regex': SyntaxDef { color: d.syntax.string },
      'string.special.key': SyntaxDef { color: d.syntax.property },
      tag: SyntaxDef { color: d.syntax.tag },
      'text.literal': SyntaxDef { color: d.text.code },
      title: SyntaxDef { color: d.syntax.heading },
      type: SyntaxDef { color: d.syntax.type },
      variable: SyntaxDef { color: d.syntax.localVariable },
      variant: SyntaxDef { color: d.text.accent },
    },
  },
}
