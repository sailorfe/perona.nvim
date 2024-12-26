local gpp = require("perona.thrillerbark").get()
local perona = {}

perona.normal = {
	a = { bg = gpp.wine, fg = gpp.hollow },
	b = { bg = gpp.mihawk, fg = gpp.text },
	c = { bg = gpp.nightmare, fg = gpp.text },
	x = { bg = gpp.wine, fg = gpp.ghost },
}
perona.inactive = {
	c = { bg = gpp.kuraigana, fg = gpp.text },
}
perona.insert = {
	a = { bg = gpp.surprise, fg = gpp.base },
	b = { bg = gpp.zombie, fg = gpp.base },
}
perona.visual = {
	a = { bg = gpp.wonder, fg = gpp.base },
	b = { bg = gpp.garden, fg = gpp.base },
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
	b = { bg = gpp.sea, fg = gpp.base },
}

return perona
