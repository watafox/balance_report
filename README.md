# balance_report
webアプリの個人開発勉強用/家計簿アプリ

# イメージ作成方法(備忘録)
1. docker --versionとdocker-compose --versionを確認
2. pip --versionとpython -Vを確認
docker-compose 初期化(updateしたら俺の場合は直った)
docker-compose run web django-admin.py startproject app .
これでappというディレクトリにDjangoの諸々がインストールされる