module.exports = {
	'env': {
		'browser': true,
		'es2021': true
	},
	'extends': 'eslint:recommended',
	'parserOptions': {
		'ecmaVersion': 'latest',
		'sourceType': 'module'
	},
	'rules': {
		'indent': [ 'error', 'tab' ],
		'linebreak-style': [ 'error', 'unix' ],
		'quotes': [ 'error', 'single' ],
		'semi': [ 'error', 'always' ],
		//================================================================
		'array-callback-return': ['error', {'checkForEach': true, 'allowImplicit': true}],
		'constructor-super': 'error',
		'for-direction': 'error',
		'getter-return': ['error', { allowImplicit: true }],
		'no-async-promise-executor': 'error',
		'no-await-in-loop': 'error',
		'no-class-assign': 'error',
		'no-compare-neg-zero': 'error',
		'no-cond-assign': 'error',
		'no-const-assign': 'error',
		'no-constant-condition': ['error', { 'checkLoops': true }],
		'no-constructor-return': 'error',
		'no-control-regex': 'error',
		'no-debugger': 'error',
		'no-dupe-args': 'error',
		'no-dupe-class-members': 'error',
		'no-dupe-else-if': 'error',
		'no-dupe-keys': 'error',
		'no-duplicate-case': 'error',
		'no-duplicate-imports': ['error', { 'includeExports': true }],
		'no-empty-character-class': 'error',
		'no-empty-pattern': 'error',
		'no-ex-assign': 'error',
		'no-fallthrough': 'error',
		'no-func-assign': 'error',
		'no-import-assign': 'error',
		'no-inner-declarations': ['error', 'both'],
		'no-invalid-regexp': 'error',
		'no-irregular-whitespace': ['error', { 'skipTemplates': true, skipStrings: true, skipComments: true, skipRegExps: true }],
		'no-loss-of-precision': 'error',
		'no-misleading-character-class': 'error',
		'no-new-symbol': 'error',
		'no-obj-calls': 'error',
		'no-promise-executor-return': 'error',
		'no-prototype-builtins': 'error',
		'no-self-assign': ['error', {'props': true}],
		'no-self-compare': 'error',
		'no-setter-return': 'error',
		'no-sparse-arrays': 'error',
		'no-template-curly-in-string': 'error',
		'no-this-before-super': 'error',
		'no-undef': ['error', { 'typeof': true }],
		'no-unexpected-multiline': 'error',
		'no-unmodified-loop-condition': 'error',
		'no-unreachable': 'error',
		'no-unreachable-loop': ['error', { 'ignore': [] }],
		'no-unsafe-finally': 'error',
		'no-unsafe-negation': ['error', { 'enforceForOrderingRelations': true }],
		'no-unsafe-optional-chaining': ['error', { 'disallowArithmeticOperators': true }],
		'no-unused-private-class-members': 'error',
		'no-unused-vars': ['error', { 'vars': 'all', 'args': 'all', 'ignoreRestSiblings': false , 'caughtErrors': 'all'}],
		'no-use-before-define': ['error', { 'functions': true, 'classes': true, 'variables': true }],
		'no-useless-backreference': 'error',
		'require-atomic-updates': ['error', { 'allowProperties': false }],
		'use-isnan': ['error', {'enforceForSwitchCase': true, 'enforceForIndexOf': true}],
		//====
		'accessor-pairs': ["error", { "getWithoutSet": true, getWithoutSet : true, enforceForClassMembers : true }],
		'arrow-body-style': ["error", "as-needed", { "requireReturnForObjectLiteral": true }],
		'block-scoped-var': "error",
		'camelcase': ["error", {properties: "always", "ignoreDestructuring": false, "ignoreImports": false, "ignoreGlobals": false}],
		'capitalized-comments': ["error", "always"],
		'class-methods-use-this': ["error", { "enforceForClassFields": true }],
		"complexity": ["error", { "max": 10 }],
		'consistent-return': ["error", { "treatUndefinedAsUnspecified": true }],
		'consistent-this': "error",
		'curly': ["error", "multi"],
		'default-case': "error",
		'default-case-last': "error",
		'default-param-last': "error",
		'dot-notation': ["error", { "allowKeywords": true }],
		'eqeqeq': ["error", "always", {"null": "always"}],
		'func-name-matching': ["error", "always", { "considerPropertyDescriptor": true, "includeCommonJSModuleExports": true }],
		'func-names': ["error", "as-needed", { "generators": "as-needed" }],
		'func-style': ["error", "declaration", { "allowArrowFunctions": true }],
		'grouped-accessor-pairs': ["error", "getBeforeSet"],
		'guard-for-in': "error",
		// id-denylist
		// id-length
		// id-match
		"init-declarations": ["error", "always"],
		"max-classes-per-file": ["error", {ignoreExpressions: false}],
		// max-depth
		// max-lines
		// max-lines-per-function
		// max-nested-callbacks
		// max-params
		// max-statements
		'multiline-comment-style': ["error", "bare-block"],
		'new-cap': ["error", { "newIsCap": true , "capIsNew": true, "properties": true}],
		// no-alert
		'no-array-constructor': "error",
		// no-bitwise
		'no-caller': "error",
		'no-case-declarations': "error",
		// no-confusing-arrow
		// no-console
		'no-continue': "error",
		'no-delete-var': "error",
		// no-div-regex
		'no-else-return': ["error", {allowElseIf: true}],

	}
};
