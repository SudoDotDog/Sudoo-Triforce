# Common CLI Commands

The following command can be used when the `@sudoo/triforce` package is installed, and the setup process done.

See [Setup Testing and Linting](/docs/setup.md) for setup procedure.

## Makefile

The easiest way to use testing and linting feature is a makefile config. The following command is what package created by `Sudoo` normally use, a explanation is provided in this document. 

```makefile
mocha := node_modules/.bin/mocha
eslint := node_modules/.bin/eslint

tests:
	@echo "[INFO] Testing with Mocha"
	@NODE_ENV=test \
    	$(mocha) --config test/.mocharc.json

cov:
	@echo "[INFO] Testing with Nyc and Mocha"
	@NODE_ENV=test \
	nyc $(mocha) --config test/.mocharc.json

lint:
	@echo "[INFO] Linting"
	@NODE_ENV=production \
    	$(eslint) \
    	. --ext .ts,.tsx --config ./typescript/.eslintrc.json

lint-fix:
	@echo "[INFO] Linting and Fixing"
    	@NODE_ENV=development \
	$(eslint) \
    	. --ext .ts,.tsx --config ./typescript/.eslintrc.json --fix
```

## Testing

`@sudoo/triforce` recommend Mocha library for testing.

Run the following code to start testing

```sh
NODE_ENV=test \
node_modules/.bin/mocha \
--config test/.mocharc.json
```

replace the location of `test/.mocharc.json` to the `.mocharc` file you created before.

`nyc` is a coverage collection package work perfectly with `@sudoo/triforce`. Install `nyc` by run.

```sh
yarn global add nyc
# Or
npm install nyc -g
```

To use it, add the following configuration in your `package.json`.

```json
{
    "...": {},
    "nyc": {
    "extension": [
      ".ts"
    ],
    "include": [
      "src/**/*.ts"
    ],
    "instrument": true,
    "reporter": [
      "json",
      "text-summary"
    ],
    "report-dir": "coverage",
    "sourceMap": true
  },
  "...": {}
}
```

And run the following command to start a test with coverage.

```sh
NODE_ENV=test \
nyc \
node_modules/.bin/mocha \
--config test/.mocharc.json
```
