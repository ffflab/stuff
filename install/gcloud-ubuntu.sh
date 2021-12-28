#!/bin/bash
set -eux

#
# curl {} | bash
#

#
# install gcloud command (ubuntu)
# Cloud SDK: コマンドライン インターフェース ドキュメント
# apt-get を使用したインストール（Debian と Ubuntu のみ）
# https://cloud.google.com/sdk/docs/downloads-apt-get
# 

# Cloud SDK の配布 URI をパッケージ ソースとして追加します。
echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list

# 注: apt-transport-https がインストールされていることを確認してください。
sudo apt-get install apt-transport-https ca-certificates gnupg -y

# Google Cloud の公開鍵をインポートします。
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -

# Cloud SDK を更新してインストールします。
sudo apt-get update && sudo apt-get install google-cloud-sdk -y
