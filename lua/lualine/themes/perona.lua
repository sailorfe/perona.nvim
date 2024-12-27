local gpp = require("perona.ghost").get()
local perona = {}

perona.normal = {
	a = { bg = gpp.wine, fg = gpp.hollow },
	b = { bg = gpp.jam, fg = gpp.text },
	c = { bg = gpp.nightmare, fg = gpp.text },
	x = { bg = gpp.nagashidaru, fg = gpp.bagel },
}
perona.inactive = {
	c = { bg = gpp.coffin, fg = gpp.text },
}
perona.insert = {
	a = { bg = gpp.surprise, fg = gpp.base },
	b = { bg = gpp.zombie, fg = gpp.base },
}
perona.visual = {
	a = { bg = gpp.wonder, fg = gpp.base },
	b = { bg = gpp.party, fg = gpp.base },
}
perona.replace = {
	a = { bg = gpp.ruby, fg = gpp.mihawk },
	b = { bg = gpp.blood, fg = gpp.negative },
}
perona.terminal = {
	a = { bg = gpp.sangria, fg = gpp.mihawk },
	b = { bg = gpp.slices, fg = gpp.base },
}
perona.command = {
	a = { bg = gpp.sea, fg = gpp.base },
	b = { bg = gpp.kumashi, fg = gpp.base },
}

return perona
