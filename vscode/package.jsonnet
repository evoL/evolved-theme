{
  "name": "evolved-theme",
  "displayName": "evolved theme",
  "description": "evol's color theme",
  "publisher": "evolved-systems",
  "license": "MIT",
  "icon": "./icon.png",
  "repository": {
    "type": "git",
    "url": "https://github.com/evoL/evolved-theme"
  },
  "version": std.extVar("version"),
  "engines": {
    "vscode": "^1.80.0"
  },
  "categories": [
    "Themes"
  ],
  "contributes": {
    "themes": [
      {
        "label": "evolved light",
        "uiTheme": "vs",
        "path": "./evolved-light-color-theme.json"
      },
      {
        "label": "evolved dark",
        "uiTheme": "vs-dark",
        "path": "./evolved-dark-color-theme.json"
      }
    ]
  }
}
