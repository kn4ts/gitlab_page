# gitlab_page

## 要件
```
make
pandoc
```

## ディレクトリ構造
```
root/
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
