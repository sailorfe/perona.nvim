local gpp = require("perona.thrillerbark").get()
local perona = {}

perona.normal = {
	a = { bg = gpp.cocoa, fg = gpp.ghost },
	b = { bg = gpp.kuraigana, fg = gpp.ghost },
	c = { bg = gpp.nagashidaru, fg = gpp.text },
	x = { bg = gpp.nagashidaru, fg = gpp.ghost },
}
perona.inactive = {
	c = { bg = gpp.coffin, fg = gpp.text },
}
perona.insert = {
	a = { bg = gpp.surprise, fg = gpp.base },
	b = { bg = gpp.zombie, fg = gpp.mihawk },
}
perona.visual = {
	a = { bg = gpp.wonder, fg = gpp.base },
	b = { bg = gpp.garden, fg = gpp.mihawk },
}
perona.replace = {
	a = { bg = gpp.blood, fg = gpp.mihawk },
	b = { bg = gpp.ruby, fg = gpp.ghost },
}
perona.terminal = {
	a = { bg = gpp.sangria, fg = gpp.mihawk },
	b = { bg = gpp.fruit, fg = gpp.base },
}
perona.command = {
	a = { bg = gpp.kumashi, fg = gpp.base },
	b = { bg = gpp.sea, fg = gpp.mihawk },
}

return perona
