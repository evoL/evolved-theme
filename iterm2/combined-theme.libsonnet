local colors = import '../lib/colors.libsonnet';
local theme = import './theme.libsonnet';
local appendSuffix(object, suffix) = {
  [k + suffix]: object[k]
  for k in std.objectFields(object)
};

local lightTheme = theme { defs:: colors.light };
local darkTheme = theme { defs:: colors.dark };

lightTheme  // For compatibility
+ appendSuffix(lightTheme, ' (Light)')
+ appendSuffix(darkTheme, ' (Dark)') + {
  'Use Separate Colors for Light and Dark Mode': true,
}
