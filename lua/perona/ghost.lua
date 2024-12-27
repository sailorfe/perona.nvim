local ghost = {}
---@return table
function ghost.get()
	return {
		["base"]		= "#0c030a", --	base0
		["kuraigana"]	= "#150a12", --	base1
		["cocoa"]		= "#1c111a", --	base2
		["nightmare"]	= "#62182f", --	accent0
		["wine"]		= "#932546", --	accent1
		["nagashidaru"]	= "#ab2b51", --	accent2
		["text"]		= "#fec8d5", --	text0
		["muted"]		= "#a28189", -- text1
		["faint"]		= "#644f54", -- text2
		["mihawk"]		= "#261722", --	black0
		["dracule"]		= "#372a34", --	black1
		["coffin"]		= "#160813", --	black2
		["ruby"]		= "#ed1d2e", --	red0
		["apple"]		= "#ff4c5b", --	red1
		["blood"]		= "#cc0011", --	red2
		["wonder"]		= "#d573d9", --	green0
		["garden"]		= "#f893fb", --	green1
		["party"]		= "#c733cc", --	green2
		["sangria"]		= "#ff5c74", --	yellow0
		["fruit"]		= "#ff8093", --	yellow1
		["slices"]		= "#fb3754", --	yellow2
		["sea"]			= "#8896c8", --	blue0
		["sky"]			= "#a9b7ea", --	blue1
		["kumashi"]		= "#687dca", --	blue2
		["surprise"]	= "#ff70b3", --	magenta0
		["zombie"]		= "#ff94c6", --	magenta1
		["army"]		= "#fd3592", -- magenta2
		["jam"]			= "#d5396b", --	cyan0
		["berry"]		= "#fa5c8e", --	cyan1
		["sandwich"]	= "#cc2549", --	cyan2
		["bagel"]		= "#deafba", --	white0
		["negative"]	= "#f2c0cb", -- white1
		["hollow"]		= "#fcd9e1", --	white2
	}
end
return ghost
