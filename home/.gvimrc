if has('gui_macvim')
  set showtabline=2    " タブを常に表示
  set transparency=5   " 透明度
  set imdisable        " IME OFF
  set guioptions-=T    " ツールバー非表示
  set antialias        " アンチエイリアス
  set tabstop=4        " タブサイズ
  set number           " 行番号表示
  set nobackup         " バックアップなし
  set visualbell t_vb= " ビープ音なし

  colorscheme molokai "カラースキーマ
  set columns=100      " 横幅
  set lines=35         " 行数

  set nowrapscan       " 検索をファイルの先頭へルプしない

  " フォント設定
  set guifontwide=Ricty:h12
  set guifont=Ricty:h14
  
endif
