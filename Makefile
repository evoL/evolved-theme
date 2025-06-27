COMMON_SRCS = lib/colors.libsonnet lib/huetone.libsonnet

dist/iterm2/%.itermcolors: iterm2/%.jsonnet ${COMMON_SRCS} iterm2/combined-theme.libsonnet iterm2/theme.libsonnet
	jsonnet --string --output-file $@ $<

dist/sublime-text/%.sublime-color-scheme: sublime-text/%.jsonnet ${COMMON_SRCS} lib/textmate.libsonnet sublime-text/theme.libsonnet
	jsonnet --output-file $@ $<

dist/ghostty/%: ghostty/%.jsonnet ${COMMON_SRCS} ghostty/config.libsonnet ghostty/theme.libsonnet
	jsonnet --string --output-file $@ $<

dist/vscode/%-color-theme.json: vscode/%.jsonnet $(COMMON_SRCS) lib/textmate.libsonnet vscode/theme.libsonnet
	jsonnet --output-file $@ $<

dist/zed/themes/%.json: zed/%.jsonnet $(COMMON_SRCS) lib/textmate.libsonnet zed/theme.libsonnet
	jsonnet --output-file $@ $<

all: dist/ghostty/evolved-dark dist/ghostty/evolved-light
all: dist/iterm2/evolved.itermcolors dist/iterm2/evolved-dark.itermcolors dist/iterm2/evolved-light.itermcolors dist/iterm2/evolved-dynamic.json
all: dist/sublime-text/evolved-dark.sublime-color-scheme dist/sublime-text/evolved-light.sublime-color-scheme
all: dist/vscode/evolved-dark-color-theme.json dist/vscode/evolved-light-color-theme.json
all: dist/zed/themes/evolved.json

dist/iterm2/evolved-dynamic.json: iterm2/dynamic-profile.jsonnet ${COMMON_SRCS} iterm2/combined-theme.libsonnet iterm2/theme.libsonnet
	jsonnet --output-file $@ $<
