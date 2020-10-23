main: run

run:
	@echo "[INFO] Nothing to run"

install:
	@echo "[INFO] Installing dev Dependencies"
	@yarn install --production=false

install-prod:
	@echo "[INFO] Installing Dependencies"
	@yarn install --production=true

outdated: install
	@echo "[INFO] Checking Outdated Dependencies"
	@yarn outdated

publish: install
	@echo "[INFO] Publishing package"
	@npm publish --access=public

publish-dry-run: install
	@echo "[INFO] Publishing package"
	@npm publish --access=public --dry-run
