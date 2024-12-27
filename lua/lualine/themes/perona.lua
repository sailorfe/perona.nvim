local gpp = require("perona.ghost").get()
local perona = {}

perona.normal = {
	a = { bg = gpp.wine, fg = gpp.hollow, gui = "bold" },
	b = { bg = gpp.bagel, fg = gpp.kuraigana },
	c = { bg = gpp.nightmare, fg = gpp.text, gui = "italic" },
	x = { bg = gpp.nagashidaru, fg = gpp.bagel },
}
perona.inactive = {
	c = { bg = gpp.coffin, fg = gpp.text },
}
perona.insert = {
	a = { bg = gpp.surprise, fg = gpp.base, gui = "bold" },
	b = { bg = gpp.zombie, fg = gpp.base },
}
perona.visual = {
	a = { bg = gpp.wonder, fg = gpp.base, gui = "bold" },
	b = { bg = gpp.garden, fg = gpp.base },
}
perona.replace = {
	a = { bg = gpp.hollow, fg = gpp.blood, gui = "bold" },
	b = { bg = gpp.apple, fg = gpp.mihawk },
}
perona.terminal = {
	a = { bg = gpp.fruit, fg = gpp.mihawk, gui = "bold" },
	b = { bg = gpp.sangria, fg = gpp.dracule },
}
perona.command = {
	a = { bg = gpp.kumashi, fg = gpp.hollow, gui = "bold" },
	b = { bg = gpp.sky, fg = gpp.base },
}

return perona
