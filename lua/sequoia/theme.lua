local c = require("sequoia.colors").setup()

local M = {}

function M.setup()
    local theme = {}
    theme.base = {
        ColorColumn = { bg = c.bg_cursor_line }, -- TODO
        -- Conceal Conceal されたテキストの代わりに表示される代替文字の表示に使われる
        Cursor = { fg = c.editorCursor.fg, bg = c.editorCursor.bg }, -- カーソル位置
        -- lCursor language-mapping が使用されているときのカーソルの下の文字
        -- CursorIM Cursorと同じだが、IMEモードにいるとき使われるCursorIM。
        CursorColumn = { bg = c.bg_cursor_line }, -- カーソルがある列
        CursorLine = { bg = c.bg_cursor_line }, -- カーソルがある行
        Directory = { fg = c.fg, bg = c.bg }, -- ディレクトリ名

        DiffAdd    = { bg = c.diffEditor.incertedText_bg }, -- 差分モード: 追加された行
        DiffChange = { bg = c.diffEditor.changed_bg }, -- 差分モード: 変更された行
        DiffDelete = { bg = c.diffEditor.removedText_bg }, -- 差分モード: 削除された行
        DiffText   = { bg = c.diffEditor.diff_fg }, -- 差分モード: 変更された行中の変更されたテキスト

        -- EndOfBuffer バッファ中で最終行以降の領域を埋めるための行 (~)。
        -- ErrorMsg コマンドラインに現れるエラーメッセージ
        VertSplit = { fg = c.fg, bg = c.bg },
        Folded = { fg = c.fg, bg = c.editor.fold_bg }, -- 折りたたみ
        -- FoldColumn foldcolumn
        SignColumn = { fg = c.fg, bg = c.bg },
        IncSearch = { fg = c.fg, bg = c.editor.findMatch_bg }, -- インクリメンタルサーチでヒットした部分
        LineNr = { fg = c.editorLineNumber.fg, bg = c.bg }, -- 行番号(カーソル行はCursorLineNr)
        -- LineNrAbove 'relativenumber' オプションが設定されているときのカーソル行の上の行番号。
        -- LineNrBelow  'relativenumber' オプションが設定されているときのカーソル行の下の行番号。
        CursorLineNr = { fg = c.editorLineNumber.active_fg, bg = c.bg }, -- カーソルがある行の行番号
        -- CursorLineSign  SignColumn と同じだが 'cursorline' が設定されたときに現在行に使われる。
        -- CursorLineFold  FoldColumn と同じだが 'cursorline' が設定されたときに現在行に使われる。
        MatchParen = { fg = c.white }, -- 対応するかっこの場所

        -- ModeMsg  'showmode' のメッセージ (例. "-- INSERT --")
        -- MoreMsg more-prompt
        NonText = { fg = c.non_text_fg }, -- ウィンドウの端の '@' と 'showbreak' で設定された文字など、実際のキストには存在しない文字(例. 全角文字が行末に収まらないとき ">" が表示される)。
        Normal = { fg = c.fg, bg = c.bg }, -- 通常のテキスト

        Pmenu = { fg = c.editorSuggestWidget.fg, bg = c.editorSuggestWidget.bg }, -- Pop up メニュー
        PmenuSel = { fg = c.editorSuggestWidget.selected_fg, bg = c.editorSuggestWidget.selected_bg }, -- Pop up menuの選択部分
        -- PmenuSbar ポップアップメニュー: スクロールバー。
        --PmenuThumb      ポップアップメニュー: スクロールバーのつまみ部分。
        -- Question        ヒットエンタープロンプトhit-enterとyes/noクエスチョン
        --QuickFixLine    quickfixウィンドウ内の現在の quickfix 項目。
        Search = { fg = c.fg, bg = c.editor.findMatchHighlight_bg }, -- 最後の検索でヒットした単語のハイライト
        -- CurSearch       最後の検索パターンでの現在のマッチ('hlsearch' を参照)。
        SpecialKey = { fg = c.special_key_fg }, -- ":map" でリストされるメタキーと特別なキー。テキスト中のunprintableな文字を表示するのにも使われる。一般に: 実際とは異なる文字で表示されるテキスト
        --SpellBad        スペルチェッカに認識されない単語。
        --SpellCap        大文字で始まるべき単語。
        --SpellLocal      スペルチェッカによって他の地域で使われると判断される単語。
        --SpellRare       スペルチェッカによってまず使わないと判断される単語。
        StatusLine = { fg = c.statusBar.fg, bg = c.statusBar.bg },
        -- StatusLineNC    非カレントウィンドウのステータスライン。
        --StatusLineTerm  terminal ウィンドウのカレントウィンドウのステータスライン
        --StatusLineTermNC   terminal ウィンドウの非カレントウィンドウのステータスライン
        --TabLine         タブページの行の、アクティブでないタブページのラベル
        --TabLineFill     タブページの行の、ラベルがない部分
        --TabLineSel      タブページの行の、アクティブなタブページのラベル
        --Terminal        terminal ウィンドウ
        Title = { fg = c.purple }, -- ":set all"、":autocmd" などによる出力のタイトル。
        Visual = { bg = c.editor.rangeHighlight_bg }, -- ビジュアルモード選択
        --VisualNOS       vimが "Not Owning the Selection" のときのビジュアルモード選択。これをサポートしているのはX11GUIgui-x11とxterm-clipboardのみ。
        --WarningMsg      警告メッセージ
        WildMenu = { fg = c.editorSuggestWidget.selected_fg, bg = c.editorSuggestWidget.selected_bg }, -- 補完における現在の候補
        -- Menu            メニューのフォント、文字、背景。ツールバーにも使われる。
        --Scrollbar       メインウィンドウのスクロールバーの文字と背景。
        --Tooltip         ツールチップのフォント、文字、背景。

        Comment = { fg = c.tokenColors.comment_fg, bg = c.bg },
        Constant = { fg = c.tokenColors.constant.fg, bg = c.bg }, -- 定数デフォルト値
        String = { fg = c.tokenColors.string_fg, bg = c.bg }, -- 文字列定数: "これは文字列です"
        Character = { fg = c.tokenColors.constant.Character_fg, bg = c.bg }, -- 文字定数: 'c', '\n'
        Number = { fg = c.tokenColors.constant.numeric_fg, bg = c.bg }, -- 数値定数: 234, 0xff
        Boolean = { fg = c.tokenColors.constant.boolean_fg, bg = c.bg }, -- ブール値の定数: TRUE, false
        Float = { fg = c.tokenColors.constant.numeric_fg, bg = c.bg }, -- 浮動小数点数の定数: 2.3e10

        Identifier = { fg = c.tokenColors.variables.fg, bg = c.bg }, -- 変数名デフォルト
        Function   = { fg = c.tokenColors.entity.name_fg, bg = c.bg }, -- 関数名(クラスメソッドを含む)

        PreProc = { fg = c.tokenColors.keyword_fg, bg = c.bg }, -- 一般的なプリプロセッサー命令のデフォルト値
        -- Include    = {}, -- #include プリプロセッサー
        -- Define     = {}, -- #define プリプロセッサー
        -- Macro      = {}, -- Defineと同値
        -- PreCondit  = {}, -- プリプロセッサーの #if, #else, #endif, その他

        Statement = { fg = c.tokenColors.keyword_fg, bg = c.bg }, -- 命令文デフォルト値
        -- Conditional    o if, then, else, endif, switch, その他
        -- Repeat         o for, do, while, その他
        -- Label          o case, default, その他
        -- Operator       o "sizeof", "+", "*", その他
        -- Keyword        o その他のキーワード
        -- Exception      o try, catch, throw

        Type = { fg = c.tokenColors.storage.type_fg, bg = c.bg }, -- int, long, char, その他のデフォルト値
        -- StorageClass = {}, -- static, register, volatile, その他
        -- Structure    = {}, -- struct, union, enum, その他
        -- Typedef      = {}, -- typedef宣言

        Special = { fg = c.fg, bg = c.bg }, -- 特殊なシンボルのデフォルト値
        -- SpecialChar    = {}, -- 特殊な文字定数
        -- Tag            = {}, -- この上で CTRL-] を使うことができる
        -- Delimiter      = {}, -- 注意が必要な文字
        -- SpecialComment = {}, -- コメント内の特記事項
        -- Debug          = {}, -- デバッグ命令

        Underlined = { style = "underline" }, --  目立つ文章, HTMLリンク
        Ignore     = { fg = c.editorWhitespace.fg }, -- (見た目上)空白, 不可視  hl-Ignore
        Error      = { fg = c.error_fg }, -- エラーなど、なんらかの誤った構造
        Todo       = { fg = c.tokenColors.entity.name_fg, bg = c.bg },
    }
    theme.plugins = {
        -- GitSigns
        GitSignsAdd = { fg = c.diffEditor.incertedText_bg },
        GitSignsChange = { fg = c.diffEditor.changed_bg },
        GitSignsDelete = { fg = c.diffEditor.removedText_bg },
        -- nvim-ts-rainbow
        rainbowcol1 = { fg = c.editorBracketHighlight.fg1 },
        rainbowcol2 = { fg = c.editorBracketHighlight.fg2 },
        rainbowcol3 = { fg = c.editorBracketHighlight.fg3 },
        rainbowcol4 = { fg = c.editorBracketHighlight.fg4 },
        rainbowcol5 = { fg = c.editorBracketHighlight.fg5 },
        rainbowcol6 = { fg = c.editorBracketHighlight.fg6 },
        rainbowcol7 = { fg = c.editorBracketHighlight.fg7 },
        -- nvim-tree
        NvimTreeSymlink = {fg = c.orange },
        NvimTreeRootFolder = { fg = c.blue },
        NvimTreeExecFile = {fg = c.blue },
        NvimTreeSpecialFile = {fg = c.white },
        NvimTreeImageFile = {fg=c.purple},
        NvimTreeGitDirty = { fg = c.diffEditor.changed_bg },
        NvimTreeGitStaged = {fg = c.blue },
        NvimTreeGitNew = {fg = c.diffEditor.incertedText_bg },
        NvimTreeGitDeleted = {fg = c.diffEditor.removedText_bg},
        NvimTreeNormal = {fg = c.fg, bg = c.bg},

        -- diff
        diffFile = { fg = c.white },
        diffOldFile = { fg = c.orange },
        diffNewFile = { fg = c.orange },
        diffLine = { fg = theme.base.Comment.fg },
        diffIndexLine = { fg = c.white },
        diffAdded = { fg = theme.base.DiffAdd.bg },
        diffRemoved = { fg = theme.base.DiffDelete.bg },
        diffChanged = { fg = theme.base.DiffChange.bg },
    }
    return theme
end

return M
