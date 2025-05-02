# ベースイメージ
FROM python:3.11

# ワーキングディレクトリを作成
WORKDIR /test

# ファイルをコピー
COPY . .

# 依存をインストール
RUN pip3 install -r requirements.txt

# ポート8080を開放
EXPOSE 8080

# アプリ起動
CMD ["python3.11", "index.py"]
