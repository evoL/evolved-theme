local huetone = import './huetone.libsonnet';

local roles = {
  default:: {
    background: 99,
    foreground: 60,
    text: 50,
  },
  e: self.default,
  v: self.default {
    text: 60,
    foreground: 70,
  },
  o: self.default {
    text: 60,
  },
  l: self.default {
    text: 60,
    foreground: 70,
  },
  pink: self.default {
    text: 70,
    foreground: 70,
  },
  purple: self.default {
    text: 60,
  },
  neutral: self.default,
};

local getters = {
  [hue.name]: (
    function(toneOrRole, shift=0)
      local tone = std.toString(if std.isString(toneOrRole) then roles[hue.name][toneOrRole] else toneOrRole);
      local indices = std.find(tone, huetone.tones);
      assert std.length(indices) == 1 : 'did not find ' + hue.name + '.' + toneOrRole;

      local index = indices[0] + shift;
      assert index >= 0 && index < std.length(huetone.tones) : 'color index out of bounds';

      hue.colors[index]
  )
  for hue in huetone.hues
};

local palette = getters {
  accent: self.v,
};

{
  palette:: palette,
  light: {
    codeBackground: '#ffffff',
    text: palette.neutral('text'),
    accentText: palette.accent('text'),
    inactiveText: palette.neutral('text', +2),
    uiBackground: palette.neutral('background'),  // AKA colors.background
    uiForeground: palette.neutral('foreground'),  // AKA colors.foreground
    inactiveForeground: palette.neutral('foreground', +2),
    accentForeground: palette.accent('foreground'),
    activeUiBackground: palette.neutral('background', -1),  // subtle active effect (e.g. hover)
    elevatedUiBackground: palette.neutral('background', -1),  // for containers on top of UI
    selectionBackground: palette.accent('background', -1),
    selectionForeground: palette.accent('foreground'),
    dimSelectionBackground: palette.accent('background'),
    containerBackground: palette.accent('foreground'),  // inverted
    containerForeground: palette.accent('background'),  // inverted
    activeContainerBackground: palette.accent('foreground', -1),
    secondaryContainerBackground: palette.neutral('foreground', +1),  // XXX: separate role instead of +1?
    secondaryContainerForeground: palette.neutral('background'),  // inverted
    activeSecondaryContainerBackground: palette.neutral('foreground'),  // XXX: separate role?
    badgeBackground: palette.accent('foreground', -1),
    badgeForeground: palette.accent('background'),
    cursorColor: palette.accent('foreground'),
    cursorText: palette.accent('background'),
    linkText: palette.accent('foreground'),
    activeLinkText: palette.accent('foreground', -1),
    outline: palette.neutral('background', -1),
    pronouncedOutline: palette.neutral('foreground', +2),
    activeOutline: palette.accent('foreground', +2),
    shadow: palette.neutral(10),
  }
}