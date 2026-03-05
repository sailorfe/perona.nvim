palette:
	nvim --headless -c "luafile scripts/hex.lua" -c "qa"

generate:
	python3 scripts/generator.py
