palette:
	nvim --headless -u scripts/init.lua -c "luafile scripts/palette.lua" -c "qa"

generate:
	python3 scripts/generator.py
