return {
  -- this table overrides highlights in all themes
  -- Normal = { bg = "#000000" },
  -- Normal = { bg = "#1c1c1c" },
  -- ['@method'] = { fg = "#36ce5e" },
  -- ['@variable.builtin'] = { "#d4bbff" }
  -- [ '']
  -- this table overrides highlights in all themes
  -- Normal = { bg = "#000000" },
  -- Normal = { bg = "#1c1c1c" },
  -- lineNr = { bg = "none" },
  --
  -- lineNr = { fg="#202020" },
  -- Normal = { guibg="#1c1c1c" },
  -- string = { fg='#f1e05a' },
  -- string = { fg='#fddc69' },
  ['@parameter'] = { fg = "#FFB53D" },
  ['@type.builtin'] = { fg="#26C99E" },
  ['@method.call'] = { fg = "#36ce5e" },
  ['@text.literal'] = { fg = "#AE81FF" },
  ['@string.documentation'] = { fg = "#697077", italic=true },
  Keyword =  { fg="#FF79FF" },
  DiagnosticWarn = { fg = "#FFB53D" },
  TerminalCSIColorCode = { fg = "#00CCFF" },
  Pmenu  = {fg="#d0d0d0", bg="#262626"},
  PmenuSbar = {fg="#d0d0d0", bg="#262626"},
  PmenuSel = { fg="#3ddbd9", bg="#393939"},
  PmenuThumb = {fg="#3ddbd9", bg="#393939"},
  IlluminatedWordText = { bg="#333333", fg="#ff5252" },
  IlluminatedWordRead = { bg="#333333", fg="#ffffff" },
  IlluminatedWordWrite = { bg="#252525", fg="#bdbdbd" },
  termcolorcode_cfg_246_gfg_949494 = { fg="#838383" },
  termcolorcode_cfg_208_gfg_FF8700 = { fg="#ff8700" },
  termcolorcode_cfg_37_gfg_00AFAF = { fg="#46D9FF" },
  termcolorcode_cfg_39_gfg_00AFFF = { fg="#00afff" },
  termcolorcode_cfg_5_gfg_AA00AA = { fg="#ff79ff" },
  termcolorcode_cfg_2_gfg_00AA00 = { fg="#00aa00" },
  termcolorcode_c_bold_cfg_5_g_bold_gfg_AA00AA = { fg="#d4bbff" },
  termcolorcode_cfg_3_gfg_AA5500 = { fg="#FFFF00" },
  termcolorcode_cfg_10_gfg_55FF55 = { fg="#55ff55" },
  termcolorcode_cfg_13_gfg_FF55FF = { fg="#ff55ff" },
  CurSearch = { reverse=true },
  Search = { bg="#00CCFF", fg="#1c1c1c", bold=true },
  IncSearch = { bg="#FF00FF", fg="#1c1c1c", reverse=true, underline=true, bold=true },
  NeoTreeGitUnstaged = { fg="#939393", italic=false, bold=false },
  NeoTreeGitUntracked = { fg="#666666", italic=false, bold=false },
  NeoTreeGitConflict = { fg="#FFFF00", italic=false, bold=true },
  NeoTreeModified = { fg="#AE81FF", italic=false },
  BufferLineBufferSelected = { fg="#9e9e9e", bg="#282828", italic=false, bold=true },
  NotifyBackground = { bg="#222222", fg="#939393" },
  -- NotifyBackground = { bg="#222222" },
  --   BufferLineDiagnostic xxx guifg=#303030 guibg=#1d1d1d
  -- BufferLineDiagnosticSelected xxx cterm=bold,italic gui=bold,italic guifg=#bfbfbf guibg=#1c1c1c
  -- BufferLineDiagnosticVisible xxx guifg=#303030 guibg=#191919
  -- BufferLineErrorDiagnostic xxx guifg=#303030 guibg=#1d1d1d guisp=#bf0000
  -- BufferLineErrorDiagnosticSelected xxx cterm=bold,italic gui=bold,italic guifg=#bf0000 guibg=#1c1c1c guisp=#bf0000
  -- BufferLineErrorDiagnosticVisible xxx guifg=#303030 guibg=#191919
  -- BufferLineHintDiagnostic xxx guifg=#303030 guibg=#1d1d1d guisp=#bfbf00
  -- BufferLineHintDiagnosticSelected xxx cterm=bold,italic gui=bold,italic guifg=#bfbf00 guibg=#1c1c1c guisp=#bfbf00
  -- BufferLineHintDiagnosticVisible xxx guifg=#303030 guibg=#191919
  -- BufferLineInfoDiagnostic xxx guifg=#303030 guibg=#1d1d1d guisp=#81a2ac
  -- BufferLineInfoDiagnosticVisible xxx guifg=#303030 guibg=#191919
  -- BufferLineModified xxx guifg=#ffff00 guibg=#1d1d1d
  -- BufferLineModifiedSelected xxx guifg=#ffff00 guibg=#1c1c1c
  -- BufferLineModifiedVisible xxx guifg=#ffff00 guibg=#191919
  -- BufferLineNumbers xxx guifg=#404040 guibg=#1d1d1d
  -- BufferLineNumbersSelected xxx cterm=bold,italic gui=bold,italic guifg=#ffffff guibg=#1c1c1c
  -- BufferLineNumbersVisible xxx guifg=#404040 guibg=#191919
  -- BufferLineWarningDiagnostic xxx guifg=#303030 guibg=#1d1d1d guisp=#bf7b00
  -- BufferLineWarningDiagnosticSelected xxx cterm=bold,italic gui=bold,italic guifg=#bf7b00 guibg=#1c1c1c guisp=#bf7b00
  -- BufferLineWarningDiagnosticVisible xxx guifg=#303030 guibg=#191919
  --
  --     BufferLineDevIconSh xxx guifg=#666666 guibg=#1d1d1d
  -- BufferLineDevIconVim xxx guibg=#1d1d1d
  -- BufferLineDevIconVimInactive xxx guifg=#248546 guibg=#1d1d1d
  -- BufferLineBufferSelected xxx cterm=bold,italic gui=bold,italic guifg=#ffffff guibg=#1c1c1c
  -- BufferLineHintSelected xxx cterm=bold,italic gui=bold,italic guifg=#ffff00 guibg=#1c1c1c guisp=#ffff00
  -- BufferLineBuffer xxx guifg=#404040 guibg=#1d1d1d
  -- BufferLineCloseButtonSelected xxx guifg=#ffffff guibg=#1c1c1c
  -- BufferLineError xxx guifg=#404040 guibg=#1d1d1d guisp=#ff0000
  -- BufferLineHint xxx guifg=#404040 guibg=#1d1d1d guisp=#ffff00
  -- BufferLineOffsetSeparator xxx guifg=#303030 guibg=#0f0f0f
  -- BufferLinePickVisible xxx cterm=bold,italic gui=bold,italic guifg=#ff0000 guibg=#191919
  -- BufferLinePickSelected xxx cterm=bold,italic gui=bold,italic guifg=#ff0000 guibg=#1c1c1c
  -- BufferLineTabSeparatorSelected xxx guifg=#0f0f0f guibg=#1c1c1c
  -- BufferLineTabSeparator xxx guifg=#0f0f0f guibg=#1d1d1d
  -- BufferLineSeparatorVisible xxx guifg=#0f0f0f guibg=#191919
  -- BufferLineSeparatorSelected xxx guifg=#0f0f0f guibg=#1c1c1c
  -- BufferLineDuplicate xxx cterm=italic gui=italic guifg=#3c3c3c guibg=#1d1d1d
  -- BufferLineDuplicateVisible xxx cterm=italic gui=italic guifg=#3c3c3c guibg=#191919
  -- BufferLineDuplicateSelected xxx cterm=italic gui=italic guifg=#3c3c3c guibg=#1c1c1c
  -- BufferLineTab  xxx guifg=#404040 guibg=#1d1d1d
  -- BufferLineErrorSelected xxx cterm=bold,italic gui=bold,italic guifg=#ff0000 guibg=#1c1c1c guisp=#ff0000
  -- BufferLineErrorVisible xxx guifg=#404040 guibg=#191919
  -- BufferLineWarningSelected xxx cterm=bold,italic gui=bold,italic guifg=#ffa500 guibg=#1c1c1c guisp=#ffa500
  -- BufferLineWarningVisible xxx guifg=#404040 guibg=#191919
  -- BufferLineInfoSelected xxx cterm=bold,italic gui=bold,italic guifg=#add8e6 guibg=#1c1c1c guisp=#add8e6
  -- BufferLineInfoVisible xxx guifg=#404040 guibg=#191919
  -- BufferLinePick xxx cterm=bold,italic gui=bold,italic guifg=#ff0000 guibg=#1d1d1d
  -- BufferLineInfo xxx guifg=#404040 guibg=#1d1d1d guisp=#add8e6
  -- BufferLineHintVisible xxx guifg=#404040 guibg=#191919
  -- BufferLineBufferVisible xxx guifg=#404040 guibg=#1d1d1d
  -- BufferLineCloseButtonVisible xxx guifg=#404040 guibg=#191919
  -- BufferLineWarning xxx guifg=#404040 guibg=#1d1d1d guisp=#ffa500
  -- BufferLineTabClose xxx guifg=#404040 guibg=#1d1d1d
  -- BufferLineTabSelected xxx guifg=#66d9ef guibg=#1c1c1c
  -- BufferLineGroupLabel xxx guifg=#0f0f0f guibg=#404040
  -- BufferLineGroupSeparator xxx guifg=#404040 guibg=#0f0f0f
  -- BufferLineIndicatorVisible xxx guifg=#191919 guibg=#191919
  -- hi Search guibg=#00CCFF guifg=#1c1c1c gui=bold
  -- hi IncSearch cterm=reverse guifg=#1c1c1c guibg=#FF00FF gui=reverse,underline,bold
  -- hi CurSearch gui=reverse
  -- termcolorcode_c_bold_g_bold {},
-- WhichKeyDesc   cterm= gui= links to Identifier
-- WhichKeyGroup  cterm= gui= links to Keyword
-- WhichKeyBorder cterm= gui= links to FloatBorder
-- WhichKeyFloat  cterm= gui= links to NormalFloat
-- WhichKeyValue  cterm= gui= links to Comment
  --  ------------------------------------------------
  -- ['@constant'] = { fg = "#a9ff68" },
  -- ['@parameter'] = { fg = "#FFB53D" },
  -- ['@method.call'] = { fg = "#36ce5e" },
  -- ['@variable.builtin'] = { fg = "#d4bbff" },
  -- ['@variable.builtin'] = { fg = "#a2a9b0" },
  -- ['@keyword.function'] = { fg = "#ee5396" },
  -- ['@punctuation.bracket'] = { fg = '#8cff48' },
  -- ['@string.documentation'] = { fg = "#697077" },
}

-- Preview
-- Colors
-- Token	Value	Hover
-- black-100
-- #000000 #212121
-- blue-10 #edf5ff #dbebff
-- blue-20 #d0e2ff #b8d3ff
-- blue-30 #a6c8ff #8ab6ff
-- blue-40 #78a9ff #5c97ff
-- blue-50 #4589ff #1f70ff
-- blue-60 #0f62fe #0050e6
-- blue-70 #0043ce #0053ff
-- blue-80 #002d9c #0039c7
-- blue-90 #001d6c #00258a
-- blue-100 #001141 #001f75
-- coolGray-10 #f2f4f8 #e4e9f1
-- coolGray-20 #dde1e6 #cdd3da
-- coolGray-30 #c1c7cd #adb5bd
-- coolGray-40 #a2a9b0 #9199a1
-- coolGray-50 #878d96 #757b85
-- coolGray-60 #697077 #585e64
-- coolGray-70 #4d5358 #5d646a
-- coolGray-80 #343a3f #434a51
-- coolGray-90 #21272a #2b3236
-- coolGray-100 #121619 #222a2f
-- cyan-10 #e5f6ff #cceeff
-- cyan-20 #bae6ff #99daff
-- cyan-30 #82cfff #57beff
-- cyan-40 #33b1ff #059fff
-- cyan-50 #1192e8 #0f7ec8
-- cyan-60 #0072c3 #005fa3
-- cyan-70 #00539a #0066bd
-- cyan-80 #003a6d #00498a
-- cyan-90 #012749 #013360
-- cyan-100 #061727 #0b2947
-- gray-10 #f4f4f4 #e8e8e8
-- gray-20 #e0e0e0 #d1d1d1
-- gray-30 #c6c6c6 #b5b5b5
-- gray-40 #a8a8a8 #999999
-- gray-50 #8d8d8d #7a7a7a
-- gray-60 #6f6f6f #5e5e5e
-- gray-70 #525252 #636363
-- gray-80 #393939 #474747
-- gray-90 #262626 #333333
-- gray-100 #161616 #292929
-- green-10 #defbe6 #b6f6c8
-- green-20 #a7f0ba #74e792
-- green-30 #6fdc8c #36ce5e
-- green-40 #42be65 #3bab5a
-- green-50 #24a148 #208e3f
-- green-60 #198038 #166f31
-- green-70 #0e6027 #11742f
-- green-80 #044317 #05521c
-- green-90 #022d0d #033b11
-- green-100 #071908 #0d300f
-- magenta-10 #fff0f7 #ffe0ef
-- magenta-20 #ffd6e8 #ffbdda
-- magenta-30 #ffafd2 #ff94c3
-- magenta-40 #ff7eb6 #ff57a0
-- magenta-50 #ee5396 #e3176f
-- magenta-60 #d02670 #b0215f
-- magenta-70 #9f1853 #bf1d63
-- magenta-80 #740937 #8e0b43
-- magenta-90 #510224 #68032e
-- magenta-100 #2a0a18 #53142f
-- orange-10 #fff2e8 #ffe2cc
-- orange-20 #ffd9be #ffc69e
-- orange-30 #ffb784 #ff9d57
-- orange-40 #ff832b #fa6800
-- orange-50 #eb6200 #cc5500
-- orange-60 #ba4e00 #9e4200
-- orange-70 #8a3800 #a84400
-- orange-80 #5e2900 #753300
-- orange-90 #3e1a00 #522200
-- orange-100 #231000 #421e00
-- purple-10 #f6f2ff #ede5ff
-- purple-20 #e8daff #dcc7ff
-- purple-30 #d4bbff #c5a3ff
-- purple-40 #be95ff #ae7aff
-- purple-50 #a56eff #9352ff
-- purple-60 #8a3ffc #7822fb
-- purple-70 #6929c4 #7c3dd6
-- purple-80 #491d8b #5b24ad
-- purple-90 #31135e #40197b
-- purple-100 #1c0f30 #341c59
-- red-10 #fff1f1 #ffe0e0
-- red-20 #ffd7d9 #ffc2c5
-- red-30 #ffb3b8 #ff99a0
-- red-40 #ff8389 #ff6168
-- red-50 #fa4d56 #ee0713
-- red-60 #da1e28 #b81922
-- red-70 #a2191f #c21e25
-- red-80 #750e13 #921118
-- red-90 #520408 #66050a
-- red-100 #2d0709 #540d11
-- teal-10 #d9fbfb #acf6f6
-- teal-20 #9ef0f0 #57e5e5
-- teal-30 #3ddbd9 #25cac8
-- teal-40 #08bdba #07aba9
-- teal-50 #009d9a #008a87
-- teal-60 #007d79 #006b68
-- teal-70 #005d5d #007070
-- teal-80 #004144 #005357
-- teal-90 #022b30 #033940
-- teal-100 #081a1c #0f3034
-- warmGray-10 #f7f3f2 #f0e8e6
-- warmGray-20 #e5e0df #d8d0cf
-- warmGray-30 #cac5c4 #b9b3b1
-- warmGray-40 #ada8a8 #9c9696
-- warmGray-50 #8f8b8b #7f7b7b
-- warmGray-60 #726e6e #605d5d
-- warmGray-70 #565151 #696363
-- warmGray-80 #3c3838 #4c4848
-- warmGray-90 #272525 #343232
-- warmGray-100 #171414 #2c2626
-- white-0 #ffffff
-- #
-- yellow-10 #fcf4d6 #f8e6a0
-- yellow-20 #fddc69 #fccd27
-- yellow-30 #f1c21b #ddb00e
-- yellow-40 #d2a106 #bc9005
-- yellow-50 #b28600 #9e7700
-- yellow-60 #8e6a00 #755800
-- yellow-70 #684e00 #806000
-- yellow-80 #483700 #5c4600
-- yellow-90 #302400 #3d2e00
-- yellow-100 #1c1500 #332600
