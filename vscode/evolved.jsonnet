local colors = import '../lib/colors.libsonnet';
local theme = import './theme.libsonnet';

{
  'evolved-light-color-theme.json': theme {
    defs:: colors.light,
    palette:: colors.light.palette,
    type: 'light',
  },
  'evolved-dark-color-theme.json': theme {
    defs:: colors.dark,
    palette:: colors.dark.palette,
    type: 'dark',
  },
}
