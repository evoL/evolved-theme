local colors = import '../lib/colors.libsonnet';
local theme = import './theme.libsonnet';

theme {
  name: 'evolved dark',
  defs:: colors.dark,
}
