local colors = import '../lib/colors.libsonnet';
local theme = import './theme.libsonnet';

{
  '$schema': 'https://zed.dev/schema/themes/v0.2.0.json',
  name: 'evolved theme',
  author: 'Rafał Hirsch',
  themes: [
    theme {
      name: 'evolved light',
      appearance: 'light',
      defs:: colors.light,
    },
    theme {
      name: 'evolved dark',
      appearance: 'dark',
      defs:: colors.dark,
    },
  ],
}
