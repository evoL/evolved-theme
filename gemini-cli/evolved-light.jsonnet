local colors = import '../lib/colors.libsonnet';
local theme = import './theme.libsonnet';

theme {
  name: 'evolved light',
  defs:: colors.light,
}
