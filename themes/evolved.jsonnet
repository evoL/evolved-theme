local colors = import './colors.libsonnet';
local alpha(num) = std.format('%02x', num / 100 * 255);

{
  'evolved-light-color-theme.json': {
    local c = colors.light,
    local p = colors.palette,

    '$schema': 'vscode://schemas/color-theme',
    type: 'light',
    colors: {
      // General
      foreground: c.uiForeground,
      focusBorder: c.activeOutline,
      'progressBar.background': c.accentForeground,
      'selection.background': c.selectionBackground,
      'scrollbar.shadow': c.shadow + alpha(12),
      // Activity bar
      'activityBar.background': c.uiBackground,
      'activityBar.foreground': c.accentForeground,
      'activityBar.inactiveForeground': c.inactiveForeground,
      'activityBar.border': c.outline,
      'activityBarBadge.background': c.badgeBackground,
      'activityBarBadge.foreground': c.badgeForeground,
      // Side bar
      'sideBar.background': c.uiBackground,
      'sideBar.border': c.outline,
      'sideBar.dropBackground': c.selectionBackground + alpha(30),
      'sideBarSectionHeader.background': c.uiBackground,
      // "sideBarSectionHeader.foreground": null,
      // "sideBarSectionHeader.border": null,
      // "sideBarTitle.foreground": null,
      'list.inactiveSelectionBackground': c.selectionBackground,
      'list.inactiveSelectionForeground': c.selectionForeground,
      'list.hoverBackground': c.activeUiBackground,
      // 'list.hoverForeground': null,
      'list.activeSelectionBackground': c.selectionBackground,
      'list.activeSelectionForeground': c.selectionForeground,
      'list.activeSelectionIconForeground': c.selectionForeground,
      'list.focusOutline': c.activeOutline,
      'list.dropBackground': c.dimSelectionBackground,
      'list.errorForeground': p.e('text'),
      'list.highlightForeground': c.accentText,
      'list.invalidItemForeground': p.pink('text'),
      'list.warningForeground': p.v('text', +1),
      'listFilterWidget.background': c.uiBackground,
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
      'titleBar.activeBackground': c.uiBackground,
      'titleBar.activeForeground': c.text,
      'titleBar.inactiveBackground': c.uiBackground,
      'titleBar.inactiveForeground': c.inactiveText,
      'titleBar.border': c.outline,
      // Menus (not on Mac)
      'menu.background': c.uiBackground,
      'menu.foreground': c.uiForeground,
      'menu.selectionBackground': c.activeUiBackground,
      'menu.selectionForeground': c.text,
      'menu.separatorBackground': c.outline,
      'menubar.selectionBackground': c.activeUiBackground,
      'menubar.selectionForeground': c.text,
      // Buttons
      'button.background': c.containerBackground,
      'button.foreground': c.containerForeground,
      'button.hoverBackground': c.activeContainerBackground,
      'button.secondaryBackground': c.secondaryContainerBackground,
      'button.secondaryForeground': c.secondaryContainerForeground,
      'button.secondaryHoverBackground': c.activeSecondaryContainerBackground,
      'textLink.foreground': c.linkText,
      'textLink.activeForeground': c.activeLinkText,
      // Inputs
      'input.background': c.uiBackground,
      'input.foreground': c.text,
      'input.border': c.pronouncedOutline,
      'input.placeholderForeground': c.inactiveForeground,
      'inputOption.activeBackground': p.accent('background', -1),
      'inputOption.activeBorder': c.activeOutline,
      'inputOption.activeForeground': p.accent('foreground', -1),
      'inputOption.hoverBackground': p.neutral('background', -1),
      // Panels + Terminal
      'badge.background': c.badgeBackground,
      'badge.foreground': c.badgeForeground,
      'panel.background': c.uiBackground,
      'panel.border': c.outline,
      'panel.dropBorder': c.activeOutline,
      'panelTitle.activeBorder': c.activeOutline,
      'panelTitle.activeForeground': c.accentText,
      'panelTitle.inactiveForeground': c.uiForeground,
      'terminal.border': c.outline,
      'terminal.selectionBackground': c.selectionBackground,
      'terminalCursor.foreground': c.cursorColor,
      'terminalCursor.background': c.cursorText,
      'terminal.background': c.uiBackground,
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
      'editorGroupHeader.tabsBackground': c.uiBackground,
      'editorGroupHeader.tabsBorder': c.outline,
      'tab.border': c.outline,
      'tab.activeBorder': c.codeBackground,
      'tab.activeBorderTop': c.activeOutline,
      'tab.activeBackground': c.codeBackground,
      'tab.activeForeground': c.text,
      'tab.inactiveBackground': c.uiBackground,
      'tab.inactiveForeground': c.inactiveText,
      // Breadcrumbs
      'breadcrumb.background': null,
      'breadcrumb.foreground': null,
      'breadcrumb.focusForeground': null,
      // Scrollbar
      'scrollbarSlider.background': p.neutral(70) + alpha(30),
      'scrollbarSlider.hoverBackground': p.neutral(70) + alpha(50),
      'scrollbarSlider.activeBackground': p.neutral(70) + alpha(60),
      // Widgets
      'widget.shadow': c.shadow + alpha(12),
      'editorWidget.background': c.uiBackground,
      'editorWidget.border': c.outline,
      'editorWidget.resizeBorder': c.outline,
      'editorWidget.foreground': c.uiForeground,
      'pickerGroup.border': c.outline,
      'pickerGroup.foreground': p.neutral('text', +3),
      'debugToolBar.background': c.uiBackground,
      'debugToolBar.border': c.outline,
      // Notifications
      'notifications.background': c.uiBackground,
      'notifications.border': c.outline,
      'notifications.foreground': c.uiForeground,
      'notificationCenterHeader.background': c.uiBackground,
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
      'editor.background': c.codeBackground,
      'editor.foreground': c.text,
      'editorLineNumber.activeForeground': c.accentText,
      'editorLineNumber.foreground': c.inactiveText,
      'editorCursor.background': c.cursorText,
      'editorCursor.foreground': c.cursorColor,
      'editor.selectionBackground': c.selectionBackground,
      'editor.inactiveSelectionBackground': c.dimSelectionBackground,
      'editorWhitespace.foreground': p.accent('foreground', +1),
      'editor.selectionHighlightBackground': c.dimSelectionBackground,
      'editor.selectionHighlightBorder': c.activeOutline,
      'editor.findMatchBackground': p.l('background', -1),
      'editor.findMatchBorder': p.l('background', -2),
      'editor.findMatchHighlightBackground': p.l('background'),
      'editor.findMatchHighlightBorder': p.l('background', -2),
      'editor.findRangeHighlightBackground': p.neutral('background', -1) + alpha(40),
      'editor.rangeHighlightBackground': p.l('background', -1) + alpha(40),
      'editor.hoverHighlightBackground': p.accent('background', -2) + alpha(40),
      'editor.wordHighlightBackground': p.o('background', -3) + alpha(30),
      'editor.wordHighlightStrongBackground': p.o('background', -4) + alpha(40),
      'editor.lineHighlightBorder': c.outline,
      'editorLink.activeForeground': c.linkText,
      'editorIndentGuide.activeBackground': c.pronouncedOutline,
      'editorIndentGuide.background': c.outline,
      'editorRuler.foreground': c.outline,
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
      'editorCodeLens.foreground': c.inactiveText,
      'editorGroup.border': c.outline,
      'editorBracketHighlight.foreground1': p.v('foreground', -1),
      'editorBracketHighlight.foreground2': p.o('foreground', -1),
      'editorBracketHighlight.foreground3': p.l('foreground', -2),
      'editorBracketHighlight.unexpectedBracket.foreground': p.e('foreground', -2),
      // Diff editor
      'diffEditor.insertedTextBackground': p.l('foreground') + alpha(30),
      'diffEditor.insertedLineBackground': p.l('foreground', +1) + alpha(30),
      'diffEditor.removedTextBackground': p.e('foreground') + alpha(20),
      'diffEditor.removedLineBackground': p.e('foreground', +1) + alpha(20),
      'diffEditor.diagonalFill': c.outline,
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
      'peekViewTitleDescription.foreground': c.uiForeground,
      'peekViewTitleLabel.foreground': c.text,
      'peekViewEditor.background': p.neutral('background'),
      'peekViewEditor.matchHighlightBackground': p.v('background', -2) + alpha(40),
      'peekViewResult.background': p.neutral('background', -1),
      'peekViewResult.fileForeground': c.text,
      'peekViewResult.lineForeground': c.uiForeground,
      'peekViewResult.matchHighlightBackground': p.v('background', -3) + alpha(40),
      'peekViewResult.selectionBackground': c.selectionBackground,
      'peekViewResult.selectionForeground': c.selectionForeground,
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
          foreground: c.text,
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
  },
}
