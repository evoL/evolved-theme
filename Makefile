COMMON_SRCS = lib/colors.libsonnet lib/huetone.libsonnet

%.itermcolors: %.jsonnet ${COMMON_SRCS} iterm2/theme.libsonnet 
	jsonnet --string --output-file $@ $<

%.sublime-color-scheme: %.jsonnet ${COMMON_SRCS} lib/textmate.libsonnet sublime-text/theme.libsonnet
	jsonnet --output-file $@ $<

vscode/%-color-theme.json: vscode/%.jsonnet $(COMMON_SRCS) lib/textmate.libsonnet vscode/theme.libsonnet 
	jsonnet --output-file $@ $<

all: iterm2/evolved-dark.itermcolors iterm2/evolved-light.itermcolors
all: sublime-text/evolved-dark.sublime-color-scheme sublime-text/evolved-light.sublime-color-scheme
all: vscode/evolved-dark-color-theme.json vscode/evolved-light-color-theme.json