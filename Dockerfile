# 超軽量なNginxイメージを使用
FROM nginx:alpine

# ローカルのindex.htmlを、コンテナ内の公開フォルダにコピー
COPY index.html /usr/share/nginx/html/index.html

# Cloud Runはポート8080をリッスンするため、Nginxの設定を微調整する必要がある場合が多いですが、
# 環境変数PORTを自動的にバインドする設定や、デフォルト設定でも動く場合があります。
# 念のため、Nginxがポート8080で待機するように設定を変更します。
RUN sed -i 's/80/8080/g' /etc/nginx/conf.d/default.conf

# コンテナが使用するポートを宣言
EXPOSE 8080

# Nginxを起動
CMD ["nginx", "-g", "daemon off;"]