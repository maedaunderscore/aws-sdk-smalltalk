AWS SDK for Smalltalk
=================
AWS SDK for SmalltalkはSmalltalerが簡単にAmazon Web Servicesを利用できるライブラリです。現在はAmazon DynamoDBのみ利用できます。MetacelloとFileTree環境を使ってインストールが可能です。

<img src="http://2.bp.blogspot.com/-3caM96eyEOM/VJ6S70lf-YI/AAAAAAAAARM/IvmnJdN0yp0/s1600/20141225howsmalltalkerworks.jpg" width="400"/>

#言語
* [English](https://github.com/newapplesho/aws-sdk-smalltalk/blob/master/README.md)
* [Japanese](https://github.com/newapplesho/aws-sdk-smalltalk/blob/master/README-ja.md)

#開発経緯
Pharo Smalltalkでクラウドサービスを操作してみる - Smalltalk Advent Calendar 2014
http://qiita.com/newapplesho/items/3a4847386686e6f2f18d

Smalltalkに何か還元すべきだと考え、公開することにしました。仕事を作成したものはサービスに特化させて作ってしまっため、業務外の時間を使って切り出して一般公開できるものを準備しました（いずれはSDK全てを公開します）。

# 公開して期待したいこと
**Smalltalkerが増えること。特に日本のSmalltalker。** あと私が英語が苦手（というかできないため）。心優しい方が翻訳していただけることを期待。*私の来年の最大の課題です。*

# 公開したものについて
公開したものは業務で使っているものもありますが、今回のために作成したものがあり、十分試験ができておりません。利用される場合は、自己責任でお願いします。

# 公開するもの
* AWSのほとんどのサービスにアクセスするためのSignature V4
* DynamoDBの接続クライアント（低レベル API、エラー処理は未実装）
* DynamoDBのマッパー（未完成）

Amazon DynamoDB for Smalltalkでサポートするデータ型(supports data types)
対応するデーター型は以下です。

* スカラーデータ型 - 文字列、数値
* 多値型 - 文字列セット、数値セット

# 必要要件
  - Pharo 3.0 以上

# インストール方法

簡単インストール

```smalltalk
Gofer new
url:'http://smalltalkhub.com/mc/newapplesho/aws-sdk-smalltalk/main';
    package: 'ConfigurationOfAWS';
    load.
(Smalltalk at: #ConfigurationOfAWS) load.
```

or


step 1
```bash
$ git clone https://github.com/newapplesho/aws-sdk-smalltalk
```

step 2
```smalltalk
| pathToPackageDirectory |
"edit to match the path to your chosen package directory"
pathToPackageDirectory := '/YOUR-GIT-DIRECTORY-PATH/aws-sdk-smalltalk/pharorepository/'.
Metacello new
baseline: 'AWS';
repository: 'filetree://', pathToPackageDirectory;
load.
```

# 使い方
slideshare
http://www.slideshare.net/newapplesho/aws-sdk-for-smalltalk

#今後について
DynamoDBの改良版、S3, EC2, Elastic Transcoderを公開予定。またEC2を操作するための証明書Signature V2も公開予定。ただし、AWSを色々いじるための時間と私のポケットマネーとの相談しながら作成していきます。

Copyright Sho Yoshida.

#References
* AWS SDK for Smalltalk - slideshare http://www.slideshare.net/newapplesho/aws-sdk-for-smalltalk
* Pharo Smalltalkでクラウドサービスを操作してみる http://qiita.com/newapplesho/items/3a4847386686e6f2f18d
* How Smalltalker Works http://www.slideshare.net/newapplesho/how-smalltalker-works
* 愛せよ、さもなくば捨てよ http://www.slideshare.net/newapplesho/ss-42024412

