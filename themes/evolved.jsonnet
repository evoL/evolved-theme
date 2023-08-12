local colors = import './colors.libsonnet';
local vscode = import './vscode.libsonnet';

{
  'evolved-light-color-theme.json': vscode {
    defs:: colors.light,
    palette:: colors.light.palette,
    type: 'light',
  },
  'evolved-dark-color-theme.json': vscode {
    defs:: colors.dark,
    palette:: colors.dark.palette,
    type: 'dark',
  },
}
