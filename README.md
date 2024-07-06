# lmsys

## インスタンスの維持
```
cd /notebooks/lmsys
nohup ./sleep.sh &
```

## バックグラウンドでの動作
```
cd /notebooks/lmsys
# あらかじめ、mutiple_run.sh内に実行したいnotebookを記載する
nohup ./multiple_run.sh &
```

## 動いているかの確認
```
ps aux | grep python
```

## Kill
```
pkill multiple_run
pkill runnb
```

## GitHubからのpull
```
cd /notebooks/lmsys/
ssh-keygen -t ed25519 -C "sinchir0"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
cat ~/.ssh/id_ed25519.pub
```

```
以下のリンクで、New SSH Keyを行う
https://github.com/settings/keys
```

```
git pull origin main
# commitをする場合は以下も追加
git config --global user.email "dekunattou@gmail.com"
```

## git add, commit, push

```
git add -u
git config --global user.email "dekunattou@gmail.com"
git commit -m "add"
git push origin main
```

## メモリの確認
```
vmstat -t 2
```

## nbconvertで変換した際に、ログに残るかどうか
- printで出力したものは残る
- notebookの一番最後に実行し、Notebookの機能で出力したものは残らない

## kaggle cliの利用方法

### 準備
- kaggle.jsonをアップロードする
- 適切なパスと権限を付与する
```
mkdir -p ~/.kaggle/
cp /notebooks/lmsys/kaggle.json ~/.kaggle/
chmod 600 ~/.kaggle/kaggle.json
```

- kaggle cliをインストールする
```
pip install kaggle
```
