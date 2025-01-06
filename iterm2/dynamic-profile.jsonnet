local colors = import '../lib/colors.libsonnet';
local combinedTheme = import './combined-theme.libsonnet';
local theme = import './theme.libsonnet';

{
  Profiles: [
    {
      Name: 'evolved light',
      Guid: 'e63cb39e-6ed8-434e-8977-01034c79a981',
    } + theme { defs:: colors.light },
    {
      Name: 'evolved dark',
      Guid: 'e827ded4-03ef-43e7-961a-f5d7be5cd61e',
    } + theme { defs:: colors.dark },
    combinedTheme {
      Name: 'evolved light + dark',
      Guid: '11cfadb8-633a-4eb1-93ed-d2bd164ecd70',
    },
  ],
}
