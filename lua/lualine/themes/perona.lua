local gpp = require("perona.ghost").get()
local perona = {}

perona.normal = {
	a = { bg = gpp.hollow, fg = gpp.kuraigana, gui = "bold" },
	b = { bg = gpp.mihawk, fg = gpp.hollow },
	c = { bg = gpp.dracule, fg = gpp.hollow, gui = "italic" },
	x = { bg = gpp.mihawk, fg = gpp.hollow },
}
perona.inactive = {
	c = { bg = gpp.kuraigana, fg = gpp.negative },
}
perona.insert = {
	a = { bg = gpp.zombie, fg = gpp.mihawk, gui = "bold" },
	b = { bg = gpp.mihawk, fg = gpp.zombie },
}
perona.visual = {
	a = { bg = gpp.garden, fg = gpp.kuraigana, gui = "bold" },
	b = { bg = gpp.mihawk, fg = gpp.garden },
}
perona.replace = {
	a = { bg = gpp.ruby, fg = gpp.hollow, gui = "bold" },
	b = { bg = gpp.mihawk, fg = gpp.ruby },
}
perona.terminal = {
	a = { bg = gpp.fruit, fg = gpp.kuraigana, gui = "bold" },
	b = { bg = gpp.mihawk, fg = gpp.fruit },
}
perona.command = {
	a = { bg = gpp.kumashi, fg = gpp.kuraigana, gui = "bold" },
	b = { bg = gpp.mihawk, fg = gpp.kumashi },
}

return perona
