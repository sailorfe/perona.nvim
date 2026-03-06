palette:
	nvim --headless -c "luafile scripts/palette.lua" -c "qa"

generate:
	python3 scripts/generator.py
