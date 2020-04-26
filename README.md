# アプリ名
EXHOOP

</br>

# 機能一覧
・動画の投稿（タイトル、カテゴリー、概要欄）  
・動画に対するいいね  
・動画に対するコメント  
・動画のタイトル検索  
・コメントに対する返信  
・ユーザー登録、ログイン（名前、Eメール、パスワード）  
・ユーザーアイコン、プロフィール追加  
・ページネーション  

</br>

# 本番環境
URL: 18.177.47.182

</br>

# 制作背景
近年、技術の進歩により動画配信サイトの需要が高まっています。  
5Gの導入により更に加速度的に需要が高まっていくでしょう。  
そんな中、ユーザー側の課題として「再生数を伸ばす」「チャンネル登録者を増やす」ために  
どのようにアプローチすればいいか悩んでいる方がたくさんいます。  

そんな方のために、自分の投稿した動画に対してフィードバックがもらえるような  
「動画クリエイターのためのプラットフォーム」をコンセプトにこのサイトを作成しました。  

とりあえずやってみようで、いきなり動画を投稿してもそもそも再生されなければコメントも少なく、  
フィードバックをもらう機会がほぼ皆無だからです。  

</br>

# DEMO
## 各ページのPathはこちらをご確認ください(:idには数字が入ります)
動画一覧画面　　　　 (18.177.47.182)  
動画新規投稿画面　　 (18.177.47.182/videos/new)  
動画詳細画面　　　　 (18.177.47.182/videos/:id)  
動画編集画面　　　　 (18.177.47.182/videos/:id/edit)  
ユーザー新規登録画面 (18.177.47.182/users/sign_up)  
ユーザーログイン画面 (18.177.47.182/users/sign_in)  
ユーザー詳細画面　　 (18.177.47.182/users/:id)  
ユーザー編集画面　　 (18.177.47.182/users/:id/edit)  

## 18.177.47.182にアクセスしていただくと、下図のような動画一覧をご確認いただけます。

![image](https://user-images.githubusercontent.com/53987306/80301328-65e1ae80-87de-11ea-945f-a590be22495c.png)

## 画面右上のUserアイコンからユーザー登録、ログインができます。
・テストユーザーはこちら(Email: testuser@gmail.com, Password: testuser)  
・テストユーザーのEmailは変更しないよう、よろしくお願いいたします。  

![image](https://user-images.githubusercontent.com/53987306/80303216-c9250e00-87e9-11ea-9a48-ce08fc2f4520.png)

## ログインが完了すると一覧画面にて、以下確認することができます。
・ユーザー名が画面右上に表示  
・動画の新規投稿へのリンク(Newボタン)が画面右上に表示  
・動画に対していいねしている場合、ハートマークが塗り潰し  

![image](https://user-images.githubusercontent.com/53987306/80301657-43e92b80-87e0-11ea-87c6-f7b307917e56.png)

## 動画の新規投稿へのリンク(Newボタン)をクリックし、各項目を入力の上、Uploadボタンを押すと動画をアップロードできます。

![image](https://user-images.githubusercontent.com/53987306/80303275-1a350200-87ea-11ea-961a-01f391623d5d.png)

## 動画一覧画面の動画を選択すると動画詳細画面に遷移します。動画詳細画面では以下機能を実施可能です。
・動画の再生、停止、全画面表示、ダウンロード  
・動画投稿者本人の場合、編集アイコンで動画編集画面に遷移、削除アイコンで動画を削除  
・ハートマークをクリックしていいね、いいねの取り消し  
・コメントフォームをクリックしてコメントを入力、送信  
・返信アイコンをクリックしてコメントフォーム入力、返信  
・自分がしたコメントの削除  
・「View ...」をクリックしてコメントに対する返信の表示  
・ユーザーアイコンor名前をクリックしてユーザー詳細画面に遷移  

![image](https://user-images.githubusercontent.com/53987306/80302272-f1aa0980-87e3-11ea-8c72-9f8fe70b4d71.png)

## ログインした状態で画面右上のUserアイコンをクリックするとユーザー詳細画面に遷移します。

![image](https://user-images.githubusercontent.com/53987306/80302569-b577a880-87e5-11ea-8dd3-f81bd043059b.png)

## ユーザー詳細画面にて「Edit」ボタンをクリックすると、ユーザー編集画面に遷移し、以下ユーザー情報の編集が可能です。
・ユーザーアイコン  
・ユーザー名  
・メールアドレス  
・プロフィール  

![image](https://user-images.githubusercontent.com/53987306/80303623-52d5db00-87ec-11ea-86bc-21447a6693cf.png)

</br>

# 工夫したポイント
## 動画
・追加時にファイル選択すると非同期でプレビュー表示  

## いいね機能
・1つの動画に対して1人のユーザーができるいいね数を1回に限定  
・いいねしている場合はハートマークの色を塗り潰し  
・いいねを取り消すとハートマークの塗り潰しを解除  
・総いいね数をカウントして表示  

## コメント機能
・コメントに対して返信が可能  
・返信はそれぞれのコメントの下に紐づくように作成  
・総コメント数をカウントして表示  

## 検索フォーム
・フォーム選択時に×ボタンを非同期で表示  
・フォーム外、×ボタンをクリックすると×ボタンを非表示  

## ユーザーアイコン
・追加時にファイル選択すると非同期でプレビュー表示  
・border-radiusで丸い形にしアイコンらしさを強調  

</br>

# 開発環境
## 言語
Ruby 2.5.1  
## フレームワーク
Rails 5.2.3  
## データベース
MySQL  
## デプロイ
AWS  
## Gem
devise            (ユーザー登録・ログイン)  
carrierwave       (動画、画像アップロード)  
mini_magick       (アップロードのサイズ上限指定)  
haml-rails        (Haml記法)  
jquery-rails      (Jquery)  
font-awesome-sass (アイコン)  
kaminari          (ページネーション)  
bootstrap         (画面幅に応じて表示要素数変更)  
activeadmin       (管理者ページ)  
fog-aws           (AWSに動画、画像アップロード)  
rubocop           (静的解析ツール)  
dotenv-rails      (envファイル)  

</br>

# 課題
## いいね機能
・動画の一覧表示（index）、ユーザーごとの詳細ページ（users/show）でいいねの取り消しができない  
・いちいち画面更新せず非同期でいいねが反映されるようにJqueryで処理を追加する  

## コメント機能
・返信を開くと、全てのコメントに対する返信が開いてしまう  
・返信を開いたときに、「View」から「Hide」に切り替わらない  
・コメントを削除するとその下に紐づく返信がコメント数として残ってしまうが表示されない  

## レイアウト
・スマホで表示すると要素が小さく見えづらい  
・検索フォームのレイアウトが崩れている  

</br>

# 今後実装したい機能
## 動画
・SNSへの共有  
・一覧画面でのマウスホバーによる自動再生  
## いいね機能
・いいねした動画の一覧表示  
## コメント機能
・コメントした動画の一覧表示  
・コメント、返信時にメンション付与  
・メンションでのコメントを相手に通知  
## 検索
・カテゴリー検索  
・ユーザー名検索  
・検索候補表示  
## ユーザー
・実在するメールアドレスによる本登録  
・SNS認証(Google, Twitter, LINE)  
## 言語
・言語（日本語、英語）表示切り替え  
## エラーメッセージ
・入力必須項目が埋まっていない場合のエラー  
・文字数上限を超えている場合のエラー  
・ユーザー名、Eメールが重複している場合のエラー  
・動画サイズオーバーに対するエラー  
## テスト
・単体テスト  
・統合テスト  

</br>

# DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, uniqueness: true, length: { maximum: 20 }|
|email|string|null: false, uniqueness: true|
|encrypted_password|string|null: false|
|image|string||
|profile|text|length: { maximum: 200 }|

### Association
has_many :videos
has_many :likes
has_many :liked_videos, through: :likes, source: :video
has_many :comments, dependent: :destroy

</br>

## videosテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, length: { maximum: 20 }|
|work|string|null: false|
|description|text||
|user_id|integer||
|tag_id|integer||

### Association
belongs_to :user
belongs_to :tag
has_many :likes, dependent: :destroy
has_many :liked_users, through: :likes, source: :user
has_many :comments, dependent: :destroy

</br>

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false|
|video_id|integer|null: false|
|text|text|null: false|
|reply|integer||

### Association
belongs_to :user
belongs_to :video

</br>

## likesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|foreign_key: true|
|video_id|references|foreign_key: true|

### Association
belongs_to :user
belongs_to :video

</br>

## tagsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Association
has_many :videos
