local alpha(num) = std.format('%02x', num / 100 * 255);

{
  local d = self.defs,
  defs:: error 'need to define defs (lol)',

  '$schema': 'vscode://schemas/color-theme',
  type: error 'light or dark?',
  colors: {
    // General
    foreground: d.fg.ui,
    disabledForeground: d.fg.inactive,
    focusBorder: d.outline.active,
    'icon.foreground': d.fg.ui,
    'progressBar.background': d.fg.accent,
    'selection.background': d.bg.selection,
    'scrollbar.shadow': d.shadow + alpha(12),
    // Activity bar
    'activityBar.background': d.bg.ui,
    'activityBar.foreground': d.fg.accent,
    'activityBar.inactiveForeground': d.fg.inactive,
    'activityBar.border': d.outline.ui,
    'activityBarBadge.background': d.bg.badge,
    'activityBarBadge.foreground': d.fg.badge,
    // Side bar
    'sideBar.background': d.bg.ui,
    'sideBar.border': d.outline.ui,
    'sideBar.dropBackground': d.bg.selection + alpha(30),
    'sideBarSectionHeader.background': d.bg.ui,
    // "sideBarSectionHeader.foreground": null,
    // "sideBarSectionHeader.border": null,
    // "sideBarTitle.foreground": null,
    'list.inactiveSelectionBackground': d.bg.selection,
    'list.inactiveSelectionForeground': d.text.selection,
    'list.hoverBackground': d.bg.uiInteraction,
    'list.hoverForeground': d.fg.uiInteraction,
    'list.activeSelectionBackground': d.bg.selection,
    'list.activeSelectionForeground': d.text.selection,
    'list.activeSelectionIconForeground': d.fg.selection,
    'list.focusOutline': d.outline.active,
    'list.dropBackground': d.bg.dimSelection,
    'list.errorForeground': d.text['error'],
    'list.highlightForeground': d.text.accent,
    'list.invalidItemForeground': d.text.invalid,
    'list.warningForeground': d.text.warning,
    'listFilterWidget.background': d.bg.ui,
    'listFilterWidget.noMatchesOutline': d.fg['error'],
    'tree.indentGuidesStroke': d.outline.pronounced + alpha(50),
    // Status bar
    'statusBar.background': d.bg.statusBar,
    'statusBar.foreground': d.fg.statusBar,
    'statusBar.border': null,
    'statusBar.debuggingBackground': d.bg.debugStatusBar,
    'statusBar.debuggingForeground': d.fg.debugStatusBar, 
    'statusBar.noFolderBackground': d.bg.noFolderStatusBar,
    'statusBar.noFolderForeground': d.fg.noFolderStatusBar,
    'statusBarItem.remoteBackground': d.bg.corner,
    'statusBarItem.remoteForeground': d.fg.corner,
    // Title bar
    'titleBar.activeBackground': d.bg.ui,
    'titleBar.activeForeground': d.text.ui,
    'titleBar.inactiveBackground': d.bg.inactive,
    'titleBar.inactiveForeground': d.text.inactive,
    'titleBar.border': d.outline.ui,
    // Menus (not on Mac)
    'menu.background': d.bg.ui,
    'menu.foreground': d.fg.ui,
    'menu.selectionBackground': d.bg.uiInteraction,
    'menu.selectionForeground': d.fg.uiInteraction,
    'menu.separatorBackground': d.outline.ui,
    'menubar.selectionBackground': d.bg.uiInteraction,
    'menubar.selectionForeground': d.fg.uiInteraction,
    // Buttons
    'button.background': d.bg.control,
    'button.foreground': d.fg.control,
    'button.hoverBackground': d.bg.controlInteraction,
    'button.secondaryBackground': d.bg.secondaryControl,
    'button.secondaryForeground': d.fg.secondaryControl,
    'button.secondaryHoverBackground': d.bg.secondaryControlInteraction,
    'textLink.foreground': d.text.link,
    'textLink.activeForeground': d.text.activeLink,
    // Inputs
    'input.background': d.bg.ui,
    'input.foreground': d.text.ui,
    'input.border': d.outline.pronounced,
    'input.placeholderForeground': d.fg.inactive,
    'inputOption.activeBackground': d.bg.activeInputOption,
    'inputOption.activeBorder': d.outline.activeInputOption,
    'inputOption.activeForeground': d.fg.activeInputOption,
    'inputOption.hoverBackground': d.bg.uiInteraction,
    // Panels + Terminal
    'badge.background': d.bg.badge,
    'badge.foreground': d.fg.badge,
    'panel.background': d.bg.ui,
    'panel.border': d.outline.ui,
    'panel.dropBorder': d.outline.active,
    'panelTitle.activeBorder': d.outline.active,
    'panelTitle.activeForeground': d.text.accent,
    'panelTitle.inactiveForeground': d.fg.ui,
    'terminal.border': d.outline.ui,
    'terminal.selectionBackground': d.bg.selection,
    'terminalCursor.foreground': d.bg.cursor,
    'terminalCursor.background': d.text.cursor,
    'terminal.background': d.bg.terminal,
    'terminal.foreground': d.text.terminal,
    'terminal.ansiBlack': d.ansi.black,
    'terminal.ansiBlue': d.ansi.blue,
    'terminal.ansiBrightBlack': d.ansi.brightBlack,
    'terminal.ansiBrightBlue': d.ansi.brightBlue,
    'terminal.ansiBrightCyan': d.ansi.brightCyan,
    'terminal.ansiBrightGreen': d.ansi.brightGreen,
    'terminal.ansiBrightMagenta': d.ansi.brightMagenta,
    'terminal.ansiBrightRed': d.ansi.brightRed,
    'terminal.ansiBrightWhite': d.ansi.brightWhite,
    'terminal.ansiBrightYellow': d.ansi.brightYellow,
    'terminal.ansiCyan': d.ansi.cyan,
    'terminal.ansiGreen': d.ansi.green,
    'terminal.ansiMagenta': d.ansi.magenta,
    'terminal.ansiRed': d.ansi.red,
    'terminal.ansiWhite': d.ansi.white,
    'terminal.ansiYellow': d.ansi.yellow,
    // Tabs
    'editorGroupHeader.tabsBackground': d.bg.ui,
    'editorGroupHeader.tabsBorder': d.outline.ui,
    'tab.border': d.outline.ui,
    'tab.activeBorder': d.bg.code,
    'tab.activeBorderTop': d.outline.active,
    'tab.activeBackground': d.bg.code,
    'tab.activeForeground': d.text.code,
    'tab.inactiveBackground': d.bg.ui,
    'tab.inactiveForeground': d.text.inactive,
    // Breadcrumbs
    'breadcrumb.background': null,
    'breadcrumb.foreground': null,
    'breadcrumb.focusForeground': null,
    // Scrollbar
    'scrollbarSlider.background': d.bg.scrollbar + alpha(30),
    'scrollbarSlider.hoverBackground': d.bg.scrollbar + alpha(50),
    'scrollbarSlider.activeBackground': d.bg.scrollbar + alpha(60),
    // Widgets
    'widget.shadow': d.shadow + alpha(12),
    'editorWidget.background': d.bg.ui,
    'editorWidget.border': d.outline.ui,
    'editorWidget.resizeBorder': d.outline.ui,
    'editorWidget.foreground': d.fg.ui,
    'pickerGroup.border': d.outline.ui,
    'pickerGroup.foreground': d.fg.pickerGroup,
    'debugToolBar.background': d.bg.ui,
    'debugToolBar.border': d.outline.ui,
    'keybindingLabel.background': d.bg.secondaryControl,
    'keybindingLabel.border': d.outline.secondaryControl,
    'keybindingLabel.bottomBorder': d.outline.secondaryControl,
    'keybindingLabel.foreground': d.fg.secondaryControl,
    // Notifications
    'notifications.background': d.bg.elevatedUi,
    'notifications.border': d.outline.elevatedUi,
    'notifications.foreground': d.fg.elevatedUi,
    'notificationCenterHeader.background': d.bg.elevatedUi,
    'notificationsErrorIcon.foreground': d.fg['error'],
    'notificationsWarningIcon.foreground': d.fg.warning,
    'notificationsInfoIcon.foreground': d.fg.info,
    // Git decorations
    'gitDecoration.addedResourceForeground': d.vcs.added,
    'gitDecoration.conflictingResourceForeground': d.vcs.conflicting,
    'gitDecoration.deletedResourceForeground': d.vcs.deleted,
    'gitDecoration.ignoredResourceForeground': d.vcs.ignored,
    'gitDecoration.modifiedResourceForeground': d.vcs.modified,
    'gitDecoration.renamedResourceForeground': d.vcs.renamed,
    'gitDecoration.stageDeletedResourceForeground': d.vcs.deleted,
    'gitDecoration.stageModifiedResourceForeground': d.vcs.modified,
    'gitDecoration.submoduleResourceForeground': d.vcs.submodule,
    'gitDecoration.untrackedResourceForeground': d.vcs.untracked,
    // Editor
    'editor.background': d.bg.code,
    'editor.foreground': d.text.code,
    'editorLineNumber.activeForeground': d.text.accent,
    'editorLineNumber.foreground': d.text.inactive,
    'editorCursor.background': d.text.cursor,
    'editorCursor.foreground': d.bg.cursor,
    'editor.selectionBackground': d.bg.selection,
    'editor.inactiveSelectionBackground': d.bg.dimSelection,
    'editorWhitespace.foreground': d.text.whitespace,
    'editor.selectionHighlightBackground': d.bg.dimSelection,
    'editor.selectionHighlightBorder': d.outline.active,
    'editor.findMatchBackground': d.bg.findMatch,
    'editor.findMatchBorder': d.outline.findMatch,
    'editor.findMatchHighlightBackground': d.bg.findMatchHighlight,
    'editor.findMatchHighlightBorder': d.outline.findMatch,
    'editor.findRangeHighlightBackground': d.bg.findRangeHighlight + alpha(40),
    'editor.rangeHighlightBackground': d.bg.rangeHighlight + alpha(40),
    'editor.hoverHighlightBackground': d.bg.hoverHighlight + alpha(40),
    'editor.wordHighlightBackground': d.bg.wordHighlight + alpha(30),
    'editor.wordHighlightStrongBackground': d.bg.strongWordHighlight + alpha(40),
    'editor.lineHighlightBorder': d.outline.ui,
    'editorLink.activeForeground': d.text.link,
    'editorIndentGuide.activeBackground': d.outline.pronounced,
    'editorIndentGuide.background': d.outline.ui,
    'editorRuler.foreground': d.outline.ui,
    'editorBracketMatch.background': d.bg.bracketMatch,
    'editorBracketMatch.border': d.outline.bracketMatch,
    'editor.foldBackground': d.bg.codeFold + alpha(30),
    'editorOverviewRuler.border': d.outline.pronounced,
    'editorError.foreground': d.text['error'],
    'editorError.background': d.bg['error'] + alpha(30),
    'editorWarning.foreground': d.text.warning,
    'editorWarning.background': d.bg.warning + alpha(30),
    'editorInfo.foreground': d.text.info,
    'editorInfo.background': d.bg.info + alpha(30),
    'editorGutter.addedBackground': d.vcs.added,
    'editorGutter.deletedBackground': d.vcs.deleted,
    'editorGutter.modifiedBackground': d.vcs.modified,
    'editorGutter.foldingControlForeground': d.fg.ui,
    'editorCodeLens.foreground': d.text.inactive,
    'editorGroup.border': d.outline.ui,
    'editorBracketHighlight.foreground1': d.text.brackets[0],
    'editorBracketHighlight.foreground2': d.text.brackets[1],
    'editorBracketHighlight.foreground3': d.text.brackets[2],
    'editorBracketHighlight.unexpectedBracket.foreground': d.text.unexpectedBracket,
    // Diff editor
    'diffEditor.insertedTextBackground': d.bg.addedText + alpha(30),
    'diffEditor.insertedLineBackground': d.bg.addedLine + alpha(30),
    'diffEditor.removedTextBackground': d.bg.deletedText + alpha(20),
    'diffEditor.removedLineBackground': d.bg.deletedLine + alpha(20),
    'diffEditor.diagonalFill': d.outline.ui,
    // Marker navigation
    'editorMarkerNavigationError.background': d.fg['error'],
    'editorMarkerNavigationError.headerBackground': d.bg['error'] + alpha(30),
    'editorMarkerNavigationWarning.background': d.fg.warning,
    'editorMarkerNavigationWarning.headerBackground': d.bg.warning + alpha(30),
    'editorMarkerNavigationInfo.background': d.fg.info,
    'editorMarkerNavigationInfo.headerBackground': d.bg.info + alpha(30),
    // Merge conflicts
    'merge.commonContentBackground': d.bg.commonContent + alpha(30),
    'merge.commonHeaderBackground': d.bg.commonHeader + alpha(30),
    'merge.currentContentBackground': d.bg.currentContent + alpha(30),
    'merge.currentHeaderBackground': d.bg.currentHeader + alpha(30),
    'merge.incomingContentBackground': d.bg.incomingContent + alpha(30),
    'merge.incomingHeaderBackground': d.bg.incomingHeader + alpha(30),
    // Peek View Editor
    'peekView.border': d.fg.ui,
    'peekViewTitle.background': d.bg.elevatedUi,
    'peekViewTitleLabel.foreground': d.text.ui,
    'peekViewTitleDescription.foreground': d.fg.ui,
    'peekViewEditor.background': d.bg.ui,
    'peekViewEditor.matchHighlightBackground': d.bg.matchHighlight + alpha(40),
    'peekViewResult.background': d.bg.elevatedUi,
    'peekViewResult.fileForeground': d.text.ui,
    'peekViewResult.lineForeground': d.fg.elevatedUi,
    'peekViewResult.matchHighlightBackground': d.bg.matchHighlight + alpha(40),
    'peekViewResult.selectionBackground': d.bg.selection,
    'peekViewResult.selectionForeground': d.fg.selection,
  },
  tokenColors: [
    // Cross-language tokens
    {
      name: 'Comment',
      scope: [
        'comment',
      ],
      settings: {
        foreground: d.syntax.comment,
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
        foreground: d.syntax.string,
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
        foreground: d.syntax.specialStringPart,
      },
    },
    {
      name: 'Accented string quotes',
      scope: [
        'punctuation.definition.string',
        'punctuation.definition.raw',
      ],
      settings: {
        foreground: d.syntax.stringQuote,
      },
    },
    {
      name: 'Number',
      scope: [
        'constant.numeric',
      ],
      settings: {
        foreground: d.syntax.number,
      },
    },
    {
      name: 'Keywords',
      scope: [
        'constant.language',
        'keyword.control',
        'storage.type',
        'storage.modifier',
      ],
      settings: {
        foreground: d.syntax.keyword,
      },
    },
    {
      name: 'this',
      scope: [
        'variable.language.this',
        'variable.language.special.self',
        'variable.parameter.function.language.special.self',
      ],
      settings: {
        foreground: d.syntax.this,
        fontStyle: 'italic',
      },
    },
    {
      name: 'Operators',
      scope: [
        'keyword.operator',
      ],
      settings: {
        foreground: d.syntax.operator,
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
        foreground: d.syntax.type,
      },
    },
    {
      name: 'Variables',
      scope: [
        'variable.other.readwrite',
        'entity.name.variable',
      ],
      settings: {
        foreground: d.syntax.localVariable,
      },
    },
    {
      name: 'Functions',
      scope: [
        'entity.name.function',
        'meta.function-call.python',
      ],
      settings: {
        foreground: d.syntax['function'],
      },
    },
    {
      name: 'Function parameters',
      scope: [
        'variable.parameter',
      ],
      settings: {
        foreground: d.syntax.parameter,
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
        foreground: d.syntax.property,
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
        foreground: d.syntax.keyValueOperator,
      },
    },
    {
      name: 'Enums',
      scope: [
        'entity.name.type.enum',
      ],
      settings: {
        foreground: d.syntax.enum,
      },
    },
    {
      name: 'Enum members',
      scope: [
        'variable.other.enummember',
      ],
      settings: {
        foreground: d.syntax.enumMember,
      },
    },
    // HTML
    {
      name: 'Tags',
      scope: [
        'entity.name.tag',
      ],
      settings: {
        foreground: d.syntax.tag,
      },
    },
    {
      name: 'Tag beginning/end',
      scope: [
        'punctuation.definition.tag',
      ],
      settings: {
        foreground: d.syntax.tagBrackets,
      },
    },
    {
      name: 'Attribute name',
      scope: [
        'entity.other.attribute-name',
      ],
      settings: {
        foreground: d.syntax.attribute,
      },
    },
    {
      name: 'Attribute =',
      scope: [
        'punctuation.separator.key-value',
      ],
      settings: {
        foreground: d.syntax.attributeSeparator,
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
        foreground: d.syntax.cssVariable,
        fontStyle: 'italic',
      },
    },
    {
      name: 'Property values',
      scope: [
        'meta.property-value.css',
      ],
      settings: {
        foreground: d.syntax.cssValue,
      },
    },
    // XML
    {
      name: 'Namespace',
      scope: [
        'entity.other.attribute-name.namespace',
      ],
      settings: {
        foreground: d.syntax.xmlNamespace,
      },
    },
    {
      scope: [
        'punctuation.separator.namespace',
      ],
      settings: {
        foreground: d.syntax.xmlNamespaceSeparator,
      },
    },
    // Markdown
    {
      name: 'Heading',
      scope: [
        'markup.heading',
      ],
      settings: {
        foreground: d.syntax.heading,
      },
    },
    {
      name: 'Accented heading marker',
      scope: [
        'punctuation.definition.heading',
      ],
      settings: {
        foreground: d.syntax.headingMarker,
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
        foreground: d.syntax.linkTitle
      },
    },
    {
      name: 'Accented link title brackets',
      scope: [
        'punctuation.definition.link.title',
        'punctuation.definition.link.description',
      ],
      settings: {
        foreground: d.syntax.linkTitleBrackets,
      },
    },
    {
      name: 'Link URL',
      scope: [
        'markup.underline.link',
      ],
      settings: {
        foreground: d.syntax.linkUrl,
      },
    },
    {
      name: 'Accented link URL brackets',
      scope: [
        'punctuation.definition.metadata.markdown',
      ],
      settings: {
        foreground: d.syntax.linkUrlBrackets,
      },
    },
    {
      name: 'Fenced code blocks',
      scope: [
        'punctuation.definition.markdown',
      ],
      settings: {
        foreground: d.syntax.codeBlock,
      },
    },
    {
      name: 'Fenced code block language',
      scope: [
        'fenced_code.block.language',
      ],
      settings: {
        foreground: d.syntax.codeBlockLanguage,
      },
    },
    {
      name: 'Lists',
      scope: [
        'punctuation.definition.list.begin',
      ],
      settings: {
        foreground: d.syntax.listMarker,
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
        foreground: d.syntax.svelteBlock,
      },
    },
  ],
  semanticHighlighting: true,
  semanticTokenColors: {
    // Annotations
    annotation: d.syntax.annotation,
    'property.annotation': d.syntax.annotation,
    '*.annotation': d.syntax.annotation,
    // Others implicitly defined through scopes, see:
    // https://code.visualstudio.com/api/language-extensions/semantic-highlight-guide#semantic-token-scope-map
  },
}
