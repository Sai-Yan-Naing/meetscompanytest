# 【ビルド手順】
* １．ビルド

$ docker-compose build

* ２．設定ファイルの準備(必要に応じて)

mv .env.example .env

* ３．データベース作成

$ docker-compose run web rails db:create

* ４．マイグレーション実行

$ docker-compose run web rails db:migrate

* ５．シード投入の実行(必要に応じて)

$ docker-compose run web rails db:seed


# 【実行手順】

●backgroundで起動
 
$ docker-compose up -d

　→ http://localhost:3000/にアクセスで動作確認可能
 
●bashでコンテナにログイン
 
$ docker-compose run --service-ports  web bash

 ・rails起動
  
  rails s -p 3000 -b '0.0.0.0'
  
  rails s -d -p 3000 -b '0.0.0.0'
 
 ・ログ確認
 
　tail -f log/development.log

●Gemfileを変更した時のライブラリ更新
 
$ docker-compose run web bundle install

●アセットを変更した時、アセットのプリコンパイルを行う場合
 
$ docker-compose run web rails assets:precompile

# 【リポジトリルール】
・masterブランチは本番リリース用ブランチのため、原則として直接編集しない。

・developブランチを本番リリース前ブランチとして使用する。（ステージング環境での動作確認用）

・開発ブランチはmasterブランチから派生して新しいブランチを作成する。

　→ 案件： feature/{対応内容}
 
　→ 不具合修正： hotfix/{対応内容}
 
 
 ・開発ブランチからdevelopブランチに宛ててプルリクを作成する。
