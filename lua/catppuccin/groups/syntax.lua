local M = {}

function M.get()
	return {
		Comment = { fg = C.overlay2, style = { "italic" } }, -- just comments
		SpecialComment = { link = "Special" }, -- special things inside a comment
		Constant = { fg = C.white }, -- (preferred) any constant
		String = { fg = C.b_green, style = O.styles.strings or {} }, -- a string constant: "this is a string"
		Character = { fg = C.b_green }, --  a character constant: 'c', '\n'
		Number = { fg = C.white, style = O.styles.numbers or {} }, --   a number constant: 234, 0xff
		Float = { link = "Number" }, --    a floating point constant: 2.3e10
		Boolean = { fg = C.b_pink, style = O.styles.booleans or {} }, --  a boolean constant: TRUE, false
		Identifier = { fg = C.white }, -- (preferred) any variable name
		Function = { fg = C.b_purple, style = O.styles.functions or {} }, -- function name (also: methods for classes)
		Statement = { fg = C.b_purple }, -- (preferred) any statement
		Conditional = { fg = C.b_pink, style = O.styles.conditionals or {} }, --  if, then, else, endif, switch, etc.
		Repeat = { fg = C.b_pink, style = O.styles.loops or {} }, --   for, do, while, etc.
		Label = { fg = C.b_pink }, --    case, default, etc.
		Operator = { fg = C.b_blue, style = O.styles.operators or {} }, -- "sizeof", "+", "*", etc.
		Keyword = { fg = C.b_pink, style = O.styles.keywords or {} }, --  any other keyword
		Exception = { fg = C.b_pink, style = O.styles.keywords or {} }, --  try, catch, throw

		PreProc = { fg = C.b_pink }, -- (preferred) generic Preprocessor
		Include = { fg = C.b_pink, style = O.styles.keywords or {} }, --  preprocessor #include
		Define = { link = "PreProc" }, -- preprocessor #define
		Macro = { fg = C.b_pink }, -- same as Define
		PreCondit = { link = "PreProc" }, -- preprocessor #if, #else, #endif, etc.

		StorageClass = { fg = C.b_yellow }, -- static, register, volatile, etc.
		Structure = { fg = C.b_pink }, --  struct, union, enum, etc.
		Special = { fg = C.white }, -- (preferred) any special symbol
		Type = { fg = C.b_pink, style = O.styles.types or {} }, -- (preferred) int, long, char, etc.
		Typedef = { link = "Type" }, --  A typedef
		SpecialChar = { link = "Special" }, -- special character in a constant
		Tag = { fg = C.lavender, style = { "bold" } }, -- you can use CTRL-] on this
		Delimiter = { fg = C.white }, -- character that needs attention
		Debug = { link = "Special" }, -- debugging statements

		Underlined = { style = { "underline" } }, -- (preferred) text that stands out, HTML links
		Bold = { style = { "bold" } },
		Italic = { style = { "italic" } },
		-- ("Ignore", below, may be invisible...)
		-- Ignore = { }, -- (preferred) left blank, hidden  |hl-Ignore|

		Error = { fg = C.b_red }, -- (preferred) any erroneous construct
		Todo = { bg = C.flamingo, fg = C.base, style = { "bold" } }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX
		qfLineNr = { fg = C.b_yellow },
		qfFileName = { fg = C.b_blue },
		htmlH1 = { fg = C.b_pink, style = { "bold" } },
		htmlH2 = { fg = C.b_blue, style = { "bold" } },
		-- mkdHeading = { fg = C.peach, style = { "bold" } },
		-- mkdCode = { bg = C.terminal_black, fg = C.text },
		mkdCodeDelimiter = { bg = C.base, fg = C.text },
		mkdCodeStart = { fg = C.flamingo, style = { "bold" } },
		mkdCodeEnd = { fg = C.flamingo, style = { "bold" } },
		-- mkdLink = { fg = C.blue, style = { "underline" } },

		-- debugging
		debugPC = { bg = O.transparent_background and C.none or C.crust }, -- used for highlighting the current line in terminal-debug
		debugBreakpoint = { bg = C.base, fg = C.overlay0 }, -- used for breakpoint colors in terminal-debug
		-- illuminate
		illuminatedWord = { bg = C.surface1 },
		illuminatedCurWord = { bg = C.surface1 },
		-- diff
		diffAdded = { fg = C.green },
		diffRemoved = { fg = C.red },
		diffChanged = { fg = C.blue },
		diffOldFile = { fg = C.yellow },
		diffNewFile = { fg = C.peach },
		diffFile = { fg = C.blue },
		diffLine = { fg = C.overlay0 },
		diffIndexLine = { fg = C.teal },
		DiffAdd = { bg = U.darken(C.green, 0.18, C.base) }, -- diff mode: Added line |diff.txt|
		DiffChange = { bg = U.darken(C.blue, 0.07, C.base) }, -- diff mode: Changed line |diff.txt|
		DiffDelete = { bg = U.darken(C.red, 0.18, C.base) }, -- diff mode: Deleted line |diff.txt|
		DiffText = { bg = U.darken(C.blue, 0.30, C.base) }, -- diff mode: Changed text within a changed line |diff.txt|
		-- NeoVim
		healthError = { fg = C.red },
		healthSuccess = { fg = C.teal },
		healthWarning = { fg = C.yellow },
		-- misc

		-- glyphs
		GlyphPalette1 = { fg = C.red },
		GlyphPalette2 = { fg = C.teal },
		GlyphPalette3 = { fg = C.yellow },
		GlyphPalette4 = { fg = C.blue },
		GlyphPalette6 = { fg = C.teal },
		GlyphPalette7 = { fg = C.text },
		GlyphPalette9 = { fg = C.red },

		-- rainbow
		rainbow1 = { fg = C.red },
		rainbow2 = { fg = C.peach },
		rainbow3 = { fg = C.yellow },
		rainbow4 = { fg = C.green },
		rainbow5 = { fg = C.sapphire },
		rainbow6 = { fg = C.lavender },

		-- csv
		csvCol0 = { fg = C.red },
		csvCol1 = { fg = C.peach },
		csvCol2 = { fg = C.yellow },
		csvCol3 = { fg = C.green },
		csvCol4 = { fg = C.sky },
		csvCol5 = { fg = C.blue },
		csvCol6 = { fg = C.lavender },
		csvCol7 = { fg = C.mauve },
		csvCol8 = { fg = C.pink },
	}
end

return M
