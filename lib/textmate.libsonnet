{
  local d = self.defs,
  defs:: error 'Color definitions are required',

  tokens: [
    // Cross-language tokens
    {
      name: 'Comment',
      scope: [
        'comment',
      ],
      settings: {
        foreground: d.syntax.comment,
        fontStyle: 'italic',
      },
    },
    {
      name: 'String',
      scope: [
        'string',
        'markup.inline.raw.string',
        'markup.raw.inline.markdown',
      ],
      settings: {
        foreground: d.syntax.string,
      },
    },
    {
      name: 'String interpolation and other fancy stuff in literals',
      scope: [
        'punctuation.definition.template-expression',
        'constant.character.escape',
        'string.interpolated.expression',
      ],
      settings: {
        foreground: d.syntax.specialStringPart,
      },
    },
    {
      name: 'Accented string quotes',
      scope: [
        'punctuation.definition.string',
        'punctuation.definition.raw',
      ],
      settings: {
        foreground: d.syntax.stringQuote,
      },
    },
    {
      name: 'Number',
      scope: [
        'constant.numeric',
      ],
      settings: {
        foreground: d.syntax.number,
      },
    },
    {
      name: 'Keywords',
      scope: [
        'constant.language',
        'keyword.control',
        'keyword.declaration',
        'keyword.other',
        'storage.type',
        'storage.modifier',
        'keyword.operator.type.js',
        'support.function.svelte',  // on: prefix etc
      ],
      settings: {
        foreground: d.syntax.keyword,
      },
    },
    {
      name: 'this',
      scope: [
        'variable.language.this',
        'variable.language.special.self',
        'variable.parameter.function.language.special.self',
      ],
      settings: {
        foreground: d.syntax.this,
        fontStyle: 'italic',
      },
    },
    {
      name: 'Operators',
      scope: [
        'keyword.operator',
        'storage.modifier.optional.js',
      ],
      settings: {
        foreground: d.syntax.operator,
      },
    },
    {
      name: 'Types',
      scope: [
        'support.class',
        'support.type.builtin',
        'support.type.primitive',
        'support.type.unknown',
        'entity.name.class',
        'entity.name.interface',
        'entity.name.label',
        'entity.name.type',
        'entity.other.inherited-class',
        'storage.modifier.array.js',
        'storage.type.protobuf',
        'storage.type.primitive.protobuf',
        'variable.type',
      ],
      settings: {
        foreground: d.syntax.type,
      },
    },
    {
      name: 'Variables',
      scope: [
        'variable.other.constant',
        'variable.other.readwrite',
        'entity.name.variable',
      ],
      settings: {
        foreground: d.syntax.localVariable,
      },
    },
    {
      name: 'Functions',
      scope: [
        'entity.name.function',
        'meta.function-call.python',
        'support.function',
        'variable.function',
      ],
      settings: {
        foreground: d.syntax['function'],
      },
    },
    {
      name: 'Function parameters',
      scope: [
        'variable.parameter',
      ],
      settings: {
        foreground: d.syntax.parameter,
      },
    },
    {
      name: 'Object properties',
      scope: [
        'variable.object.property',
        'variable.other.property',
        'meta.attribute.python',
        'meta.mapping.key',
        'meta.property.object',
        'entity.name.tag.yaml',
        'entity.name.function.jsonnet',
        // # in private fields
        'punctuation.definition.variable.js', 
        // JS/TS class and interface fields
        'meta.class variable.other.readwrite',
        'meta.interface variable.other.readwrite',
        // JSON/YAML keys
        'support.type.property-name.json',
        'meta.mapping.key string.unquoted',
        'meta.mapping.key string.quoted',
      ],
      settings: {
        foreground: d.syntax.property,
      },
    },
    {
      name: 'Accented key-value operator',
      scope: [
        'punctuation.separator.key-value',
        'punctuation.separator.dictionary.key-value',
        'keyword.operator.type.annotation.ts',
        'meta.mapping punctuation.separator.key-value.mapping',
        'meta.mapping.key string.quoted punctuation.definition.string',
      ],
      settings: {
        foreground: d.syntax.keyValueOperator,
      },
    },
    {
      name: 'Enums',
      scope: [
        'entity.name.enum',
        'entity.name.type.enum',
      ],
      settings: {
        foreground: d.syntax.enum,
      },
    },
    {
      name: 'Enum members',
      scope: [
        'variable.other.enummember',
        'meta.enum variable.other.readwrite',
      ],
      settings: {
        foreground: d.syntax.enumMember,
      },
    },
    // HTML
    {
      name: 'Tags',
      scope: [
        'entity.name.tag',
      ],
      settings: {
        foreground: d.syntax.tag,
      },
    },
    {
      name: 'Tag beginning/end',
      scope: [
        'punctuation.definition.tag',
      ],
      settings: {
        foreground: d.syntax.tagBrackets,
      },
    },
    {
      name: 'Attribute name',
      scope: [
        'entity.other.attribute-name',
      ],
      settings: {
        foreground: d.syntax.attribute,
      },
    },
    {
      name: 'Attribute =',
      scope: [
        'punctuation.separator.key-value',
      ],
      settings: {
        foreground: d.syntax.attributeSeparator,
      },
    },
    // CSS
    {
      name: 'Variables',
      scope: [
        'variable.css',
        'variable.argument.css',
        'variable.other.custom-property.css',
      ],
      settings: {
        foreground: d.syntax.cssVariable,
        fontStyle: 'italic',
      },
    },
    {
      name: 'Property values',
      scope: [
        'meta.property-value.css',
      ],
      settings: {
        foreground: d.syntax.cssValue,
      },
    },
    // XML
    {
      name: 'Namespace',
      scope: [
        'entity.other.attribute-name.namespace',
      ],
      settings: {
        foreground: d.syntax.xmlNamespace,
      },
    },
    {
      name: 'Namespace separator (colon)',
      scope: [
        'punctuation.separator.namespace',
      ],
      settings: {
        foreground: d.syntax.xmlNamespaceSeparator,
      },
    },
    // Markdown
    {
      name: 'Heading',
      scope: [
        'markup.heading',
        'entity.name.section.markdown',
      ],
      settings: {
        foreground: d.syntax.heading,
      },
    },
    {
      name: 'Accented heading marker',
      scope: [
        'punctuation.definition.heading',
      ],
      settings: {
        foreground: d.syntax.headingMarker,
      },
    },
    {
      name: 'Bold',
      scope: [
        'markup.bold',
      ],
      settings: {
        fontStyle: 'bold',
      },
    },
    {
      name: 'Italic',
      scope: [
        'markup.italic',
      ],
      settings: {
        fontStyle: 'italic',
      },
    },
    {
      name: 'Link title',
      scope: [
        'string.other.link.title',
        'string.other.link.description',
        'meta.image.inline.description',
        'meta.link.inline.description',
      ],
      settings: {
        foreground: d.syntax.linkTitle
      },
    },
    {
      name: 'Accented link title brackets',
      scope: [
        'punctuation.definition.link.begin',
        'punctuation.definition.link.end',
        'punctuation.definition.link.title',
        'punctuation.definition.link.description',
      ],
      settings: {
        foreground: d.syntax.linkTitleBrackets,
      },
    },
    {
      name: 'Link URL',
      scope: [
        'markup.underline.link',
      ],
      settings: {
        foreground: d.syntax.linkUrl,
      },
    },
    {
      name: 'Accented link URL brackets',
      scope: [
        'punctuation.definition.metadata.markdown',
        'punctuation.definition.metadata.begin',
        'punctuation.definition.metadata.end',
      ],
      settings: {
        foreground: d.syntax.linkUrlBrackets,
      },
    },
    {
      name: 'Fenced code blocks',
      scope: [
        'punctuation.definition.markdown',
        'punctuation.definition.raw.code-fence',
      ],
      settings: {
        foreground: d.syntax.codeBlock,
      },
    },
    {
      name: 'Fenced code block language',
      scope: [
        'fenced_code.block.language',
        'meta.code-fence.definition constant.other.language-name',
      ],
      settings: {
        foreground: d.syntax.codeBlockLanguage,
      },
    },
    {
      name: 'Lists',
      scope: [
        'punctuation.definition.list.begin',
        'punctuation.definition.list_item',
      ],
      settings: {
        foreground: d.syntax.listMarker,
      },
    },
    // Svelte
    {
      name: 'Blocks',
      scope: [
        'punctuation.definition.keyword',
        'punctuation.definition.block.begin.svelte',
        'punctuation.definition.block.end.svelte',
      ],
      settings: {
        foreground: d.syntax.svelteBlock,
      },
    },
  ],
}
