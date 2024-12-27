local gpp = require("perona.ghost").get()
local perona = {}

perona.normal = {
	a = { bg = gpp.wine, fg = gpp.text, gui = "bold" },
	b = { bg = gpp.nagashidaru, fg = gpp.base },
	c = { bg = gpp.nightmare, fg = gpp.text, gui = "italic" },
	x = { bg = gpp.nightmare, fg = gpp.text },
}
perona.inactive = {
	c = { bg = gpp.coffin, fg = gpp.text },
}
perona.insert = {
	a = { bg = gpp.base, fg = gpp.text, gui = "bold" },
	b = { bg = gpp.cocoa, fg = gpp.text },
}
perona.visual = {
	a = { bg = gpp.text, fg = gpp.base, gui = "bold" },
	b = { bg = gpp.bagel, fg = gpp.base },
}
perona.replace = {
	a = { bg = gpp.base, fg = gpp.blood, gui = "bold" },
	b = { bg = gpp.kuraigana, fg = gpp.ruby },
}
perona.terminal = {
	a = { bg = gpp.wonder, fg = gpp.base, gui = "bold" },
	b = { bg = gpp.garden, fg = gpp.base },
}
perona.command = {
	a = { bg = gpp.sea, fg = gpp.base, gui = "bold" },
	b = { bg = gpp.sky, fg = gpp.base },
}

return perona
