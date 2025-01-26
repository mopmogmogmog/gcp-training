# ベースイメージとしてNode.jsを使用
FROM node:16

# 必要なツールをインストール
RUN apt-get update && apt-get install -y \
    bash \
    git \
    curl \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# 作業ディレクトリを設定
WORKDIR /workspace

# 既存のnodeユーザーを使用する
USER node
