local colors = import '../lib/colors.libsonnet';
local theme = import './theme.libsonnet';

{
  name: 'evolved theme',
  version: std.extVar('version'),
  themes: [
    theme {
      name: 'evolved dark',
      defs:: colors.dark,
    },
    theme {
      name: 'evolved light',
      defs:: colors.light,
    },
  ]
}
