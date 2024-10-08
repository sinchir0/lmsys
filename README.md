# lmsys

## ゴミの掃除(paperspace向け)
```
rm -rf ./.Trash-0
```

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
pkill multiple_run && pkill runnb
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

# コンペ開始時の手順

## データの準備
```
mkdir data
```

- kaggle.jsonをdataにアップロードする

```
./fetch_data.sh lmsys-chatbot-arena
```

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

- コンペサイトからデータをダウンロードする
```
mkdri data
kaggle competitions download lmsys-chatbot-arena -p data
unzip data/lmsys-chatbot-arena.zip -d data
```

# 環境設定

## zshのインストール
```sh
# https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH
sudo apt install zsh
```

## starshipの設定
```sh
# https://starship.rs/ja-JP/guide/
curl -sS https://starship.rs/install.sh | sh
echo "$(starship init zsh)" >> ~/.zshrc
```

## zsh-autosuggestionsの設定
```sh
# https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
echo "source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc
echo 'HISTFILE=~/.zsh_history' >> ~/.zshrc
echo 'HISTSIZE=1000' >> ~/.zshrc
echo 'SAVEHIST=1000' >> ~/.zshrc
echo 'setopt HIST_IGNORE_DUPS' >> ~/.zshrc
echo 'setopt SHARE_HISTORY' >> ~/.zshrc
echo 'setopt INC_APPEND_HISTORY' >> ~/.zshrc
echo 'source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh' >> ~/.zshrc
```
