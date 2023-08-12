all: themes/evolved-light-color-theme.json themes/evolved-dark-color-theme.json

themes/evolved-light-color-theme.json themes/evolved-dark-color-theme.json: themes/huetone.libsonnet themes/colors.libsonnet themes/evolved.jsonnet
	jsonnet --multi themes themes/evolved.jsonnet

themes/colors.libsonnet: themes/huetone.libsonnet
themes/evolved.jsonnet: themes/vscode.libsonnet