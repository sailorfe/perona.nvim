local colors = {
	thriller = '#21121b',
	bark = '#24141E',
	cocoa = '#281520',
	dracule = '#3e1d31',
	mihawk = '#532742',
	wine = '#683152',
	gecko = '#90647f',
	moria = '#b1819e',
	negative = '#f4b9dc',
	hollow = '#f8d3e9',
	jewel  = '#88304d',
	berry = '#b54067',
	jam = '#d65c85',
	surprise = '#f269ad',
	zombie = '#ff99cc',
	kuma = '#8dafe2',
	sea = '#b4cff8',
	wonder = '#a75fb4',
	garden = '#de91da',
	sangria = '#e65667',
	fruit = '#eb8490',
	blood = '#a90f30',
	ruby = '#de3557'
}
return {
  normal = {
    a = { bg = colors.jam, fg = colors.cocoa },
    b = { bg = colors.berry, fg = colors.negative },
    c = { bg = colors.cocoa, fg = colors.moria },
    x = { bg = colors.dracule, fg = colors.cocoa },
    y = { bg = colors.jewel, fg = colors.negative },
    z = { bg = colors.berry, fg = colors.cocoa },
  },
	inactive = {
		a = { bg = colors.thriller, fg = colors.gecko },
		c = { bg = colors.cocoa, fg = colors.gecko },
		y = { bg = colors.thriller, fg = colors.gecko }
	},
	insert = {
		a = { bg = colors.zombie, fg = colors.cocoa },
		b = { bg = colors.surprise, fg = colors.mihawk }
	},
	visual = {
		a = { bg = colors.garden, fg = colors.cocoa },
		b = { bg = colors.wonder, fg = colors.negative }
	},
	replace = {
		a = { bg = colors.ruby, fg = colors.cocoa },
		b = { bg = colors.blood, fg = colors.negative }
	},
	terminal = {
		a = { bg = colors.fruit, fg = colors.cocoa },
		b = { bg = colors.sangria, fg = colors.negative }
	},
	command = {
		a = { bg = colors.sea, fg = colors.cocoa },
		b = { bg = colors.kuma, fg = colors.mihawk }
	}
}
