# Setup Test with Sudoo-Triforce

Make sure `@sudoo/triforce` package is installed as one of your `devDependencies` in the `package.json`.

## Setup Mocha for TypeScript

Create a `.mocharc` file with the following content.

```json
{
    "spec": [
        "test/**/*.test.ts"
    ],
    "extends": "@sudoo/mocha-config"
}
```

If your project include React Web tsx code, add react config as well, please note that the `@sudoo/mocha-config-react` already include all config in `@sudoo/mocha-config`, so, you are not suppose to extends both package.

```json
{
    "spec": [
        "test/**/*.test.ts",
        "test/**/*.test.tsx"
    ],
    "extends": "@sudoo/mocha-config-react"
}
```

If your project include React Native tsx code, add react config as well, please note that the `@sudoo/mocha-config-react-native` already include all config in `@sudoo/mocha-config`, so, you are not suppose to extends both package.

```json
{
    "spec": [
        "test/**/*.test.ts",
        "test/**/*.test.tsx"
    ],
    "extends": "@sudoo/mocha-config-react-native"
}
```
