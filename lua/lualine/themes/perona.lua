local gpp = require("perona.bark").get()
local perona = {}

perona.normal = {
	a = { bg = gpp.jam, fg = gpp.mihawk },
	b = { bg = gpp.berry, fg = gpp.coffin },
	c = { bg = gpp.wine, fg = gpp.text },
	x = { bg = gpp.merlot, fg = gpp.ghost },
}
perona.inactive = {
	c = { bg = gpp.coffin, fg = gpp.text },
}
perona.insert = {
	a = { bg = gpp.surprise, fg = gpp.base },
	b = { bg = gpp.zombie, fg = gpp.mihawk },
}
perona.visual = {
	a = { bg = gpp.sangria, fg = gpp.base },
	b = { bg = gpp.fruit, fg = gpp.mihawk },
}
perona.replace = {
	a = { bg = gpp.blood, fg = gpp.mihawk },
	b = { bg = gpp.ruby, fg = gpp.ghost },
}
perona.terminal = {
	a = { bg = gpp.wonder, fg = gpp.mihawk },
	b = { bg = gpp.garden, fg = gpp.base },
}
perona.command = {
	a = { bg = gpp.sea, fg = gpp.base },
	b = { bg = gpp.kumashi, fg = gpp.mihawk },
}

return perona
