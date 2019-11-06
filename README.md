# gitlab_page

## テスト環境
```
GNU Make 3.81
pandoc 2.7.3
go1.12.5 windows/amd64
```

## ディレクトリ構造
```
/
  ├-.git/
  ｜
  ├-html/
  ｜  ├*.md
  ｜  ：
  ｜
  ├-gitlab_page
  ｜
  ├-makefile
  ｜
  └-github_kn.css
```

`gitlab_page`... 実行ファイル

	port`:8823`で待受け，定期的に`git pull`と`make`を実行する．

`makefile`は`html/`直下の`*.md`ファイルを`*.html`ファイルに変換する．

## 使い方
1. リポジトリを`clone`する．
2. main.goをビルドして実行すると，`html/`ディレクトリ以下が公開される．
3. `IPaddress:port`でアクセスする．

※`html/`ディレクトリ以下はアクセス可能なので，公開情報のみを置くようにする．
