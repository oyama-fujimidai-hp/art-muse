# Art Muse - アート感想ジェネレーター

Art Muse は、絵画やイラストなどのアート作品に対して、AI（Gemini）が「やさしく」「温かい」感想を提案してくれる Web アプリケーションです。
作品を見せられた時に、どのような言葉をかければよいか迷うシーンで、心を和ませるポジティブなフィードバックを生成します。

## 🌟 主な機能

- **アート感想生成**: アップロードした画像に基づき、AI が 5 つの「やさしい感想」を生成。
- **履歴機能**: 過去に生成した感想と画像を Firebase (Firestore) に保存し、いつでも振り返ることが可能。
- **API キー設定**: Gemini API キーをブラウザのローカルストレージに安全に保存して利用。
- **レスポンシブデザイン**: Tailwind CSS を使用した、モバイル・PC 両対応のクリーンな UI。
- **ダークモーダル**: 画像を拡大してじっくり確認できるモーダル表示機能。

## 🛠 技術スタック

- **Frontend**: HTML5, JavaScript (ES6+), Tailwind CSS
- **Icons**: Lucide
- **AI**: Google Gemini API (`gemini-3-flash-preview`)
- **Backend/DB**: Firebase (Auth, Firestore)
- **Deployment**: Docker, Nginx

## 🚀 セットアップと実行

### ローカルでの実行
1. リポジトリをクローンします。
2. `src/index.html` をブラウザで開くか、ローカルサーバーを起動します。
3. 画面右上の設定アイコンから Google AI Studio で取得した **Gemini API キー** を設定してください。

### Docker での実行
Docker を使用して、Nginx 上でアプリを素早く起動できます。

```bash
docker build -t art-muse .
docker run -p 8080:8080 art-muse
```
起動後、ブラウザで `http://localhost:8080` にアクセスしてください。

## 📝 使い方
1. 画像をドラッグ＆ドロップまたはクリックでアップロードします。
2. 「感想を生成する」ボタンをクリックします。
3. AI が生成した 5 つの感想が表示されます。気に入ったものはコピーボタンでコピーできます。
4. 生成された内容は自動的に履歴に保存されます。

## ⚠️ 注意事項
- このアプリを利用するには、別途 [Google AI Studio](https://aistudio.google.com/) で発行した Gemini API キーが必要です。
- 履歴機能（Firebase）を利用するには、適切な Firebase プロジェクトの設定が必要です。
