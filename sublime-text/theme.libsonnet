local textmate = import '../lib/textmate.libsonnet';
local utils = import '../lib/utils.libsonnet';

local convertRule(tmRule) = [std.prune({
  scope: scope,
  name: tmRule.name + ' ' + scope,

  foreground: std.get(tmRule.settings, 'foreground'),
  font_style: std.get(tmRule.settings, 'fontStyle'),
}) for scope in tmRule.scope];

{
  local d = self.defs,
  local tm = textmate {defs:: d},
  defs:: error "Missing color definitions in Sublime Text theme",
  name: error "Sublime Text color schemes need a name",

  variables: {
    shadow: 'color(' + d.shadow + ' alpha(' + (d.shadowAlpha * 0.01) + '))',
    whitespace: d.text.whitespace,
  },

  globals: {
    background: d.bg.code,
    foreground: d.text.code,
    invisibles: "color(var(whitespace) alpha(0.4))",
    caret: d.bg.cursor,
    line_highlight: d.bg.currentLine,
    
    // Accents

    misspelling: d.text['error'],
    fold_marker: d.bg.codeFoldMarker,
    minimap_border: d.outline.ui,
    accent: d.bg.badge,

    // CSS: todo

    // Gutter

    // gutter: d.bg.code
    gutter_foreground: d.text.inactive,
    gutter_foreground_highlight: d.text.accent,

    // Diff

    line_diff_width: "3",
    line_diff_added: d.vcs.added,
    line_diff_modified: d.vcs.modified,
    line_diff_deleted: d.vcs.deleted,

    // Selection

    selection: d.bg.selection,
    selection_foreground: d.text.selection,
    selection_border: d.outline.active,
    inactive_selection: d.bg.dimSelection,
    inactive_selection_foreground: d.text.dimSelection,

    // Find

    highlight: d.outline.findMatch,
    find_highlight: d.bg.findMatch,
    find_highlight_foreground: d.text.findMatch,
    scroll_selected_highlight: d.fg.findMatch,

    // Rulers

    rulers: d.outline.ruler,

    // Guides

    guide: d.outline.indentGuide,
    active_guide: d.outline.pronounced,

    // Brackets

    brackets_options: "underline",
    brackets_foreground: d.outline.bracketMatch,
    bracket_contents_options: "underline",
    bracket_contents_foreground: d.outline.bracketMatch,

    // Tags

    tags_options: 'underline',
    tags_foreground: d.syntax.tag,

    // Shadows

    shadow: 'var(shadow)',
  },

  rules: std.flatMap(convertRule, tm.tokens),
}