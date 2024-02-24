local colors = import '../lib/colors.libsonnet';
local theme = import './theme.libsonnet';

theme {
  defs:: colors.dark,
  type: 'dark',
}