local huetone = import './huetone.libsonnet';

local lightRoles = {
  default:: {
    background: 950,
    foreground: 600,
    text: 500,
    controlBg: self.foreground,
    controlFg: self.background,
  },
  e: self.default,
  v: self.default {
    foreground: 700,
    text: 600,
  },
  o: self.default,
  l: self.default {
    foreground: 700,
    text: 600,
  },
  pink: self.default,
  cyan: self.default,
  neutral: self.default,
};


local darkRoles = {
  default:: {
    background: 130,
    foreground: 600,
    text: 700,
    controlBg: self.foreground,
    controlFg: self.background,
  },
  e: self.default {
    foreground: 500,
    text: 600,
  },
  v: self.default {
    foreground: 700,
    text: 800,
    controlBg: 600,
  },
  o: self.default,
  l: self.default,
  pink: self.default,
  cyan: self.default,
  neutral: self.default,
};

local roleAliases = {
  accent: self.v,

  // Map names to colors to make it easier to customize palettes.
  red: self.e,
  yellow: self.v,
  green: self.l,
  blue: self.o,
  magenta: self.pink,

  // Common understanding of colors.
  'error': self.red,
  warning: self.yellow,
  info: self.blue,
  ok: self.green,
};

// Generates functions to read colors from the palette using defined role
// mappings (see above). The functions allow to specify a shift as a difference
// of tones (e.g. +1 means one tone lighter; 50 -> 60).
// By default, dark palettes will use the negated shift (e.g. +1 means one tone
// *darker*; 50 -> 40). If this is not desired, you can pass a shift for dark
// palettes as a separate argument.
local makePalette(roles, type='light') = {
  [hue.name]: (
    function(toneOrRole, shift=0, darkShift=null)
      local tone = std.toString(if std.isString(toneOrRole) then roles[hue.name][toneOrRole] else toneOrRole);
      local indices = std.find(tone, huetone.tones);
      assert std.length(indices) == 1 : 'did not find ' + hue.name + '.' + toneOrRole;

      local realShift = if type != 'dark' then shift else if darkShift != null then darkShift else -shift;
      local index = indices[0] + realShift;
      assert index >= 0 && index < std.length(huetone.tones) : 'color index out of bounds';

      hue.colors[index]
  )
  for hue in huetone.hues
} + roleAliases;

{
  light: {
    local palette = self.palette,
    palette:: makePalette(lightRoles, 'light'),

    bg: {
      code: palette.neutral('background', +1, +1),
      ui: palette.neutral('background'),
      inactive: self.ui,
      uiInteraction: palette.neutral('background', -1),  // hover/focus
      elevatedUi: palette.neutral('background'),
      selection: palette.accent('background', 0, +3),
      dimSelection: palette.accent('background', +1, +2),
      control: palette.accent('controlBg'),
      controlInteraction: palette.accent('controlBg', -1),
      secondaryControl: palette.neutral('controlBg'),
      secondaryControlInteraction: palette.neutral('controlBg', -1),
      badge: palette.accent('controlBg', -1),
      cursor: palette.accent('foreground'),
      terminal: self.code,
      scrollbar: palette.neutral('foreground', +2, +2),
      findMatch: palette.l('background', -2),
      findMatchHighlight: palette.l('background'),
      'error': palette['error']('background', -2),  // w/ alpha 30%
      warning: palette.warning('background', -2),  // w/ alpha 30%
      info: palette.info('background', -2),  // w/ alpha 30%
      // VSCode-specific
      activeInputOption: palette.accent('background', -1),
      corner: palette.accent(850),
      codeFold: palette.neutral('background', -2),  // w/ alpha 30%
      cornerHover: palette.accent(800),
      debugStatusBar: palette.l('controlBg'),
      selectionHighlight: self.dimSelection,
      findRangeHighlight: palette.neutral('background', -1, +2),  // w/ alpha 40%
      rangeHighlight: palette.l('background', -2),  // w/ alpha 40%
      hoverHighlight: palette.accent('background', -3),  // w/ alpha 40%
      matchHighlight: palette.v('background', -3),  // w/ alpha 40%
      wordHighlight: palette.o('background', -4),  // w/ alpha 30%
      strongWordHighlight: palette.o('background', -5),  // w/ alpha 30%
      noFolderStatusBar: palette.neutral('background', -2),
      bracketMatch: palette.e('background', -1),
      addedText: palette.green('controlBg'),  // w/ alpha 30%
      addedLine: palette.green('controlBg', +1),  // w/ alpha 30%
      deletedText: palette.red('controlBg'),  // w/ alpha 20%
      deletedLine: palette.red('controlBg', +1),  // w/ alpha 20%
      commonContent: palette.neutral('background', -2),  // w/ alpha 30%
      commonHeader: palette.neutral('background', -3),  // w/ alpha 30%
      currentContent: palette.red('background', -2),  // w/ alpha 30%
      currentHeader: palette.red('background', -3),  // w/ alpha 30%
      incomingContent: palette.blue('background', -2),  // w/ alpha 30%
      incomingHeader: palette.blue('background', -3),  // w/ alpha 30%
    },

    fg: {
      code: self.ui,
      ui: palette.neutral('foreground'),
      uiInteraction: palette.neutral('foreground', -1),  // hover/focus
      elevatedUi: self.ui,
      inactive: palette.neutral('foreground', +2),
      accent: palette.accent('foreground'),
      'error': palette['error']('foreground'),
      warning: palette.warning('foreground'),
      info: palette.info('foreground'),
      ok: palette.ok('foreground'),
      selection: palette.accent('foreground'),
      dimSelection: self.selection,
      control: palette.accent('controlFg'),
      controlInteraction: self.control,
      secondaryControl: palette.neutral('controlFg'),
      secondaryControlInteraction: self.secondaryControl,
      badge: palette.accent('controlFg'),
      // VSCode-specific
      activeInputOption: palette.accent('foreground', -1),
      debugStatusBar: palette.l('controlFg'),
      noFolderStatusBar: palette.neutral('foreground', -1),
      corner: palette.accent(400),
      cornerHover: palette.accent(300),
      pickerGroup: palette.neutral('foreground', +2),
    },

    text: {
      code: self.ui,
      ui: palette.neutral('text'),
      inactive: palette.neutral('text', +2),
      invalid: palette.pink('text'),
      accent: palette.accent('text'),
      selection: palette.accent('text'),
      'error': palette['error']('text'),
      warning: palette.warning('text', +1),
      info: palette.info('text', -1),
      ok: palette.ok('text'),
      cursor: palette.accent('background'),
      link: palette.accent('foreground'),
      activeLink: palette.accent('foreground', -1),
      terminal: self.ui,
      terminalBold: palette.neutral('text', -1),
      whitespace: palette.accent('foreground'),  // w/ alpha 40%
      // VSCode specific
      brackets: [palette.v('text'), palette.o('text'), palette.l('text', -1, 0)],
      unexpectedBracket: palette['error']('text', -1),
    },

    outline: {
      ui: palette.neutral('background', -1),
      elevatedUi: self.ui,
      indentGuide: palette.neutral('background', 0, +2),
      ruler: palette.neutral('foreground', +4),
      pronounced: palette.neutral('foreground', +2),
      active: palette.accent('foreground', +2),
      activeInputOption: self.active,
      control: palette.accent('controlBg', -1),
      secondaryControl: palette.neutral('controlBg', -1),
      findMatch: palette.l('background', -3),
      // VSCode-specific
      currentLine: palette.neutral('background', -2),
      selectionHighlight: self.active,
      bracketMatch: palette.e('foreground', +2, 0),
    },

    shadow: palette.neutral(50),
    shadowAlpha: 12,

    ansi: {
      black: palette.neutral(50),
      blue: palette.blue('text'),
      cyan: palette.cyan('text'),
      green: palette.green('text'),
      magenta: palette.magenta('text'),
      red: palette.red('text'),
      white: palette.neutral(850),
      yellow: palette.yellow('text'),
      brightBlack: palette.neutral(600),
      brightBlue: palette.blue('text', +1, +1),
      brightCyan: palette.cyan('text', +1, +1),
      brightGreen: palette.green('text', +1, +1),
      brightMagenta: palette.magenta('text', +1, +1),
      brightRed: palette.red('text', +1, +1),
      brightWhite: palette.neutral(930),
      brightYellow: palette.yellow('text', +1, +1),
    },

    vcs: {
      added: palette.green('foreground'),
      conflicting: palette.pink('foreground'),
      deleted: palette.red('foreground'),
      ignored: palette.neutral('foreground', +2),
      modified: palette.blue('foreground'),
      renamed: palette.yellow('foreground'),
      submodule: palette.pink('foreground'),
      untracked: palette.neutral('foreground', +1),
    },

    syntax: {
      comment: palette.neutral('text', +2, -3),
      number: palette.o('text', +1, 0),
      string: palette.l('text', +1, 0),
      specialStringPart: palette.l('text', 0, -1),
      stringQuote: palette.l('text', 0, -1),
      keyword: palette.e('text', +2, 0),
      this: palette.pink('text', +1, +1),
      operator: palette.l('text'),
      type: palette.v('text'),
      localVariable: palette.neutral('text'),
      'function': palette.o('text', 0, -1),
      parameter: palette.v('text', -1, -2),
      property: palette.o('text', -1, -2),
      keyValueOperator: palette.o('text', -2, 0),
      enum: self.type,
      enumMember: palette.v('text', -2, -2),
      annotation: palette.e('text', +1, +1),

      tag: palette.o('text'),
      tagBrackets: palette.o('text', -1, -1),
      attribute: palette.l('text'),
      attributeSeparator: palette.l('text', -1, -1),
      cssVariable: self.property,
      cssValue: palette.neutral('text', +1),
      xmlNamespace: palette.l('text', -1, -1),
      xmlNamespaceSeparator: palette.l('text', -2, -2),
      heading: palette.o('foreground'),
      headingMarker: palette.o('foreground', -1),
      linkTitle: palette.accent('text', +1),
      linkTitleBrackets: palette.accent('text'),
      linkUrl: palette.accent('text'),
      linkUrlBrackets: palette.accent('text', -1),
      codeBlock: palette.l('text'),
      codeBlockLanguage: palette.l('text', -1),
      listMarker: palette.e('foreground', +1, 0),
      svelteBlock: palette.e('text', +1, +1),
    },
  },

  dark: self.light {
    local palette = self.palette,
    palette:: makePalette(darkRoles, 'dark'),

    bg+: {
      corner: palette.accent(600),
      cornerHover: palette.accent(700),
    },
    fg+: {
      corner: palette.accent(980),
      cornerHover: palette.accent(1000),
    },
    ansi+: {
      brightBlack: palette.neutral(400),
    },
    shadowAlpha: 18,
  },
}
