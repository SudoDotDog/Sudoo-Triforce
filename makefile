main: run

run:
	@echo "[INFO] Nothing to run"

publish: install
	@echo "[INFO] Publishing package"
	@npm publish --access=public

install:
	@echo "[INFO] Installing dev Dependencies"
	@yarn install --production=false

install-prod:
	@echo "[INFO] Installing Dependencies"
	@yarn install --production=true
