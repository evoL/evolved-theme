local alpha(num) = std.format('%02x', num / 100 * 255);

{
  local d = self.defs,
  local p = self.palette,
  defs:: error 'need to define defs (lol)',
  palette:: error 'need to define palette',

  '$schema': 'vscode://schemas/color-theme',
  type: error 'light or dark?',
  colors: {
    // General
    foreground: d.uiForeground,
    focusBorder: d.activeOutline,
    'progressBar.background': d.accentForeground,
    'selection.background': d.selectionBackground,
    'scrollbar.shadow': d.shadow + alpha(12),
    // Activity bar
    'activityBar.background': d.uiBackground,
    'activityBar.foreground': d.accentForeground,
    'activityBar.inactiveForeground': d.inactiveForeground,
    'activityBar.border': d.outline,
    'activityBarBadge.background': d.badgeBackground,
    'activityBarBadge.foreground': d.badgeForeground,
    // Side bar
    'sideBar.background': d.uiBackground,
    'sideBar.border': d.outline,
    'sideBar.dropBackground': d.selectionBackground + alpha(30),
    'sideBarSectionHeader.background': d.uiBackground,
    // "sideBarSectionHeader.foreground": null,
    // "sideBarSectionHeader.border": null,
    // "sideBarTitle.foreground": null,
    'list.inactiveSelectionBackground': d.selectionBackground,
    'list.inactiveSelectionForeground': d.selectionForeground,
    'list.hoverBackground': d.activeUiBackground,
    // 'list.hoverForeground': null,
    'list.activeSelectionBackground': d.selectionBackground,
    'list.activeSelectionForeground': d.selectionForeground,
    'list.activeSelectionIconForeground': d.selectionForeground,
    'list.focusOutline': d.activeOutline,
    'list.dropBackground': d.dimSelectionBackground,
    'list.errorForeground': p.e('text'),
    'list.highlightForeground': d.accentText,
    'list.invalidItemForeground': p.pink('text'),
    'list.warningForeground': p.v('text', +1),
    'listFilterWidget.background': d.uiBackground,
    'listFilterWidget.noMatchesOutline': p.e('foreground'),
    'tree.indentGuidesStroke': p.neutral(40) + alpha(20),
    // Status bar
    'statusBar.background': p.neutral('background', -1),
    'statusBar.foreground': p.neutral('foreground'),
    'statusBar.border': null,
    'statusBar.debuggingBackground': p.l('foreground'),  // inverted
    'statusBar.debuggingForeground': p.l('background'),  // inverted
    'statusBar.noFolderBackground': p.neutral('background', -2),
    'statusBar.noFolderForeground': p.neutral('foreground', -1),
    'statusBarItem.remoteBackground': p.accent(90),
    'statusBarItem.remoteForeground': p.accent(60),
    // Title bar
    'titleBar.activeBackground': d.uiBackground,
    'titleBar.activeForeground': d.text,
    'titleBar.inactiveBackground': d.uiBackground,
    'titleBar.inactiveForeground': d.inactiveText,
    'titleBar.border': d.outline,
    // Menus (not on Mac)
    'menu.background': d.uiBackground,
    'menu.foreground': d.uiForeground,
    'menu.selectionBackground': d.activeUiBackground,
    'menu.selectionForeground': d.text,
    'menu.separatorBackground': d.outline,
    'menubar.selectionBackground': d.activeUiBackground,
    'menubar.selectionForeground': d.text,
    // Buttons
    'button.background': d.containerBackground,
    'button.foreground': d.containerForeground,
    'button.hoverBackground': d.activeContainerBackground,
    'button.secondaryBackground': d.secondaryContainerBackground,
    'button.secondaryForeground': d.secondaryContainerForeground,
    'button.secondaryHoverBackground': d.activeSecondaryContainerBackground,
    'textLink.foreground': d.linkText,
    'textLink.activeForeground': d.activeLinkText,
    // Inputs
    'input.background': d.uiBackground,
    'input.foreground': d.text,
    'input.border': d.pronouncedOutline,
    'input.placeholderForeground': d.inactiveForeground,
    'inputOption.activeBackground': p.accent('background', -1),
    'inputOption.activeBorder': d.activeOutline,
    'inputOption.activeForeground': p.accent('foreground', -1),
    'inputOption.hoverBackground': p.neutral('background', -1),
    // Panels + Terminal
    'badge.background': d.badgeBackground,
    'badge.foreground': d.badgeForeground,
    'panel.background': d.uiBackground,
    'panel.border': d.outline,
    'panel.dropBorder': d.activeOutline,
    'panelTitle.activeBorder': d.activeOutline,
    'panelTitle.activeForeground': d.accentText,
    'panelTitle.inactiveForeground': d.uiForeground,
    'terminal.border': d.outline,
    'terminal.selectionBackground': d.selectionBackground,
    'terminalCursor.foreground': d.cursorColor,
    'terminalCursor.background': d.cursorText,
    'terminal.background': d.uiBackground,
    'terminal.foreground': p.neutral('text', -1),
    'terminal.ansiBlack': p.neutral(20),
    'terminal.ansiBlue': p.o(60),
    'terminal.ansiBrightBlack': p.neutral(60),
    'terminal.ansiBrightBlue': p.o(70),
    'terminal.ansiBrightCyan': p.pink(80),
    'terminal.ansiBrightGreen': p.l(80),
    'terminal.ansiBrightMagenta': p.purple(70),
    'terminal.ansiBrightRed': p.e(70),
    'terminal.ansiBrightWhite': p.neutral(95),
    'terminal.ansiBrightYellow': p.v(80),
    'terminal.ansiCyan': p.pink(70),
    'terminal.ansiGreen': p.l(70),
    'terminal.ansiMagenta': p.purple(60),
    'terminal.ansiRed': p.e(60),
    'terminal.ansiWhite': p.neutral(80),
    'terminal.ansiYellow': p.v(70),
    // Tabs
    'editorGroupHeader.tabsBackground': d.uiBackground,
    'editorGroupHeader.tabsBorder': d.outline,
    'tab.border': d.outline,
    'tab.activeBorder': d.codeBackground,
    'tab.activeBorderTop': d.activeOutline,
    'tab.activeBackground': d.codeBackground,
    'tab.activeForeground': d.text,
    'tab.inactiveBackground': d.uiBackground,
    'tab.inactiveForeground': d.inactiveText,
    // Breadcrumbs
    'breadcrumb.background': null,
    'breadcrumb.foreground': null,
    'breadcrumb.focusForeground': null,
    // Scrollbar
    'scrollbarSlider.background': p.neutral(70) + alpha(30),
    'scrollbarSlider.hoverBackground': p.neutral(70) + alpha(50),
    'scrollbarSlider.activeBackground': p.neutral(70) + alpha(60),
    // Widgets
    'widget.shadow': d.shadow + alpha(12),
    'editorWidget.background': d.uiBackground,
    'editorWidget.border': d.outline,
    'editorWidget.resizeBorder': d.outline,
    'editorWidget.foreground': d.uiForeground,
    'pickerGroup.border': d.outline,
    'pickerGroup.foreground': p.neutral('text', +3),
    'debugToolBar.background': d.uiBackground,
    'debugToolBar.border': d.outline,
    // Notifications
    'notifications.background': d.uiBackground,
    'notifications.border': d.outline,
    'notifications.foreground': d.uiForeground,
    'notificationCenterHeader.background': d.uiBackground,
    'notificationsErrorIcon.foreground': p.e('foreground'),
    'notificationsWarningIcon.foreground': p.v('foreground'),
    'notificationsInfoIcon.foreground': p.o('foreground'),
    // Git decorations
    'gitDecoration.addedResourceForeground': p.l('foreground'),
    'gitDecoration.conflictingResourceForeground': p.pink('foreground'),
    'gitDecoration.deletedResourceForeground': p.e('foreground'),
    'gitDecoration.ignoredResourceForeground': p.neutral('foreground', +2),
    'gitDecoration.modifiedResourceForeground': p.v('foreground'),
    'gitDecoration.renamedResourceForeground': p.o('foreground'),
    'gitDecoration.stageDeletedResourceForeground': p.e('foreground'),
    'gitDecoration.stageModifiedResourceForeground': p.v('foreground'),
    'gitDecoration.submoduleResourceForeground': p.pink('foreground'),
    'gitDecoration.untrackedResourceForeground': p.neutral('foreground', +1),
    // Editor
    'editor.background': d.codeBackground,
    'editor.foreground': d.text,
    'editorLineNumber.activeForeground': d.accentText,
    'editorLineNumber.foreground': d.inactiveText,
    'editorCursor.background': d.cursorText,
    'editorCursor.foreground': d.cursorColor,
    'editor.selectionBackground': d.selectionBackground,
    'editor.inactiveSelectionBackground': d.dimSelectionBackground,
    'editorWhitespace.foreground': p.accent('foreground', +1),
    'editor.selectionHighlightBackground': d.dimSelectionBackground,
    'editor.selectionHighlightBorder': d.activeOutline,
    'editor.findMatchBackground': p.l('background', -1),
    'editor.findMatchBorder': p.l('background', -2),
    'editor.findMatchHighlightBackground': p.l('background'),
    'editor.findMatchHighlightBorder': p.l('background', -2),
    'editor.findRangeHighlightBackground': p.neutral('background', -1) + alpha(40),
    'editor.rangeHighlightBackground': p.l('background', -1) + alpha(40),
    'editor.hoverHighlightBackground': p.accent('background', -2) + alpha(40),
    'editor.wordHighlightBackground': p.o('background', -3) + alpha(30),
    'editor.wordHighlightStrongBackground': p.o('background', -4) + alpha(40),
    'editor.lineHighlightBorder': d.outline,
    'editorLink.activeForeground': d.linkText,
    'editorIndentGuide.activeBackground': d.pronouncedOutline,
    'editorIndentGuide.background': d.outline,
    'editorRuler.foreground': d.outline,
    'editorBracketMatch.background': p.e('background', -1),
    'editorBracketMatch.border': p.e('background', -3),
    'editor.foldBackground': p.neutral('background', -2) + alpha(30),
    'editorOverviewRuler.border': p.neutral('background', -2),
    'editorError.foreground': p.e('text'),
    'editorError.background': p.e('background', -2) + alpha(30),
    'editorWarning.foreground': p.v('text', -1),
    'editorWarning.background': p.v('background', -2) + alpha(30),
    'editorInfo.foreground': p.o('text', -1),
    'editorInfo.background': p.o('background', -2) + alpha(30),
    'editorGutter.addedBackground': p.l('foreground'),
    'editorGutter.deletedBackground': p.e('foreground'),
    'editorGutter.modifiedBackground': p.o('foreground'),
    'editorGutter.foldingControlForeground': p.neutral('foreground', +1),
    'editorCodeLens.foreground': d.inactiveText,
    'editorGroup.border': d.outline,
    'editorBracketHighlight.foreground1': p.v('foreground', -1),
    'editorBracketHighlight.foreground2': p.o('foreground', -1),
    'editorBracketHighlight.foreground3': p.l('foreground', -2),
    'editorBracketHighlight.unexpectedBracket.foreground': p.e('foreground', -2),
    // Diff editor
    'diffEditor.insertedTextBackground': p.l('foreground') + alpha(30),
    'diffEditor.insertedLineBackground': p.l('foreground', +1) + alpha(30),
    'diffEditor.removedTextBackground': p.e('foreground') + alpha(20),
    'diffEditor.removedLineBackground': p.e('foreground', +1) + alpha(20),
    'diffEditor.diagonalFill': d.outline,
    // Marker navigation
    'editorMarkerNavigationError.background': p.e('foreground'),
    'editorMarkerNavigationError.headerBackground': p.e('background', -1),
    'editorMarkerNavigationWarning.background': p.v('foreground'),
    'editorMarkerNavigationWarning.headerBackground': p.v('background', -1),
    'editorMarkerNavigationInfo.background': p.o('foreground'),
    'editorMarkerNavigationInfo.headerBackground': p.o('background', -1),
    // Merge conflicts
    'merge.commonContentBackground': p.neutral('background', -2) + alpha(30),
    'merge.commonHeaderBackground': p.neutral('background', -3) + alpha(30),
    'merge.currentContentBackground': p.e('background', -2) + alpha(30),
    'merge.currentHeaderBackground': p.e('background', -3) + alpha(30),
    'merge.incomingContentBackground': p.o('background', -2) + alpha(30),
    'merge.incomingHeaderBackground': p.o('background', -3) + alpha(30),
    // Peek View Editor
    'peekView.border': p.neutral('foreground'),
    'peekViewTitle.background': p.neutral('background', -1),
    'peekViewTitleDescription.foreground': d.uiForeground,
    'peekViewTitleLabel.foreground': d.text,
    'peekViewEditor.background': p.neutral('background'),
    'peekViewEditor.matchHighlightBackground': p.v('background', -2) + alpha(40),
    'peekViewResult.background': p.neutral('background', -1),
    'peekViewResult.fileForeground': d.text,
    'peekViewResult.lineForeground': d.uiForeground,
    'peekViewResult.matchHighlightBackground': p.v('background', -3) + alpha(40),
    'peekViewResult.selectionBackground': d.selectionBackground,
    'peekViewResult.selectionForeground': d.selectionForeground,
  },
  tokenColors: [
    // Cross-language tokens
    {
      name: 'Comment',
      scope: [
        'comment',
      ],
      settings: {
        foreground: p.neutral('foreground', +1),
        fontStyle: 'italic',
      },
    },
    {
      name: 'String',
      scope: [
        'string',
        'markup.inline.raw.string',
      ],
      settings: {
        foreground: p.l('foreground'),
      },
    },
    {
      name: 'String interpolation and other fancy stuff in literals',
      scope: [
        'punctuation.definition.template-expression',
        'constant.character.escape',
        'string.interpolated.expression',
      ],
      settings: {
        foreground: p.l('foreground', -1),
      },
    },
    {
      name: 'Accented string quotes',
      scope: [
        'punctuation.definition.string',
        'punctuation.definition.raw',
      ],
      settings: {
        foreground: p.l('foreground', -1),
      },
    },
    {
      name: 'Number',
      scope: [
        'constant.numeric',
      ],
      settings: {
        foreground: p.o('text'),
      },
    },
    {
      name: 'Keywords & this',
      scope: [
        'constant.language',
        'keyword.control',
        'storage.type',
        'storage.modifier',
        'variable.language.this',
        'variable.language.special.self',
        'variable.parameter.function.language.special.self',
      ],
      settings: {
        foreground: p.e('foreground', +1),
        fontStyle: 'italic',
      },
    },
    {
      name: 'Operators',
      scope: [
        'keyword.operator',
      ],
      settings: {
        foreground: p.l('text'),
      },
    },
    {
      name: 'Types',
      scope: [
        'support.type.primitive',
        'support.type.builtin',
        'entity.name.type',
      ],
      settings: {
        foreground: p.v('foreground'),
      },
    },
    {
      name: 'Variables',
      scope: [
        'variable.other.readwrite',
        'entity.name.variable',
      ],
      settings: {
        foreground: d.text,
      },
    },
    {
      name: 'Functions',
      scope: [
        'entity.name.function',
        'meta.function-call.python',
      ],
      settings: {
        foreground: p.o('text'),
      },
    },
    {
      name: 'Function parameters',
      scope: [
        'variable.parameter',
      ],
      settings: {
        foreground: p.v('text', -1),
      },
    },
    {
      name: 'Object properties',
      scope: [
        'variable.other.property',
        'meta.attribute.python',
        'entity.name.tag.yaml',
        'support.type.property-name.json',
      ],
      settings: {
        foreground: p.o('text', -2),
      },
    },
    {
      name: 'Accented key-value operator',
      scope: [
        'punctuation.separator.key-value',
        'punctuation.separator.dictionary.key-value',
        'keyword.operator.type.annotation.ts',
      ],
      settings: {
        foreground: p.o('text', -3),
      },
    },
    {
      name: 'Enums',
      scope: [
        'entity.name.type.enum',
      ],
      settings: {
        foreground: p.v('text'),
      },
    },
    {
      name: 'Enum members',
      scope: [
        'variable.other.enummember',
      ],
      settings: {
        foreground: p.v('text', -2),
      },
    },
    // HTML
    {
      name: 'Tags',
      scope: [
        'entity.name.tag',
      ],
      settings: {
        foreground: p.o('text'),
      },
    },
    {
      name: 'Tag beginning/end',
      scope: [
        'punctuation.definition.tag',
      ],
      settings: {
        foreground: p.o('text', -1),
      },
    },
    {
      name: 'Attribute name',
      scope: [
        'entity.other.attribute-name',
      ],
      settings: {
        foreground: p.l('text'),
      },
    },
    {
      name: 'Attribute =',
      scope: [
        'punctuation.separator.key-value',
      ],
      settings: {
        foreground: p.l('text', -1),
      },
    },
    // CSS
    {
      name: 'Variables',
      scope: [
        'variable.css',
        'variable.argument.css',
      ],
      settings: {
        foreground: p.o('text', -1),
        fontStyle: 'italic',
      },
    },
    {
      name: 'Property values',
      scope: [
        'meta.property-value.css',
      ],
      settings: {
        foreground: p.neutral('text', +1),
      },
    },
    // XML
    {
      name: 'Namespace',
      scope: [
        'entity.other.attribute-name.namespace',
      ],
      settings: {
        foreground: p.l('text', -1),
      },
    },
    {
      scope: [
        'punctuation.separator.namespace',
      ],
      settings: {
        foreground: p.l('text', -2),
      },
    },
    // Markdown
    {
      name: 'Heading',
      scope: [
        'markup.heading',
      ],
      settings: {
        foreground: p.accent('foreground'),
      },
    },
    {
      name: 'Accented heading marker',
      scope: [
        'punctuation.definition.heading',
      ],
      settings: {
        foreground: p.accent('foreground', -1),
      },
    },
    {
      name: 'Bold',
      scope: [
        'markup.bold',
      ],
      settings: {
        fontStyle: 'bold',
      },
    },
    {
      name: 'Italic',
      scope: [
        'markup.italic',
      ],
      settings: {
        fontStyle: 'italic',
      },
    },
    {
      name: 'Link title',
      scope: [
        'string.other.link.title',
        'string.other.link.description',
      ],
      settings: {
        foreground: p.o('text', +1),
      },
    },
    {
      name: 'Accented link title brackets',
      scope: [
        'punctuation.definition.link.title',
        'punctuation.definition.link.description',
      ],
      settings: {
        foreground: p.o('text'),
      },
    },
    {
      name: 'Link URL',
      scope: [
        'markup.underline.link',
      ],
      settings: {
        foreground: p.o('text'),
      },
    },
    {
      name: 'Accented link URL brackets',
      scope: [
        'punctuation.definition.metadata.markdown',
      ],
      settings: {
        foreground: p.o('text', -1),
      },
    },
    {
      name: 'Fenced code blocks',
      scope: [
        'punctuation.definition.markdown',
      ],
      settings: {
        foreground: p.l('text'),
      },
    },
    {
      name: 'Fenced code block language',
      scope: [
        'fenced_code.block.language',
      ],
      settings: {
        foreground: p.l('text', -1),
      },
    },
    {
      name: 'Lists',
      scope: [
        'punctuation.definition.list.begin',
      ],
      settings: {
        foreground: p.e('foreground', +1),
      },
    },
    // Svelte
    {
      name: 'Blocks',
      scope: [
        'punctuation.definition.keyword',
        'punctuation.definition.block.begin.svelte',
        'punctuation.definition.block.end.svelte',
      ],
      settings: {
        foreground: p.e('text', +1),
      },
    },
  ],
  semanticHighlighting: true,
  semanticTokenColors: {
    // Annotations
    annotation: p.e('text', +1),
    'property.annotation': p.e('text', +1),
    '*.annotation': p.e('text', +1),

    // Implicitly defined through scopes, see:
    // https://code.visualstudio.com/api/language-extensions/semantic-highlight-guide#semantic-token-scope-map
    // variable: colors.text,
    // parameter: palette.v50,
    // property: palette.o40,
    // enum: palette.v60,
    // enumMember: palette.v40,
  },
}
