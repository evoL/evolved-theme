local palette = import './palette.libsonnet';
local colors = {
  background: palette.neutral99,
  foreground: palette.neutral60,
  text: palette.neutral50,
  outline: palette.neutral95,
  badgebg: palette.v60,
  badgefg: palette.v99,
  codebg: '#ffffff',
  activeBorder: palette.v80,
  selection: palette.v95,
  link: palette.v70,
  activeLink: palette.v60,
};
local alpha(num) = std.format('%02x', num / 100 * 255);

{
  'evolved-light-color-theme.json': {
    '$schema': 'vscode://schemas/color-theme',
    type: 'light',
    colors: {
      // General
      foreground: colors.foreground,
      focusBorder: palette.v70,
      'progressBar.background': palette.v70,
      'selection.background': colors.selection,
      'scrollbar.shadow': palette.neutral10 + alpha(12),
      // Activity bar
      'activityBar.background': colors.background,
      'activityBar.foreground': palette.v70,
      'activityBar.inactiveForeground': palette.neutral80,
      'activityBar.border': colors.outline,
      'activityBarBadge.background': colors.badgebg,
      'activityBarBadge.foreground': colors.badgefg,
      // Side bar
      'sideBar.background': colors.background,
      'sideBar.border': colors.outline,
      'sideBar.dropBackground': palette.v95 + alpha(30),
      'sideBarSectionHeader.background': colors.background,
      // "sideBarSectionHeader.foreground": null,
      // "sideBarSectionHeader.border": null,
      // "sideBarTitle.foreground": null,
      'list.inactiveSelectionBackground': palette.v95,
      'list.inactiveSelectionForeground': palette.v70,
      'list.hoverBackground': palette.neutral95,
      // 'list.hoverForeground': null,
      'list.activeSelectionBackground': palette.v95,
      'list.activeSelectionForeground': palette.v70,
      'list.activeSelectionIconForeground': palette.v70,
      'list.focusOutline': palette.v90,
      'list.dropBackground': palette.v99,
      'list.errorForeground': palette.e50,
      'list.highlightForeground': palette.v60,
      'list.invalidItemForeground': palette.pink70,
      'list.warningForeground': palette.v70,
      'listFilterWidget.background': colors.background,
      'listFilterWidget.noMatchesOutline': palette.e60,
      'tree.indentGuidesStroke': palette.neutral40 + alpha(20),
      // Status bar
      'statusBar.background': palette.neutral95,
      'statusBar.foreground': colors.foreground,
      'statusBar.border': null,
      'statusBar.debuggingBackground': palette.l70,
      'statusBar.debuggingForeground': palette.l99,
      'statusBar.noFolderBackground': palette.neutral90,
      'statusBar.noFolderForeground': palette.neutral50,
      'statusBarItem.remoteBackground': palette.v90,
      'statusBarItem.remoteForeground': palette.v60,
      // Title bar
      'titleBar.activeBackground': colors.background,
      'titleBar.activeForeground': colors.text,
      'titleBar.inactiveBackground': colors.background,
      'titleBar.inactiveForeground': palette.neutral70,
      'titleBar.border': colors.outline,
      // Menus (not on Mac)
      'menu.background': colors.background,
      'menu.foreground': colors.foreground,
      'menu.selectionBackground': palette.neutral95,
      'menu.selectionForeground': colors.foreground,
      'menu.separatorBackground': colors.outline,
      'menubar.selectionBackground': palette.neutral95,
      'menubar.selectionForeground': colors.text,
      // Buttons
      'button.background': palette.v70,
      'button.foreground': palette.v99,
      'button.hoverBackground': palette.v60,
      'button.secondaryBackground': palette.neutral70,
      'button.secondaryForeground': palette.neutral99,
      'button.secondaryHoverBackground': palette.neutral60,
      'textLink.foreground': colors.link,
      'textLink.activeForeground': colors.activeLink,
      // Inputs
      'input.background': colors.background,
      'input.foreground': colors.text,
      'input.border': palette.neutral80,
      'input.placeholderForeground': palette.neutral80,
      'inputOption.activeBackground': palette.v95,
      'inputOption.activeBorder': palette.v80,
      'inputOption.activeForeground': palette.v60,
      'inputOption.hoverBackground': palette.neutral95,
      // Panels + Terminal
      'badge.background': colors.badgebg,
      'badge.foreground': colors.badgefg,
      'panel.background': colors.background,
      'panel.border': colors.outline,
      'panel.dropBorder': colors.activeBorder,
      'panelTitle.activeBorder': colors.activeBorder,
      'panelTitle.activeForeground': palette.v60,
      'panelTitle.inactiveForeground': colors.foreground,
      'terminal.border': colors.outline,
      'terminal.selectionBackground': palette.v95,
      'terminalCursor.foreground': palette.v80,
      'terminalCursor.background': palette.v99,
      'terminal.background': colors.background,
      'terminal.foreground': palette.neutral40,
      'terminal.ansiBlack': palette.neutral20,
      'terminal.ansiBlue': palette.o60,
      'terminal.ansiBrightBlack': palette.neutral60,
      'terminal.ansiBrightBlue': palette.o70,
      'terminal.ansiBrightCyan': palette.pink80,
      'terminal.ansiBrightGreen': palette.l80,
      'terminal.ansiBrightMagenta': palette.purple70,
      'terminal.ansiBrightRed': palette.e70,
      'terminal.ansiBrightWhite': palette.neutral95,
      'terminal.ansiBrightYellow': palette.v80,
      'terminal.ansiCyan': palette.pink70,
      'terminal.ansiGreen': palette.l70,
      'terminal.ansiMagenta': palette.purple60,
      'terminal.ansiRed': palette.e60,
      'terminal.ansiWhite': palette.neutral80,
      'terminal.ansiYellow': palette.v70,
      // Tabs
      'editorGroupHeader.tabsBackground': colors.background,
      'editorGroupHeader.tabsBorder': colors.outline,
      'tab.border': colors.outline,
      'tab.activeBorder': colors.codebg,
      'tab.activeBorderTop': colors.activeBorder,
      'tab.activeBackground': colors.codebg,
      'tab.activeForeground': colors.text,
      'tab.inactiveBackground': colors.background,
      'tab.inactiveForeground': palette.neutral70,
      // Breadcrumbs
      'breadcrumb.background': null,
      'breadcrumb.foreground': null,
      'breadcrumb.focusForeground': null,
      // Scrollbar
      'scrollbarSlider.activeBackground': palette.neutral70 + alpha(60),
      'scrollbarSlider.background': palette.neutral70 + alpha(30),
      'scrollbarSlider.hoverBackground': palette.neutral70 + alpha(50),
      // Widgets
      'widget.shadow': palette.neutral10 + alpha(12),
      'editorWidget.background': colors.background,
      'editorWidget.border': colors.outline,
      'editorWidget.resizeBorder': colors.outline,
      'editorWidget.foreground': colors.foreground,
      'pickerGroup.border': colors.outline,
      'pickerGroup.foreground': palette.neutral80,
      'debugToolBar.background': colors.background,
      'debugToolBar.border': colors.outline,
      // Notifications
      'notifications.background': colors.background,
      'notifications.border': colors.outline,
      'notifications.foreground': colors.foreground,
      'notificationCenterHeader.background': colors.background,
      'notificationsErrorIcon.foreground': palette.e60,
      'notificationsInfoIcon.foreground': palette.o60,
      'notificationsWarningIcon.foreground': palette.v70,
      // Git decorations
      'gitDecoration.addedResourceForeground': palette.l70,
      'gitDecoration.conflictingResourceForeground': palette.pink70,
      'gitDecoration.deletedResourceForeground': palette.e60,
      'gitDecoration.ignoredResourceForeground': palette.neutral80,
      'gitDecoration.modifiedResourceForeground': palette.v70,
      'gitDecoration.renamedResourceForeground': palette.o60,
      'gitDecoration.stageDeletedResourceForeground': palette.e60,
      'gitDecoration.stageModifiedResourceForeground': palette.v70,
      'gitDecoration.submoduleResourceForeground': palette.pink70,
      'gitDecoration.untrackedResourceForeground': palette.neutral70,
      // Editor
      'editor.background': colors.codebg,
      'editor.foreground': colors.text,
      'editorLineNumber.activeForeground': palette.v60,
      'editorLineNumber.foreground': palette.neutral70,
      'editorCursor.background': palette.v99,
      'editorCursor.foreground': palette.v70,
      'editor.selectionBackground': colors.selection,
      'editor.inactiveSelectionBackground': palette.v99,
      'editorWhitespace.foreground': palette.v80,
      'editor.selectionHighlightBackground': palette.v99,
      'editor.selectionHighlightBorder': palette.v90,
      'editor.findMatchBackground': palette.l95,
      'editor.findMatchBorder': palette.l90,
      'editor.findMatchHighlightBackground': palette.l99,
      'editor.findMatchHighlightBorder': palette.l90,
      'editor.findRangeHighlightBackground': palette.neutral95 + alpha(40),
      'editor.rangeHighlightBackground': palette.l95 + alpha(40),
      'editor.hoverHighlightBackground': palette.v90 + alpha(40),
      'editor.wordHighlightBackground': palette.o80 + alpha(30),
      'editor.wordHighlightStrongBackground': palette.o70 + alpha(40),
      'editor.lineHighlightBorder': palette.neutral95,
      'editorLink.activeForeground': colors.link,
      'editorIndentGuide.activeBackground': palette.neutral80,
      'editorIndentGuide.background': palette.neutral95,
      'editorRuler.foreground': palette.neutral95,
      'editorBracketMatch.background': palette.e95,
      'editorBracketMatch.border': palette.e80,
      'editor.foldBackground': palette.neutral90 + alpha(30),
      'editorOverviewRuler.border': palette.neutral90,
      'editorError.foreground': palette.e50,
      'editorError.background': palette.e90 + alpha(30),
      'editorWarning.foreground': palette.v50,
      'editorWarning.background': palette.v90 + alpha(30),
      'editorInfo.foreground': palette.o50,
      'editorInfo.background': palette.o90 + alpha(30),
      'editorGutter.addedBackground': palette.l70,
      'editorGutter.deletedBackground': palette.e60,
      'editorGutter.modifiedBackground': palette.o60,
      'editorGutter.foldingControlForeground': palette.neutral70,
      'editorCodeLens.foreground': palette.neutral70,
      'editorGroup.border': colors.outline,
      'editorBracketHighlight.foreground1': palette.v60,
      'editorBracketHighlight.foreground2': palette.o50,
      'editorBracketHighlight.foreground3': palette.l50,
      'editorBracketHighlight.unexpectedBracket.foreground': palette.e40,
      // Diff editor
      'diffEditor.insertedTextBackground': palette.l70 + alpha(30),
      'diffEditor.insertedLineBackground': palette.l80 + alpha(30),
      'diffEditor.removedTextBackground': palette.e60 + alpha(20),
      'diffEditor.removedLineBackground': palette.e70 + alpha(20),
      'diffEditor.diagonalFill': palette.neutral95,
      // Marker navigation
      'editorMarkerNavigationError.background': palette.e60,
      'editorMarkerNavigationError.headerBackground': palette.e95,
      'editorMarkerNavigationWarning.background': palette.v70,
      'editorMarkerNavigationWarning.headerBackground': palette.v95,
      'editorMarkerNavigationInfo.background': palette.o60,
      'editorMarkerNavigationInfo.headerBackground': palette.o95,
      // Merge conflicts
      'merge.commonContentBackground': palette.neutral90 + alpha(30),
      'merge.commonHeaderBackground': palette.neutral80 + alpha(30),
      'merge.currentContentBackground': palette.e90 + alpha(30),
      'merge.currentHeaderBackground': palette.e80 + alpha(30),
      'merge.incomingContentBackground': palette.o90 + alpha(30),
      'merge.incomingHeaderBackground': palette.o80 + alpha(30),
      // Peek View Editor
      'peekView.border': palette.neutral60,
      'peekViewTitle.background': palette.neutral95,
      'peekViewTitleDescription.foreground': colors.foreground,
      'peekViewTitleLabel.foreground': colors.text,
      'peekViewEditor.background': palette.neutral99,
      'peekViewEditor.matchHighlightBackground': palette.v90 + alpha(40),
      'peekViewResult.background': palette.neutral95,
      'peekViewResult.fileForeground': colors.text,
      'peekViewResult.lineForeground': colors.foreground,
      'peekViewResult.matchHighlightBackground': palette.v80 + alpha(40),
      'peekViewResult.selectionBackground': palette.v95,
      'peekViewResult.selectionForeground': palette.v70,
    },
    tokenColors: [
      // Cross-language tokens
      {
        name: 'Comment',
        scope: [
          'comment',
        ],
        settings: {
          foreground: palette.neutral70,
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
          foreground: palette.l70,
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
          foreground: palette.l60,
        },
      },
      {
        name: 'Accented string quotes',
        scope: [
          'punctuation.definition.string',
          'punctuation.definition.raw',
        ],
        settings: {
          foreground: palette.l60,
        },
      },
      {
        name: 'Number',
        scope: [
          'constant.numeric',
        ],
        settings: {
          foreground: palette.o60,
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
          foreground: palette.e70,
          fontStyle: 'italic',
        },
      },
      {
        name: 'Operators',
        scope: [
          'keyword.operator',
        ],
        settings: {
          foreground: palette.l60,
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
          foreground: palette.v70,
        },
      },
      {
        name: 'Variables',
        scope: [
          'variable.other.readwrite',
          'entity.name.variable',
        ],
        settings: {
          foreground: colors.text,
        },
      },
      {
        name: 'Functions',
        scope: [
          'entity.name.function',
          'meta.function-call.python',
        ],
        settings: {
          foreground: palette.o60,
        },
      },
      {
        name: 'Function parameters',
        scope: [
          'variable.parameter',
        ],
        settings: {
          foreground: palette.v50,
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
          foreground: palette.o40,
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
          foreground: palette.o30,
        },
      },
      {
        name: 'Enums',
        scope: [
          'entity.name.type.enum',
        ],
        settings: {
          foreground: palette.v60,
        },
      },
      {
        name: 'Enum members',
        scope: [
          'variable.other.enummember',
        ],
        settings: {
          foreground: palette.v40,
        },
      },
      // HTML
      {
        name: 'Tags',
        scope: [
          'entity.name.tag',
        ],
        settings: {
          foreground: palette.o60,
        },
      },
      {
        name: 'Tag beginning/end',
        scope: [
          'punctuation.definition.tag',
        ],
        settings: {
          foreground: palette.o50,
        },
      },
      {
        name: 'Attribute name',
        scope: [
          'entity.other.attribute-name',
        ],
        settings: {
          foreground: palette.l60,
        },
      },
      {
        name: 'Attribute =',
        scope: [
          'punctuation.separator.key-value',
        ],
        settings: {
          foreground: palette.l50,
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
          foreground: palette.o50,
          fontStyle: 'italic',
        },
      },
      {
        name: 'Property values',
        scope: [
          'meta.property-value.css',
        ],
        settings: {
          foreground: palette.neutral60,
        },
      },
      // XML
      {
        name: 'Namespace',
        scope: [
          'entity.other.attribute-name.namespace',
        ],
        settings: {
          foreground: palette.l50,
        },
      },
      {
        scope: [
          'punctuation.separator.namespace',
        ],
        settings: {
          foreground: palette.l40,
        },
      },
      // Markdown
      {
        name: 'Heading',
        scope: [
          'markup.heading',
        ],
        settings: {
          foreground: palette.v70,
        },
      },
      {
        name: 'Accented heading marker',
        scope: [
          'punctuation.definition.heading',
        ],
        settings: {
          foreground: palette.v60,
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
          foreground: palette.o70,
        },
      },
      {
        name: 'Accented link title brackets',
        scope: [
          'punctuation.definition.link.title',
          'punctuation.definition.link.description',
        ],
        settings: {
          foreground: palette.o60,
        },
      },
      {
        name: 'Link URL',
        scope: [
          'markup.underline.link',
        ],
        settings: {
          foreground: palette.o60,
        },
      },
      {
        name: 'Accented link URL brackets',
        scope: [
          'punctuation.definition.metadata.markdown',
        ],
        settings: {
          foreground: palette.o50,
        },
      },
      {
        name: 'Fenced code blocks',
        scope: [
          'punctuation.definition.markdown',
        ],
        settings: {
          foreground: palette.l60,
        },
      },
      {
        name: 'Fenced code block language',
        scope: [
          'fenced_code.block.language',
        ],
        settings: {
          foreground: palette.l50,
        },
      },
      {
        name: 'Lists',
        scope: [
          'punctuation.definition.list.begin',
        ],
        settings: {
          foreground: palette.e70,
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
          foreground: palette.e60,
        },
      },
    ],
    semanticHighlighting: true,
    semanticTokenColors: {
      // Annotations
      annotation: palette.e60,
      'property.annotation': palette.e60,
      '*.annotation': palette.e60,
      
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
