# ベースイメージ
FROM python:3.11

# ワーキングディレクトリを作成
WORKDIR /app

# ファイルをコピー
COPY . .

# 依存をインストール
RUN pip install -r requirements.txt

# ポート8080を開放
EXPOSE 8080

# アプリ起動
CMD ["python", "app.py"]
