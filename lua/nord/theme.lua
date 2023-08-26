local nord = require("nord.colors")
local named_colors = require("nord.named_colors")
local theme = {}

local italic = vim.g.nord_italic == false and nord.none or "italic"
local italic_undercurl = vim.g.nord_italic == false and "undercurl" or "italic,undercurl"
local bold = vim.g.nord_bold == false and nord.none or "bold"
local reverse_bold = vim.g.nord_bold == false and "reverse" or "reverse,bold"
local bold_underline = vim.g.nord_bold == false and "underline" or "bold,underline"
local bold_italic;
if vim.g.nord_bold == false then
    bold_italic = vim.g.nord_italic == false and nord.none or "italic"
elseif vim.g.nord_italic == false then
    bold_italic = "bold"
else
    bold_italic = "bold,italic"
end

theme.loadSyntax = function()
    -- Syntax highlight groups
    return {
        Type = {
            fg = named_colors.darkest_white
        }, -- int, long, char, etc.
        StorageClass = {
            fg = named_colors.white
        }, -- static, register, volatile, etc.
        Structure = {
            fg = named_colors.yellow
        }, -- struct, union, enum, etc.
        Constant = {
            fg = named_colors.white
        }, -- any constant
        Character = {
            fg = named_colors.green
        }, -- any character constant: 'c', '\n'
        Number = {
            fg = named_colors.white
        }, -- a number constant: 5
        Boolean = {
            fg = named_colors.white
        }, -- a boolean constant: TRUE, false
        Float = {
            fg = named_colors.white
        }, -- a floating point constant: 2.3e10
        Statement = {
            fg = named_colors.white
        }, -- any statement
        Label = {
            fg = named_colors.white
        }, -- case, default, etc.
        Operator = {
            fg = named_colors.white
        }, -- sizeof", "+", "*", etc.
        Exception = {
            fg = named_colors.white
        }, -- try, catch, throw
        PreProc = {
            fg = named_colors.darkest_white
        }, -- generic Preprocessor
        Include = {
            fg = named_colors.darkest_white
        }, -- preprocessor #include
        Define = {
            fg = named_colors.darkest_white
        }, -- preprocessor #define
        Macro = {
            fg = named_colors.darkest_white
        }, -- same as Define
        Typedef = {
            fg = named_colors.yellow
        }, -- A typedef
        PreCondit = {
            fg = named_colors.darkest_white
        }, -- preprocessor #if, #else, #endif, etc.
        Special = {
            fg = named_colors.red
        }, -- any special symbol
        SpecialChar = {
            fg = named_colors.teal
        }, -- special character in a constant
        Tag = {
            fg = named_colors.white
        }, -- you can use CTRL-] on this
        Delimiter = {
            fg = named_colors.white
        }, -- character that needs attention like , or .
        SpecialComment = {
            fg = named_colors.white
        }, -- special things inside a comment
        Debug = {
            fg = named_colors.debug
        }, -- debugging statements
        Underlined = {
            fg = named_colors.white,
            bg = nord.none,
            style = "underline"
        }, -- text that stands out, HTML links
        Ignore = {
            fg = named_colors.white
        }, -- left blank, hidden
        Todo = {
            fg = named_colors.yellow,
            bg = named_colors.black,
            style = bold_italic
        }, -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX
        Conceal = {
            fg = nord.none,
            bg = named_colors.white
        },
        htmlLink = {
            fg = named_colors.white,
            style = "underline"
        },
        markdownH1Delimiter = {
            fg = named_colors.white
        },
        markdownH2Delimiter = {
            fg = named_colors.white
        },
        markdownH3Delimiter = {
            fg = named_colors.white
        },
        htmlH1 = {
            fg = named_colors.white,
            style = bold
        },
        htmlH2 = {
            fg = named_colors.white,
            style = bold
        },
        htmlH3 = {
            fg = named_colors.white,
            style = bold
        },
        htmlH4 = {
            fg = named_colors.white,
            style = bold
        },
        htmlH5 = {
            fg = named_colors.white,
            style = bold
        },
        markdownH1 = {
            fg = named_colors.white,
            style = bold
        },
        markdownH2 = {
            fg = named_colors.white,
            style = bold
        },
        markdownH3 = {
            fg = named_colors.white,
            style = bold
        },
        Error = {
            fg = named_colors.white,
            bg = nord.none,
            style = bold_underline
        }, -- any erroneous construct with bold
        Comment = {
            fg = named_colors.orange,
            style = italic
        }, -- italic comments
        Conditional = {
            fg = named_colors.yellow,
            style = italic
        }, -- italic if, then, else, endif, switch, etc.
        Function = {
            fg = named_colors.white,
            style = italic
        }, -- italic funtion names
        Identifier = {
            fg = named_colors.white,
            style = italic
        }, -- any variable name
        Keyword = {
            fg = named_colors.yellow,
            style = italic
        }, -- italic for, do, while, etc.
        Repeat = {
            fg = named_colors.white,
            style = italic
        }, -- italic any other keyword
        String = {
            fg = named_colors.green,
            style = italic
        } -- any string
    }
end

theme.loadEditor = function()
    -- Editor highlight groups

    local editor = {
        NormalFloat = {
            fg = named_colors.white,
            bg = nord.float
        }, -- normal text and background color
        FloatBorder = {
            fg = named_colors.white,
            bg = nord.float
        }, -- normal text and background color
        ColorColumn = {
            fg = nord.none,
            bg = named_colors.white
        }, -- used for the columns set with 'colorcolumn'
        Conceal = {
            fg = named_colors.white
        }, -- placeholder characters substituted for concealed text (see 'conceallevel')
        Cursor = {
            fg = named_colors.black,
            bg = named_colors.yellow,
            style = "reverse"
        }, -- the character under the cursor
        CursorIM = {
            fg = named_colors.white,
            bg = nord.none,
            style = "reverse"
        }, -- like Cursor, but used when in IME mode
        Directory = {
            fg = named_colors.white,
            bg = nord.none
        }, -- directory names (and other special names in listings)
        EndOfBuffer = {
            fg = named_colors.white
        },
        ErrorMsg = {
            fg = nord.none
        },
        Folded = {
            fg = named_colors.white,
            bg = nord.none,
            style = italic
        },
        FoldColumn = {
            fg = named_colors.white
        },
        IncSearch = {
            fg = named_colors.white,
            bg = named_colors.white
        },
        LineNr = {
            fg = named_colors.white
        },
        CursorLineNr = {
            fg = named_colors.white
        },
        MatchParen = {
            fg = named_colors.white,
            bg = nord.none,
            style = bold
        },
        ModeMsg = {
            fg = named_colors.white
        },
        MoreMsg = {
            fg = named_colors.white
        },
        NonText = {
            fg = named_colors.white
        },
        Pmenu = {
            fg = named_colors.white,
            bg = named_colors.white
        },
        PmenuSel = {
            fg = named_colors.white,
            bg = named_colors.white
        },
        PmenuSbar = {
            fg = named_colors.white,
            bg = named_colors.white
        },
        PmenuThumb = {
            fg = named_colors.white,
            bg = named_colors.white
        },
        Question = {
            fg = named_colors.white
        },
        QuickFixLine = {
            fg = named_colors.white,
            bg = nord.none,
            style = "reverse"
        },
        qfLineNr = {
            fg = named_colors.white,
            bg = nord.none,
            style = "reverse"
        },
        Search = {
            fg = named_colors.white,
            bg = named_colors.white
        },
        Substitute = {
            fg = named_colors.white,
            bg = named_colors.white
        },
        SpecialKey = {
            fg = named_colors.white
        },
        SpellBad = {
            fg = named_colors.white,
            bg = nord.none,
            style = italic_undercurl
        },
        SpellCap = {
            fg = named_colors.white,
            bg = nord.none,
            style = italic_undercurl
        },
        SpellLocal = {
            fg = named_colors.white,
            bg = nord.none,
            style = italic_undercurl
        },
        SpellRare = {
            fg = named_colors.white,
            bg = nord.none,
            style = italic_undercurl
        },
        StatusLine = {
            fg = named_colors.white,
            bg = named_colors.white
        },
        StatusLineNC = {
            fg = named_colors.white,
            bg = named_colors.white
        },
        StatusLineTerm = {
            fg = named_colors.white,
            bg = named_colors.white
        },
        StatusLineTermNC = {
            fg = named_colors.white,
            bg = named_colors.white
        },
        TabLineFill = {
            fg = named_colors.white,
            bg = nord.none
        },
        TablineSel = {
            fg = named_colors.white,
            bg = named_colors.white
        },
        Tabline = {
            fg = named_colors.white,
            bg = named_colors.white
        },
        Title = {
            fg = named_colors.white,
            bg = nord.none,
            style = bold
        },
        Visual = {
            fg = nord.none,
            bg = named_colors.gray
        },
        VisualNOS = {
            fg = nord.none,
            bg = named_colors.white
        },
        WarningMsg = {
            fg = named_colors.white
        },
        WildMenu = {
            fg = named_colors.white,
            bg = nord.none,
            style = bold
        },
        CursorColumn = {
            fg = nord.none,
            bg = nord.cursorlinefg
        },
        CursorLine = {
            fg = nord.none,
            bg = nord.cursorlinefg
        },
        ToolbarLine = {
            fg = named_colors.white,
            bg = named_colors.white
        },
        ToolbarButton = {
            fg = named_colors.white,
            bg = nord.none,
            style = bold
        },
        NormalMode = {
            fg = named_colors.white,
            bg = nord.none,
            style = "reverse"
        },
        InsertMode = {
            fg = named_colors.white,
            bg = nord.none,
            style = "reverse"
        },
        ReplacelMode = {
            fg = named_colors.white,
            bg = nord.none,
            style = "reverse"
        },
        VisualMode = {
            fg = named_colors.white,
            bg = nord.none,
            style = "reverse"
        },
        CommandMode = {
            fg = named_colors.white,
            bg = nord.none,
            style = "reverse"
        },
        Warnings = {
            fg = named_colors.white
        },

        healthError = {
            fg = named_colors.white
        },
        healthSuccess = {
            fg = named_colors.white
        },
        healthWarning = {
            fg = named_colors.white
        },

        -- dashboard
        DashboardShortCut = {
            fg = named_colors.white
        },
        DashboardHeader = {
            fg = named_colors.white
        },
        DashboardCenter = {
            fg = named_colors.white
        },
        DashboardFooter = {
            fg = named_colors.white,
            style = italic
        },

        -- Barbar
        BufferTabpageFill = {
            bg = named_colors.white
        },

        BufferCurrent = {
            bg = named_colors.white
        },
        BufferCurrentMod = {
            bg = named_colors.white,
            fg = named_colors.white
        },
        BufferCurrentIcon = {
            bg = named_colors.white
        },
        BufferCurrentSign = {
            bg = named_colors.white
        },
        BufferCurrentIndex = {
            bg = named_colors.white
        },
        BufferCurrentTarget = {
            bg = named_colors.white,
            fg = named_colors.white
        },

        BufferInactive = {
            bg = named_colors.white,
            fg = named_colors.white
        },
        BufferInactiveMod = {
            bg = named_colors.white,
            fg = named_colors.white
        },
        BufferInactiveIcon = {
            bg = named_colors.white,
            fg = named_colors.white
        },
        BufferInactiveSign = {
            bg = named_colors.white,
            fg = named_colors.white
        },
        BufferInactiveIndex = {
            bg = named_colors.white,
            fg = named_colors.white
        },
        BufferInactiveTarget = {
            bg = named_colors.white,
            fg = named_colors.white
        },

        BufferVisible = {
            bg = named_colors.white
        },
        BufferVisibleMod = {
            bg = named_colors.white,
            fg = named_colors.white
        },
        BufferVisibleIcon = {
            bg = named_colors.white
        },
        BufferVisibleSign = {
            bg = named_colors.white
        },
        BufferVisibleIndex = {
            bg = named_colors.white
        },
        BufferVisibleTarget = {
            bg = named_colors.white,
            fg = named_colors.white
        },

        -- nvim-notify
        NotifyDEBUGBorder = {
            fg = named_colors.white
        },
        NotifyDEBUGIcon = {
            fg = named_colors.white
        },
        NotifyDEBUGTitle = {
            fg = named_colors.white
        },
        NotifyERRORBorder = {
            fg = named_colors.white
        },
        NotifyERRORIcon = {
            fg = named_colors.white
        },
        NotifyERRORTitle = {
            fg = named_colors.white
        },
        NotifyINFOBorder = {
            fg = named_colors.white
        },
        NotifyINFOIcon = {
            fg = named_colors.white
        },
        NotifyINFOTitle = {
            fg = named_colors.white
        },
        NotifyTRACEBorder = {
            fg = named_colors.white
        },
        NotifyTRACEIcon = {
            fg = named_colors.white
        },
        NotifyTRACETitle = {
            fg = named_colors.white
        },
        NotifyWARNBorder = {
            fg = named_colors.white
        },
        NotifyWARNIcon = {
            fg = named_colors.white
        },
        NotifyWARNTitle = {
            fg = named_colors.white
        },

        -- leap.nvim
        LeapMatch = {
            style = "underline,nocombine",
            fg = named_colors.white
        },
        LeapLabelPrimary = {
            style = "nocombine",
            fg = named_colors.white,
            bg = named_colors.white
        },
        LeapLabelSecondary = {
            style = "nocombine",
            fg = named_colors.white,
            bg = named_colors.white
        }
    }

    -- Options:

    -- Set transparent background
    if vim.g.nord_disable_background then
        editor.Normal = {
            fg = named_colors.white,
            bg = nord.none
        } -- normal text and background color
        editor.SignColumn = {
            fg = named_colors.white,
            bg = nord.none
        }
    else
        editor.Normal = {
            fg = named_colors.white,
            bg = named_colors.white
        } -- normal text and background color
        editor.SignColumn = {
            fg = named_colors.white,
            bg = named_colors.white
        }
    end

    -- Remove window split borders
    if vim.g.nord_borders then
        editor.VertSplit = {
            fg = named_colors.white
        }
    else
        editor.VertSplit = {
            fg = named_colors.white
        }
    end

    if vim.g.nord_uniform_diff_background then
        editor.DiffAdd = {
            fg = named_colors.white,
            bg = named_colors.white
        } -- diff mode: Added line
        editor.DiffChange = {
            fg = named_colors.white,
            bg = named_colors.white
        } -- diff mode: Changed line
        editor.DiffDelete = {
            fg = named_colors.white,
            bg = named_colors.white
        } -- diff mode: Deleted line
        editor.DiffText = {
            fg = named_colors.white,
            bg = named_colors.white
        } -- diff mode: Changed text within a changed line
    else
        editor.DiffAdd = {
            fg = named_colors.white,
            bg = nord.none,
            style = "reverse"
        } -- diff mode: Added line
        editor.DiffChange = {
            fg = named_colors.white,
            bg = nord.none,
            style = "reverse"
        } -- diff mode: Changed line
        editor.DiffDelete = {
            fg = named_colors.white,
            bg = nord.none,
            style = "reverse"
        } -- diff mode: Deleted line
        editor.DiffText = {
            fg = named_colors.white,
            bg = nord.none,
            style = "reverse"
        } -- diff mode: Changed text within a changed line
    end

    return editor
end

theme.loadTerminal = function()
    vim.g.terminal_color_0 = named_colors.white
    vim.g.terminal_color_1 = named_colors.red
    vim.g.terminal_color_2 = named_colors.white
    vim.g.terminal_color_3 = named_colors.white
    vim.g.terminal_color_4 = named_colors.white
    vim.g.terminal_color_5 = named_colors.white
    vim.g.terminal_color_6 = named_colors.white
    vim.g.terminal_color_7 = named_colors.white
    vim.g.terminal_color_8 = named_colors.white
    vim.g.terminal_color_9 = named_colors.white
    vim.g.terminal_color_10 = named_colors.white
    vim.g.terminal_color_11 = named_colors.white
    vim.g.terminal_color_12 = named_colors.white
    vim.g.terminal_color_13 = named_colors.white
    vim.g.terminal_color_14 = named_colors.white
    vim.g.terminal_color_15 = named_colors.white
end

theme.loadTreeSitter = function()
    -- TreeSitter highlight groups

    local treesitter = {
        TSConstructor = {
            fg = named_colors.white
        }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
        TSConstant = {
            fg = named_colors.white
        }, -- For constants
        TSFloat = {
            fg = named_colors.white
        }, -- For floats
        TSNumber = {
            fg = named_colors.white
        }, -- For all number
        TSAttribute = {
            fg = named_colors.white
        }, -- (unstable) TODO: docs
        TSError = {
            fg = named_colors.white
        }, -- For syntax/parser errors.
        TSException = {
            fg = named_colors.white
        }, -- For exception related keywords.
        TSFuncMacro = {
            fg = named_colors.white
        }, -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
        TSInclude = {
            fg = named_colors.darkest_white
        }, -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
        TSLabel = {
            fg = named_colors.white
        }, -- For labels: `label:` in C and `:label:` in Lua.
        TSOperator = {
            fg = named_colors.white
        }, -- For any operator: `+`, but also `->` and `*` in C.
        TSParameter = {
            fg = named_colors.white
        }, -- For parameters of a function.
        TSParameterReference = {
            fg = named_colors.white
        }, -- For references to parameters of a function.
        TSPunctDelimiter = {
            fg = named_colors.white
        }, -- For delimiters ie: `.`
        TSPunctBracket = {
            fg = named_colors.white
        }, -- For brackets and parens.
        TSPunctSpecial = {
            fg = named_colors.white
        }, -- For special punctutation that does not fall in the catagories before.
        TSSymbol = {
            fg = named_colors.white
        }, -- For identifiers referring to symbols or atoms.
        TSType = {
            fg = named_colors.white
        }, -- For types.
        TSTypeBuiltin = {
            fg = named_colors.darkest_white
        }, -- For builtin types.
        TSTag = {
            fg = named_colors.white
        }, -- Tags like html tag names.
        TSTagDelimiter = {
            fg = named_colors.white
        }, -- Tag delimiter like `<` `>` `/`
        TSText = {
            fg = named_colors.white
        }, -- For strings considenord11_gui text in a markup language.
        TSTextReference = {
            fg = named_colors.white
        }, -- FIXME
        TSEmphasis = {
            fg = named_colors.white
        }, -- For text to be represented with emphasis.
        TSUnderline = {
            fg = named_colors.white,
            bg = nord.none,
            style = "underline"
        }, -- For text to be represented with an underline.
        TSLiteral = {
            fg = named_colors.white
        }, -- Literal text.
        TSURI = {
            fg = named_colors.white
        }, -- Any URI like a link or email.
        TSAnnotation = {
            fg = named_colors.darkest_white
        }, -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
        ["@constructor"] = {
            fg = named_colors.white
        },
        ["@constant"] = {
            fg = named_colors.white
        },
        ["@float"] = {
            fg = named_colors.white
        },
        ["@number"] = {
            fg = named_colors.white
        },
        ["@attribute"] = {
            fg = named_colors.white
        },
        ["@error"] = {
            fg = named_colors.white
        },
        ["@exception"] = {
            fg = named_colors.white
        },
        ["@funtion.macro"] = {
            fg = named_colors.white
        },
        ["@include"] = {
            fg = named_colors.white
        },
        ["@label"] = {
            fg = named_colors.white
        },
        ["@operator"] = {
            fg = named_colors.white
        },
        ["@parameter"] = {
            fg = named_colors.white
        },
        ["@punctuation.delimiter"] = {
            fg = named_colors.white
        },
        ["@punctuation.bracket"] = {
            fg = named_colors.white
        },
        ["@punctuation.special"] = {
            fg = named_colors.white
        },
        ["@symbol"] = {
            fg = named_colors.white
        },
        ["@type"] = {
            fg = named_colors.white
        },
        ["@type.builtin"] = {
            fg = named_colors.white
        },
        ["@tag"] = {
            fg = named_colors.white
        },
        ["@tag.delimiter"] = {
            fg = named_colors.white
        },
        ["@text"] = {
            fg = named_colors.white
        },
        ["@text.reference"] = {
            fg = named_colors.white
        },
        ["@text.emphasis"] = {
            fg = named_colors.white
        },
        ["@text.underline"] = {
            fg = named_colors.white,
            bg = nord.none,
            style = "underline"
        },
        ["@text.literal"] = {
            fg = named_colors.white
        },
        ["@text.uri"] = {
            fg = named_colors.white
        },
        ["@text.strike"] = {
            fg = named_colors.white,
            style = "strikethrough"
        }

        -- @todo Missing highlights
        -- @function.call
        -- @method.call
        -- @type.qualifier
        -- @text.math (e.g. for LaTeX math environments)
        -- @text.environment (e.g. for text environments of markup languages)
        -- @text.environment.name (e.g. for the name/the string indicating the type of text environment)
        -- @text.note
        -- @text.warning
        -- @text.danger
        -- @tag.attribute
        -- @string.special
    }

    treesitter.TSVariableBuiltin = {
        fg = named_colors.white,
        style = bold
    }
    treesitter.TSBoolean = {
        fg = named_colors.white,
        style = bold
    }
    treesitter.TSConstBuiltin = {
        fg = named_colors.white,
        style = bold
    }
    treesitter.TSConstMacro = {
        fg = named_colors.white,
        style = bold
    }
    treesitter.TSVariable = {
        fg = named_colors.white,
        style = bold
    }
    treesitter.TSTitle = {
        fg = named_colors.white,
        bg = nord.none,
        style = bold
    }
    treesitter["@variable"] = {
        fg = named_colors.white,
        style = bold
    }
    treesitter["@variable.builtin"] = {
        fg = named_colors.white,
        style = bold
    }
    treesitter["@variable.global"] = {
        fg = named_colors.white,
        style = bold
    }
    treesitter["@boolean"] = {
        fg = named_colors.white,
        style = bold
    }
    treesitter["@constant.builtin"] = {
        fg = named_colors.white,
        style = bold
    }
    treesitter["@constant.macro"] = {
        fg = named_colors.white,
        style = bold
    }
    treesitter["@text.title"] = {
        fg = named_colors.white,
        bg = nord.none,
        style = bold
    }
    treesitter["@text.strong"] = {
        fg = named_colors.white,
        bg = nord.none,
        style = bold
    }
    -- Comments
    treesitter.TSComment = {
        fg = named_colors.white,
        style = italic
    }
    -- Conditionals
    treesitter.TSConditional = {
        fg = named_colors.yellow,
        style = italic
    } -- For keywords related to conditionnals.
    -- Function names
    treesitter.TSFunction = {
        fg = named_colors.white,
        style = italic
    } -- For fuction (calls and definitions).
    treesitter.TSMethod = {
        fg = named_colors.white,
        style = italic
    } -- For method calls and definitions.
    treesitter.TSFuncBuiltin = {
        fg = named_colors.white,
        style = italic
    }
    -- Namespaces and property accessors
    treesitter.TSNamespace = {
        fg = named_colors.white,
        style = italic
    } -- For identifiers referring to modules and namespaces.
    treesitter.TSField = {
        fg = named_colors.white,
        style = italic
    } -- For fields.
    treesitter.TSProperty = {
        fg = named_colors.white,
        style = italic
    } -- Same as `TSField`, but when accessing, not declaring.
    -- Language keywords
    treesitter.TSKeyword = {
        fg = named_colors.white,
        style = italic
    } -- For keywords that don't fall in other categories.
    treesitter.TSKeywordFunction = {
        fg = named_colors.white,
        style = italic
    }
    treesitter.TSKeywordReturn = {
        fg = named_colors.yellow,
        style = italic
    }
    treesitter.TSKeywordOperator = {
        fg = named_colors.white,
        style = italic
    }
    treesitter.TSRepeat = {
        fg = named_colors.white,
        style = italic
    } -- For keywords related to loops.
    -- Strings
    treesitter.TSString = {
        fg = named_colors.white,
        style = italic
    } -- For strings.
    treesitter.TSStringRegex = {
        fg = named_colors.white,
        style = italic
    } -- For regexes.
    treesitter.TSStringEscape = {
        fg = named_colors.white,
        style = italic
    } -- For escape characters within a string.
    treesitter.TSCharacter = {
        fg = named_colors.white,
        style = italic
    } -- For characters.

    treesitter["@comment"] = {
        fg = named_colors.white,
        style = italic
    }
    treesitter["@conditional"] = {
        fg = named_colors.yellow,
        style = italic
    }
    treesitter["@function"] = {
        fg = named_colors.white,
        style = italic
    }
    treesitter["@method"] = {
        fg = named_colors.white,
        style = italic
    }
    treesitter["@function.builtin"] = {
        fg = named_colors.white,
        style = italic
    }
    treesitter["@namespace"] = {
        fg = named_colors.white,
        style = italic
    }
    treesitter["@field"] = {
        fg = named_colors.white,
        style = italic
    }
    treesitter["@property"] = {
        fg = named_colors.white,
        style = italic
    }
    treesitter["@keyword"] = {
        fg = named_colors.white,
        style = italic
    }
    treesitter["@keyword.function"] = {
        fg = named_colors.white,
        style = italic
    }
    treesitter["@keyword.return"] = {
        fg = named_colors.yellow,
        style = italic
    }
    treesitter["@keyword.operator"] = {
        fg = named_colors.white,
        style = italic
    }
    treesitter["@repeat"] = {
        fg = named_colors.white,
        style = italic
    }
    treesitter["@string"] = {
        fg = named_colors.white,
        style = italic
    }
    treesitter["@string.regex"] = {
        fg = named_colors.white,
        style = italic
    }
    treesitter["@string.escape"] = {
        fg = named_colors.white,
        style = italic
    }
    treesitter["@character"] = {
        fg = named_colors.white,
        style = italic
    }

    return treesitter
end

theme.loadFiletypes = function()
    -- Filetype-specific highlight groups

    local ft = {
        -- yaml
        yamlBlockMappingKey = {
            fg = named_colors.white
        },
        yamlBool = {
            link = "Boolean"
        },
        yamlDocumentStart = {
            link = "Keyword"
        },
        yamlTSField = {
            fg = named_colors.white
        },
        yamlTSString = {
            fg = named_colors.white
        },
        yamlTSPunctSpecial = {
            link = "Keyword"
        },
        yamlKey = {
            fg = named_colors.white
        } -- stephpy/vim-yaml
    }

    return ft
end

theme.loadLSP = function()
    -- Lsp highlight groups

    local lsp = {
        LspDiagnosticsDefaultError = {
            fg = named_colors.white
        }, -- used for "Error" diagnostic virtual text
        LspDiagnosticsSignError = {
            fg = named_colors.white
        }, -- used for "Error" diagnostic signs in sign column
        LspDiagnosticsFloatingError = {
            fg = named_colors.white
        }, -- used for "Error" diagnostic messages in the diagnostics float
        LspDiagnosticsVirtualTextError = {
            fg = named_colors.white
        }, -- Virtual text "Error"
        LspDiagnosticsUnderlineError = {
            style = "undercurl",
            sp = named_colors.white
        }, -- used to underline "Error" diagnostics.
        LspDiagnosticsDefaultWarning = {
            fg = named_colors.white
        }, -- used for "Warning" diagnostic signs in sign column
        LspDiagnosticsSignWarning = {
            fg = named_colors.white
        }, -- used for "Warning" diagnostic signs in sign column
        LspDiagnosticsFloatingWarning = {
            fg = named_colors.white
        }, -- used for "Warning" diagnostic messages in the diagnostics float
        LspDiagnosticsVirtualTextWarning = {
            fg = named_colors.white
        }, -- Virtual text "Warning"
        LspDiagnosticsUnderlineWarning = {
            style = "undercurl",
            sp = named_colors.white
        }, -- used to underline "Warning" diagnostics.
        LspDiagnosticsDefaultInformation = {
            fg = named_colors.white
        }, -- used for "Information" diagnostic virtual text
        LspDiagnosticsSignInformation = {
            fg = named_colors.white
        }, -- used for "Information" diagnostic signs in sign column
        LspDiagnosticsFloatingInformation = {
            fg = named_colors.white
        }, -- used for "Information" diagnostic messages in the diagnostics float
        LspDiagnosticsVirtualTextInformation = {
            fg = named_colors.white
        }, -- Virtual text "Information"
        LspDiagnosticsUnderlineInformation = {
            style = "undercurl",
            sp = named_colors.white
        }, -- used to underline "Information" diagnostics.
        LspDiagnosticsDefaultHint = {
            fg = named_colors.white
        }, -- used for "Hint" diagnostic virtual text
        LspDiagnosticsSignHint = {
            fg = named_colors.white
        }, -- used for "Hint" diagnostic signs in sign column
        LspDiagnosticsFloatingHint = {
            fg = named_colors.white
        }, -- used for "Hint" diagnostic messages in the diagnostics float
        LspDiagnosticsVirtualTextHint = {
            fg = named_colors.white
        }, -- Virtual text "Hint"
        LspDiagnosticsUnderlineHint = {
            style = "undercurl",
            sp = named_colors.white
        }, -- used to underline "Hint" diagnostics.
        LspReferenceText = {
            fg = named_colors.white,
            bg = named_colors.white
        }, -- used for highlighting "text" references
        LspReferenceRead = {
            fg = named_colors.white,
            bg = named_colors.white
        }, -- used for highlighting "read" references
        LspReferenceWrite = {
            fg = named_colors.white,
            bg = named_colors.white
        }, -- used for highlighting "write" references

        DiagnosticError = {
            link = "LspDiagnosticsDefaultError"
        },
        DiagnosticWarn = {
            link = "LspDiagnosticsDefaultWarning"
        },
        DiagnosticInfo = {
            link = "LspDiagnosticsDefaultInformation"
        },
        DiagnosticHint = {
            link = "LspDiagnosticsDefaultHint"
        },
        DiagnosticVirtualTextWarn = {
            link = "LspDiagnosticsVirtualTextWarning"
        },
        DiagnosticUnderlineWarn = {
            link = "LspDiagnosticsUnderlineWarning"
        },
        DiagnosticFloatingWarn = {
            link = "LspDiagnosticsFloatingWarning"
        },
        DiagnosticSignWarn = {
            link = "LspDiagnosticsSignWarning"
        },
        DiagnosticVirtualTextError = {
            link = "LspDiagnosticsVirtualTextError"
        },
        DiagnosticUnderlineError = {
            link = "LspDiagnosticsUnderlineError"
        },
        DiagnosticFloatingError = {
            link = "LspDiagnosticsFloatingError"
        },
        DiagnosticSignError = {
            link = "LspDiagnosticsSignError"
        },
        DiagnosticVirtualTextInfo = {
            link = "LspDiagnosticsVirtualTextInformation"
        },
        DiagnosticUnderlineInfo = {
            link = "LspDiagnosticsUnderlineInformation"
        },
        DiagnosticFloatingInfo = {
            link = "LspDiagnosticsFloatingInformation"
        },
        DiagnosticSignInfo = {
            link = "LspDiagnosticsSignInformation"
        },
        DiagnosticVirtualTextHint = {
            link = "LspDiagnosticsVirtualTextHint"
        },
        DiagnosticUnderlineHint = {
            link = "LspDiagnosticsUnderlineHint"
        },
        DiagnosticFloatingHint = {
            link = "LspDiagnosticsFloatingHint"
        },
        DiagnosticSignHint = {
            link = "LspDiagnosticsSignHint"
        }
    }

    return lsp
end

theme.loadPlugins = function()
    -- Plugins highlight groups

    local plugins = {

        -- LspTrouble
        LspTroubleText = {
            fg = named_colors.white
        },
        LspTroubleCount = {
            fg = named_colors.white,
            bg = named_colors.white
        },
        LspTroubleNormal = {
            fg = named_colors.white,
            bg = nord.sidebar
        },

        -- Diff
        diffAdded = {
            fg = named_colors.white
        },
        diffRemoved = {
            fg = named_colors.white
        },
        diffChanged = {
            fg = named_colors.white
        },
        diffOldFile = {
            fg = nord.yelow
        },
        diffNewFile = {
            fg = named_colors.white
        },
        diffFile = {
            fg = named_colors.white
        },
        diffLine = {
            fg = named_colors.white
        },
        diffIndexLine = {
            fg = named_colors.white
        },

        -- Neogit
        NeogitBranch = {
            fg = named_colors.white
        },
        NeogitRemote = {
            fg = named_colors.white
        },
        NeogitHunkHeader = {
            fg = named_colors.white
        },
        NeogitHunkHeaderHighlight = {
            fg = named_colors.white,
            bg = named_colors.white
        },
        NeogitDiffContextHighlight = {
            bg = named_colors.white
        },
        NeogitDiffDeleteHighlight = {
            fg = named_colors.white,
            style = "reverse"
        },
        NeogitDiffAddHighlight = {
            fg = named_colors.white,
            style = "reverse"
        },

        -- GitGutter
        GitGutterAdd = {
            fg = named_colors.white
        }, -- diff mode: Added line |diff.txt|
        GitGutterChange = {
            fg = named_colors.white
        }, -- diff mode: Changed line |diff.txt|
        GitGutterDelete = {
            fg = named_colors.white
        }, -- diff mode: Deleted line |diff.txt|

        -- GitSigns
        GitSignsAdd = {
            fg = named_colors.white
        }, -- diff mode: Added line |diff.txt|
        GitSignsAddNr = {
            fg = named_colors.white
        }, -- diff mode: Added line |diff.txt|
        GitSignsAddLn = {
            fg = named_colors.white
        }, -- diff mode: Added line |diff.txt|
        GitSignsChange = {
            fg = named_colors.white
        }, -- diff mode: Changed line |diff.txt|
        GitSignsChangeNr = {
            fg = named_colors.white
        }, -- diff mode: Changed line |diff.txt|
        GitSignsChangeLn = {
            fg = named_colors.white
        }, -- diff mode: Changed line |diff.txt|
        GitSignsDelete = {
            fg = named_colors.white
        }, -- diff mode: Deleted line |diff.txt|
        GitSignsDeleteNr = {
            fg = named_colors.white
        }, -- diff mode: Deleted line |diff.txt|
        GitSignsDeleteLn = {
            fg = named_colors.white
        }, -- diff mode: Deleted line |diff.txt|
        GitSignsCurrentLineBlame = {
            fg = named_colors.white,
            style = bold
        },

        -- Telescope
        TelescopePromptBorder = {
            fg = named_colors.white
        },
        TelescopeResultsBorder = {
            fg = named_colors.white
        },
        TelescopePreviewBorder = {
            fg = named_colors.white
        },
        TelescopeSelectionCaret = {
            fg = named_colors.darker_white
        },
        TelescopeSelection = {
            fg = named_colors.white,
            bg = named_colors.white
        },
        TelescopeMatching = {
            link = 'Search'
        },

        -- NvimTree
        NvimTreeRootFolder = {
            fg = named_colors.white
        },
        NvimTreeSymlink = {
            fg = named_colors.white
        },
        NvimTreeFolderName = {
            fg = named_colors.white
        },
        NvimTreeFolderIcon = {
            fg = named_colors.white
        },
        NvimTreeEmptyFolderName = {
            fg = named_colors.white
        },
        NvimTreeOpenedFolderName = {
            fg = named_colors.white
        },
        NvimTreeExecFile = {
            fg = named_colors.white
        },
        NvimTreeOpenedFile = {
            fg = named_colors.white
        },
        NvimTreeSpecialFile = {
            fg = named_colors.white,
            style = bold
        },
        NvimTreeImageFile = {
            fg = named_colors.white
        },
        NvimTreeMarkdownFile = {
            fg = named_colors.white
        },
        NvimTreeIndentMarker = {
            fg = named_colors.white
        },
        NvimTreeGitDirty = {
            fg = named_colors.white
        }, -- diff mode: Changed line |diff.txt|
        NvimTreeGitStaged = {
            fg = named_colors.white
        }, -- diff mode: Changed line |diff.txt|
        NvimTreeGitMerge = {
            fg = named_colors.white
        }, -- diff mode: Changed line |diff.txt|
        NvimTreeGitRenamed = {
            fg = named_colors.white
        }, -- diff mode: Changed line |diff.txt|
        NvimTreeGitNew = {
            fg = named_colors.white
        }, -- diff mode: Added line |diff.txt|
        NvimTreeGitDeleted = {
            fg = named_colors.white
        }, -- diff mode: Deleted line |diff.txt|
        NvimTreeGitIgnored = {
            fg = named_colors.white
        },
        LspDiagnosticsError = {
            fg = named_colors.white
        },
        LspDiagnosticsWarning = {
            fg = named_colors.white
        },
        LspDiagnosticsInformation = {
            fg = named_colors.white
        },
        LspDiagnosticsHint = {
            fg = named_colors.white
        },

        -- WhichKey
        WhichKey = {
            fg = named_colors.white,
            style = bold
        },
        WhichKeyGroup = {
            fg = named_colors.white
        },
        WhichKeyDesc = {
            fg = named_colors.white,
            style = italic
        },
        WhichKeySeperator = {
            fg = named_colors.white
        },
        WhichKeyFloating = {
            bg = named_colors.white
        },
        WhichKeyFloat = {
            bg = named_colors.white
        },
        WhichKeyValue = {
            fg = named_colors.white
        },

        -- LspSaga
        DiagnosticError = {
            fg = named_colors.white
        },
        DiagnosticWarning = {
            fg = named_colors.white
        },
        DiagnosticInformation = {
            fg = named_colors.white
        },
        DiagnosticHint = {
            fg = named_colors.white
        },
        DiagnosticTruncateLine = {
            fg = named_colors.white
        },
        LspFloatWinBorder = {
            fg = named_colors.white,
            bg = nord.float
        },
        LspSagaDefPreviewBorder = {
            fg = named_colors.white,
            bg = nord.float
        },
        DefinitionIcon = {
            fg = named_colors.white
        },
        TargetWord = {
            fg = named_colors.white,
            style = 'bold'
        },
        -- LspSaga code action
        LspSagaCodeActionTitle = {
            link = 'Title'
        },
        LspSagaCodeActionBorder = {
            fg = named_colors.white,
            bg = nord.float
        },
        LspSagaCodeActionTrunCateLine = {
            link = 'LspSagaCodeActionBorder'
        },
        LspSagaCodeActionContent = {
            fg = named_colors.white
        },
        -- LspSag finder
        LspSagaLspFinderBorder = {
            fg = named_colors.white,
            bg = nord.float
        },
        LspSagaAutoPreview = {
            fg = named_colors.white
        },
        LspSagaFinderSelection = {
            fg = named_colors.white,
            bg = named_colors.white
        },
        TargetFileName = {
            fg = named_colors.white
        },
        FinderParam = {
            fg = named_colors.white,
            bold = true
        },
        FinderVirtText = {
            fg = named_colors.white,
            bg = nord.none
        },
        DefinitionsIcon = {
            fg = named_colors.white
        },
        Definitions = {
            fg = named_colors.white,
            bold = true
        },
        DefinitionCount = {
            fg = named_colors.white
        },
        ReferencesIcon = {
            fg = named_colors.white
        },
        References = {
            fg = named_colors.white,
            bold = true
        },
        ReferencesCount = {
            fg = named_colors.white
        },
        ImplementsIcon = {
            fg = named_colors.white
        },
        Implements = {
            fg = named_colors.white,
            bold = true
        },
        ImplementsCount = {
            fg = named_colors.white
        },
        -- LspSaga finder spinner
        FinderSpinnerBorder = {
            fg = named_colors.white,
            bg = nord.float
        },
        FinderSpinnerTitle = {
            link = 'Title'
        },
        FinderSpinner = {
            fg = named_colors.white,
            bold = true
        },
        FinderPreviewSearch = {
            link = 'Search'
        },
        -- LspSaga definition
        DefinitionBorder = {
            fg = named_colors.white,
            bg = nord.float
        },
        DefinitionArrow = {
            fg = named_colors.white
        },
        DefinitionSearch = {
            link = 'Search'
        },
        DefinitionFile = {
            fg = named_colors.white,
            bg = nord.float
        },
        -- LspSaga hover
        LspSagaHoverBorder = {
            fg = named_colors.white,
            bg = nord.float
        },
        LspSagaHoverTrunCateLine = {
            link = 'LspSagaHoverBorder'
        },
        -- Lsp rename
        LspSagaRenameBorder = {
            fg = named_colors.white,
            bg = nord.float
        },
        LspSagaRenameMatch = {
            fg = named_colors.white,
            bg = named_colors.white
        },
        -- Lsp diagnostic
        LspSagaDiagnosticSource = {
            link = 'Comment'
        },
        LspSagaDiagnosticError = {
            link = 'DiagnosticError'
        },
        LspSagaDiagnosticWarn = {
            link = 'DiagnosticWarn'
        },
        LspSagaDiagnosticInfo = {
            link = 'DiagnosticInfo'
        },
        LspSagaDiagnosticHint = {
            link = 'DiagnosticHint'
        },
        LspSagaErrorTrunCateLine = {
            link = 'DiagnosticError'
        },
        LspSagaWarnTrunCateLine = {
            link = 'DiagnosticWarn'
        },
        LspSagaInfoTrunCateLine = {
            link = 'DiagnosticInfo'
        },
        LspSagaHintTrunCateLine = {
            link = 'DiagnosticHint'
        },
        LspSagaDiagnosticBorder = {
            fg = named_colors.white,
            bg = nord.float
        },
        LspSagaDiagnosticHeader = {
            fg = named_colors.white
        },
        DiagnosticQuickFix = {
            fg = named_colors.white,
            bold = true
        },
        DiagnosticMap = {
            fg = named_colors.white
        },
        DiagnosticLineCol = {
            fg = named_colors.white
        },
        LspSagaDiagnosticTruncateLine = {
            link = 'LspSagaDiagnosticBorder'
        },
        ColInLineDiagnostic = {
            link = 'Comment'
        },
        -- LspSaga signture help
        LspSagaSignatureHelpBorder = {
            fg = named_colors.white,
            bg = nord.float
        },
        LspSagaShTrunCateLine = {
            link = 'LspSagaSignatureHelpBorder'
        },
        -- Lspsaga lightbulb
        LspSagaLightBulb = {
            link = 'DiagnosticSignHint'
        },
        -- LspSaga shadow
        SagaShadow = {
            fg = 'black'
        },
        -- LspSaga float
        LspSagaBorderTitle = {
            link = 'Title'
        },
        -- LspSaga Outline
        LSOutlinePreviewBorder = {
            fg = named_colors.white,
            bg = nord.float
        },
        OutlineIndentEvn = {
            fg = named_colors.white
        },
        OutlineIndentOdd = {
            fg = named_colors.white
        },
        OutlineFoldPrefix = {
            fg = named_colors.white
        },
        OutlineDetail = {
            fg = named_colors.white
        },
        -- LspSaga all floatwindow
        LspFloatWinNormal = {
            fg = named_colors.white,
            bg = nord.float
        },
        -- Saga End

        -- Sneak
        Sneak = {
            fg = named_colors.white,
            bg = named_colors.white
        },
        SneakScope = {
            bg = named_colors.white
        },

        -- Cmp
        CmpItemKind = {
            fg = named_colors.white
        },
        CmpItemAbbrMatch = {
            fg = named_colors.white,
            style = bold
        },
        CmpItemAbbrMatchFuzzy = {
            fg = named_colors.white,
            style = bold
        },
        CmpItemAbbr = {
            fg = named_colors.white
        },
        CmpItemMenu = {
            fg = named_colors.white
        },

        -- Indent Blankline
        IndentBlanklineChar = {
            fg = named_colors.white
        },
        IndentBlanklineContextChar = {
            fg = named_colors.white
        },

        -- headline
        -- bg = (10 * nord0 + fg) / 11
        Headline1 = {
            fg = named_colors.white,
            bg = "#3d3c44",
            bold = true
        },
        Headline2 = {
            fg = named_colors.white,
            bg = "#3f4247",
            bold = true
        },
        Headline3 = {
            fg = named_colors.white,
            bg = "#394147",
            bold = true
        },
        Headline4 = {
            fg = named_colors.white,
            bg = "#363e4c",
            bold = true
        },
        Headline5 = {
            fg = named_colors.white,
            bg = "#3a3c4a",
            bold = true
        },
        Headline6 = {
            fg = named_colors.white,
            bg = "#3d434f",
            bold = true
        },

        Quote = {
            fg = named_colors.white
        },
        CodeBlock = {
            bg = named_colors.white
        },
        Dash = {
            nord.nord10_gui,
            bold = true
        },

        -- Illuminate
        illuminatedWord = {
            bg = named_colors.white
        },
        illuminatedCurWord = {
            bg = named_colors.white
        },
        IlluminatedWordText = {
            bg = named_colors.white
        },
        IlluminatedWordRead = {
            bg = named_colors.white
        },
        IlluminatedWordWrite = {
            bg = named_colors.white
        },

        -- nvim-dap
        DapBreakpoint = {
            fg = named_colors.white
        },
        DapStopped = {
            fg = named_colors.white
        },

        -- nvim-dap-ui
        DapUIVariable = {
            fg = named_colors.white
        },
        DapUIScope = {
            fg = named_colors.white
        },
        DapUIType = {
            fg = named_colors.white
        },
        DapUIValue = {
            fg = named_colors.white
        },
        DapUIModifiedValue = {
            fg = named_colors.white
        },
        DapUIDecoration = {
            fg = named_colors.white
        },
        DapUIThread = {
            fg = named_colors.white
        },
        DapUIStoppedThread = {
            fg = named_colors.white
        },
        DapUIFrameName = {
            fg = named_colors.white
        },
        DapUISource = {
            fg = named_colors.white
        },
        DapUILineNumber = {
            fg = named_colors.white
        },
        DapUIFloatBorder = {
            fg = named_colors.white
        },
        DapUIWatchesEmpty = {
            fg = named_colors.white
        },
        DapUIWatchesValue = {
            fg = named_colors.white
        },
        DapUIWatchesError = {
            fg = named_colors.white
        },
        DapUIBreakpointsPath = {
            fg = named_colors.white
        },
        DapUIBreakpointsInfo = {
            fg = named_colors.white
        },
        DapUIBreakpointsCurrentLine = {
            fg = named_colors.white
        },
        DapUIBreakpointsLine = {
            fg = named_colors.white
        },

        -- Hop
        HopNextKey = {
            fg = named_colors.white,
            style = bold
        },
        HopNextKey1 = {
            fg = named_colors.white,
            style = bold
        },
        HopNextKey2 = {
            fg = named_colors.white
        },
        HopUnmatched = {
            fg = named_colors.white
        },

        -- Fern
        FernBranchText = {
            fg = named_colors.white
        },

        -- nvim-ts-rainbow
        rainbowcol1 = {
            fg = named_colors.white
        },
        rainbowcol2 = {
            fg = named_colors.white
        },
        rainbowcol3 = {
            fg = named_colors.white
        },
        rainbowcol4 = {
            fg = named_colors.white
        },
        rainbowcol5 = {
            fg = named_colors.white
        },
        rainbowcol6 = {
            fg = named_colors.white
        },
        rainbowcol7 = {
            fg = named_colors.white
        },

        -- lightspeed
        LightspeedLabel = {
            fg = named_colors.white,
            style = bold
        },
        LightspeedLabelOverlapped = {
            fg = named_colors.white,
            style = "bold,underline"
        },
        LightspeedLabelDistant = {
            fg = named_colors.white,
            style = bold
        },
        LightspeedLabelDistantOverlapped = {
            fg = named_colors.white,
            style = "bold,underline"
        },
        LightspeedShortcut = {
            fg = named_colors.white,
            style = bold
        },
        LightspeedShortcutOverlapped = {
            fg = named_colors.white,
            style = "bold,underline"
        },
        LightspeedMaskedChar = {
            fg = named_colors.white,
            bg = named_colors.white,
            style = bold
        },
        LightspeedGreyWash = {
            fg = named_colors.white
        },
        LightspeedUnlabeledMatch = {
            fg = named_colors.white,
            bg = named_colors.white
        },
        LightspeedOneCharMatch = {
            fg = named_colors.white,
            style = "bold,reverse"
        },
        LightspeedUniqueChar = {
            style = "bold,underline"
        },

        -- copilot
        CopilotLabel = {
            fg = named_colors.white,
            bg = nord.none
        },

        -- Statusline
        StatusLineDull = {
            fg = named_colors.white,
            bg = named_colors.white
        },
        StatusLineAccent = {
            fg = named_colors.white,
            bg = named_colors.white
        },

        -- mini.nvim
        MiniCompletionActiveParameter = {
            style = "underline"
        },

        MiniCursorword = {
            bg = named_colors.white
        },
        MiniCursorwordCurrent = {
            bg = named_colors.white
        },

        MiniIndentscopeSymbol = {
            fg = named_colors.white
        },
        MiniIndentscopePrefix = {
            style = "nocombine"
        }, -- Make it invisible

        MiniJump = {
            fg = named_colors.white,
            bg = named_colors.white
        },

        MiniJump2dSpot = {
            fg = named_colors.white,
            style = "bold,nocombine"
        },

        MiniStarterCurrent = {
            style = "nocombine"
        },
        MiniStarterFooter = {
            fg = named_colors.white,
            style = italic
        },
        MiniStarterHeader = {
            fg = named_colors.white
        },
        MiniStarterInactive = {
            link = "Comment"
        },
        MiniStarterItem = {
            link = "Normal"
        },
        MiniStarterItemBullet = {
            fg = named_colors.white
        },
        MiniStarterItemPrefix = {
            fg = named_colors.white
        },
        MiniStarterSection = {
            fg = named_colors.white
        },
        MiniStarterQuery = {
            fg = named_colors.white
        },

        MiniStatuslineDevinfo = {
            fg = named_colors.white,
            bg = named_colors.white
        },
        MiniStatuslineFileinfo = {
            fg = named_colors.white,
            bg = named_colors.white
        },
        MiniStatuslineFilename = {
            fg = named_colors.white,
            bg = named_colors.white
        },
        MiniStatuslineInactive = {
            fg = named_colors.white,
            bg = named_colors.white,
            style = bold
        },
        MiniStatuslineModeCommand = {
            fg = named_colors.white,
            bg = named_colors.white,
            style = bold
        },
        MiniStatuslineModeInsert = {
            fg = named_colors.white,
            bg = named_colors.white,
            style = bold
        },
        MiniStatuslineModeNormal = {
            fg = named_colors.white,
            bg = named_colors.white,
            style = bold
        },
        MiniStatuslineModeOther = {
            fg = named_colors.white,
            bg = named_colors.white,
            style = bold
        },
        MiniStatuslineModeReplace = {
            fg = named_colors.white,
            bg = named_colors.white,
            style = bold
        },
        MiniStatuslineModeVisual = {
            fg = named_colors.white,
            bg = named_colors.white,
            style = bold
        },

        MiniSurround = {
            link = "IncSearch"
        },

        MiniTablineCurrent = {
            bg = named_colors.white
        },
        MiniTablineFill = {
            link = "TabLineFill"
        },
        MiniTablineHidden = {
            bg = named_colors.white,
            fg = named_colors.white
        },
        MiniTablineModifiedCurrent = {
            bg = named_colors.white,
            fg = named_colors.white
        },
        MiniTablineModifiedHidden = {
            bg = named_colors.white,
            fg = named_colors.white
        },
        MiniTablineModifiedVisible = {
            bg = named_colors.white,
            fg = named_colors.white
        },
        MiniTablineTabpagesection = {
            fg = named_colors.white,
            bg = named_colors.white,
            style = reverse_bold
        },
        MiniTablineVisible = {
            bg = named_colors.white
        },

        MiniTestEmphasis = {
            style = bold
        },
        MiniTestFail = {
            fg = named_colors.white,
            style = bold
        },
        MiniTestPass = {
            fg = named_colors.white,
            style = bold
        },

        MiniTrailspace = {
            bg = named_colors.white
        },

        -- Aerail
        AerialLine = {
            bg = named_colors.white
        },
        AerialLineNC = {
            bg = named_colors.white
        },

        AerialArrayIcon = {
            fg = named_colors.white
        },
        AerialBooleanIcon = {
            fg = named_colors.white,
            style = bold
        },
        AerialClassIcon = {
            fg = named_colors.white
        },
        AerialConstantIcon = {
            fg = named_colors.white
        },
        AerialConstructorIcon = {
            fg = named_colors.white
        },
        AerialEnumIcon = {
            fg = named_colors.white
        },
        AerialEnumMemberIcon = {
            fg = named_colors.white
        },
        AerialEventIcon = {
            fg = named_colors.white
        },
        AerialFieldIcon = vim.g.nord_italic and {
            fg = named_colors.white,
            style = italic
        } or {
            fg = named_colors.white
        },
        AerialFileIcon = {
            fg = named_colors.white
        },
        AerialFunctionIcon = vim.g.nord_italic and {
            fg = named_colors.white,
            style = italic
        } or {
            fg = named_colors.white
        },
        AerialInterfaceIcon = {
            fg = named_colors.white
        },
        AerialKeyIcon = {
            fg = named_colors.white
        },
        AerialMethodIcon = vim.g.nord_italic and {
            fg = named_colors.white,
            style = italic
        } or {
            fg = named_colors.white
        },
        AerialModuleIcon = vim.g.nord_italic and {
            fg = named_colors.white,
            style = italic
        } or {
            fg = named_colors.white
        },
        AerialNamespaceIcon = vim.g.nord_italic and {
            fg = named_colors.white,
            style = italic
        } or {
            fg = named_colors.white
        },
        AerialNullIcon = {
            fg = named_colors.white
        },
        AerialNumberIcon = {
            fg = named_colors.white
        },
        AerialObjectIcon = {
            fg = named_colors.white
        },
        AerialOperatorIcon = {
            fg = named_colors.white
        },
        AerialPackageIcon = vim.g.nord_italic and {
            fg = named_colors.white,
            style = italic
        } or {
            fg = named_colors.white
        },
        AerialPropertyIcon = vim.g.nord_italic and {
            fg = named_colors.white,
            style = italic
        } or {
            fg = named_colors.white
        },
        AerialStringIcon = vim.g.nord_italic and {
            fg = named_colors.white,
            style = italic
        } or {
            fg = named_colors.white
        },
        AerialStructIcon = {
            fg = named_colors.white
        },
        AerialTypeParameterIcon = {
            fg = named_colors.white
        },
        AerialVariableIcon = {
            fg = named_colors.white,
            style = bold
        },

        AerialArray = {
            fg = named_colors.white
        },
        AerialBoolean = {
            fg = named_colors.white,
            style = bold
        },
        AerialClass = {
            fg = named_colors.white
        },
        AerialConstant = {
            fg = named_colors.white
        },
        AerialConstructor = {
            fg = named_colors.white
        },
        AerialEnum = {
            fg = named_colors.white
        },
        AerialEnumMember = {
            fg = named_colors.white
        },
        AerialEvent = {
            fg = named_colors.white
        },
        AerialField = vim.g.nord_italic and {
            fg = named_colors.white,
            style = italic
        } or {
            fg = named_colors.white
        },
        AerialFile = {
            fg = named_colors.white
        },
        AerialFunction = vim.g.nord_italic and {
            fg = named_colors.white,
            style = italic
        } or {
            fg = named_colors.white
        },
        AerialInterface = {
            fg = named_colors.white
        },
        AerialKey = {
            fg = named_colors.white
        },
        AerialMethod = vim.g.nord_italic and {
            fg = named_colors.white,
            style = italic
        } or {
            fg = named_colors.white
        },
        AerialModule = vim.g.nord_italic and {
            fg = named_colors.white,
            style = italic
        } or {
            fg = named_colors.white
        },
        AerialNamespace = vim.g.nord_italic and {
            fg = named_colors.white,
            style = italic
        } or {
            fg = named_colors.white
        },
        AerialNull = {
            fg = named_colors.white
        },
        AerialNumber = {
            fg = named_colors.white
        },
        AerialObject = {
            fg = named_colors.white
        },
        AerialOperator = {
            fg = named_colors.white
        },
        AerialPackage = vim.g.nord_italic and {
            fg = named_colors.white,
            style = italic
        } or {
            fg = named_colors.white
        },
        AerialProperty = vim.g.nord_italic and {
            fg = named_colors.white,
            style = italic
        } or {
            fg = named_colors.white
        },
        AerialString = vim.g.nord_italic and {
            fg = named_colors.white,
            style = italic
        } or {
            fg = named_colors.white
        },
        AerialStruct = {
            fg = named_colors.white
        },
        AerialTypeParameter = {
            fg = named_colors.white
        },
        AerialVariable = {
            fg = named_colors.white,
            style = bold
        },

        -- nvim-navic
        NavicIconsArray = {
            fg = named_colors.white
        },
        NavicIconsBoolean = {
            fg = named_colors.white,
            style = bold
        },
        NavicIconsClass = {
            fg = named_colors.white
        },
        NavicIconsConstant = {
            fg = named_colors.white
        },
        NavicIconsConstructor = {
            fg = named_colors.white
        },
        NavicIconsEnum = {
            fg = named_colors.white
        },
        NavicIconsEnumMember = {
            fg = named_colors.white
        },
        NavicIconsEvent = {
            fg = named_colors.white
        },
        NavicIconsField = {
            fg = named_colors.white,
            style = italic
        },
        NavicIconsFile = {
            fg = named_colors.white
        },
        NavicIconsFunction = {
            fg = named_colors.white,
            style = italic
        },
        NavicIconsInterface = {
            fg = named_colors.white
        },
        NavicIconsKey = {
            fg = named_colors.white
        },
        NavicIconsMethod = {
            fg = named_colors.white,
            style = italic
        },
        NavicIconsModule = {
            fg = named_colors.white,
            style = italic
        },
        NavicIconsNamespace = {
            fg = named_colors.white,
            style = italic
        },
        NavicIconsNull = {
            fg = named_colors.white
        },
        NavicIconsNumber = {
            fg = named_colors.white
        },
        NavicIconsObject = {
            fg = named_colors.white
        },
        NavicIconsOperator = {
            fg = named_colors.white
        },
        NavicIconsPackage = {
            fg = named_colors.white,
            style = italic
        },
        NavicIconsProperty = {
            fg = named_colors.white,
            style = italic
        },
        NavicIconsString = {
            fg = named_colors.white,
            style = italic
        },
        NavicIconsStruct = {
            fg = named_colors.white
        },
        NavicIconsTypeParameter = {
            fg = named_colors.white
        },
        NavicIconsVariable = {
            fg = named_colors.white,
            style = bold
        },
        NavicText = {
            fg = named_colors.white
        },
        NavicSeparator = {
            fg = named_colors.white
        }
    }
    -- Options:

    -- Disable nvim-tree background
    if vim.g.nord_disable_background then
        plugins.NvimTreeNormal = {
            fg = named_colors.white,
            bg = nord.none
        }
    else
        plugins.NvimTreeNormal = {
            fg = named_colors.white,
            bg = nord.sidebar
        }
    end

    if vim.g.nord_enable_sidebar_background then
        plugins.NvimTreeNormal = {
            fg = named_colors.white,
            bg = nord.sidebar
        }
    else
        plugins.NvimTreeNormal = {
            fg = named_colors.white,
            bg = nord.none
        }
    end

    return plugins
end

return theme
