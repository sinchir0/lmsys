# lmsys

## バックグラウンドでの動作
```
cd /notebooks/lmsys
nohup ./sleep.sh &
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

秘密鍵、公開鍵の作成
```
cd /notebooks/lmsys/
./make_github_key_and_set_email.sh
```

出力された公開鍵を以下に入力する
https://github.com/settings/keys


pullする
```
git pull origin main
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
