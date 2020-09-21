# Setup Testing and Linting

Make sure `@sudoo/triforce` package is installed as one of your `devDependencies` in the `package.json`.

### Setup eslint for TypeScript

Create a `.eslintrc` file with the following content.

```json
{
    "parserOptions": {
        "project": "./typescript/tsconfig.lint.json"
    },
    "extends": [
        "@sudoo/eslint-config"
    ]
}
```

If your project include React tsx code, add react config as well.

```json
{
    "parserOptions": {
        "project": "./typescript/tsconfig.lint.json"
    },
    "extends": [
        "@sudoo/eslint-config",
        "@sudoo/eslint-config-react"
    ]
}
```

If you want a11y support with your react project, add react a11y config.

```json
{
    "parserOptions": {
        "project": "./typescript/tsconfig.lint.json"
    },
    "extends": [
        "@sudoo/eslint-config",
        "@sudoo/eslint-config-react",
        "@sudoo/eslint-config-react-a11y"
    ]
}
```

The `tsconfig.lint.json` should be similar to your `tsconfig.json` file, you may use that config directly. If the build scope and linting scope is different, you may need to copy it and add more scope `include` and `exclude` options. A example of `tsconfig.lint.json` should look like content below.

```json
{
    "compilerOptions": {
        "alwaysStrict": true,
        "downlevelIteration": true,
        "emitDecoratorMetadata": true,
        "experimentalDecorators": true,
        "lib": [
            "es2016",
            "es6"
        ],
        "module": "commonjs",
        "moduleResolution": "node",
        "noImplicitAny": true,
        "noImplicitReturns": true,
        "noImplicitThis": true,
        "removeComments": true,
        "resolveJsonModule": true,
        "strict": true,
        "strictNullChecks": true
    },
    "exclude": [
        "../node_modules"
    ],
    "include": [
        "../src/**/*",
        "../test/**/*"
    ]
}
```

Finally, a `.eslintignore` file is recommended to add in your `Root` path of your project.

```sh
# Dependencies
node_modules
```

### Setup Mocha for TypeScript

Create a `.mocharc` file with the following content.

```json
{
    "spec": [
        "test/**/*.test.ts"
    ],
    "extends": [
        "@sudoo/mocha-config"
    ]
}
```

If your project include React Web tsx code, add react config as well, please note that the `@sudoo/mocha-config-react` already include all config in `@sudoo/mocha-config`, so, you are not suppose to extends both package.

```json
{
    "spec": [
        "test/**/*.test.ts",
        "test/**/*.test.tsx"
    ],
    "extends": [
        "@sudoo/mocha-config-react"
    ]
}
```

If your project include React Native tsx code, add react config as well, please note that the `@sudoo/mocha-config-react-native` already include all config in `@sudoo/mocha-config`, so, you are not suppose to extends both package.

```json
{
    "spec": [
        "test/**/*.test.ts",
        "test/**/*.test.tsx"
    ],
    "extends": [
        "@sudoo/mocha-config-react-native"
    ]
}
```
