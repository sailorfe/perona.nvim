local bssm = require("moonqueen.senshi").get()
local moonqueen = {}

moonqueen.normal = {
	a = { bg = bssm.guardian, fg = bssm.artemis },
	b = { bg = bssm.saturn, fg = bssm.artemis },
	c = { bg = bssm.sailor, fg = bssm.artemis },
	x = { bg = bssm.luna, fg = bssm.artemis },
}
moonqueen.inactive = {
	c = { bg = bssm.pretty, fg = bssm.artemis },
}
moonqueen.insert = {
	a = { bg = bssm.moon, fg = bssm.base },
	b = { bg = bssm.usagi, fg = bssm.pluto },
}
moonqueen.visual = {
	a = { bg = bssm.minako, fg = bssm.base },
	b = { bg = bssm.venus, fg = bssm.pluto },
}
moonqueen.replace = {
	a = { bg = bssm.mars, fg = bssm.base },
	b = { bg = bssm.rei, fg = bssm.artemis },
}
moonqueen.terminal = {
	a = { bg = bssm.jupiter, fg = bssm.base },
	b = { bg = bssm.makoto, fg = bssm.pluto },
}
moonqueen.command = {
	a = { bg = bssm.mercury, fg = bssm.base },
	b = { bg = bssm.ami, fg = bssm.pluto },
}

return moonqueen
