appbundler 版 V2C
======================

## 説明

これは、 [Java+Swingによる2ch&Twitterブラウザ V2C](http://v2c.s50.xrea.com/) の Mac OSX 版を、
[appbundler](https://java.net/projects/appbundler/downloads) でリビルドしたものです。

オリジナル版は [Java for OS X](http://support.apple.com/kb/dl1572) でなければ動きませんが、
Yosemite 上で V2C.app を起動すると、以下のようなエラー画面に悩まされることになります。

![起動エラー画面](/img/yosemite-startup-error.png)


Oracle JRE で起動すると使える状態にはなるので、 appbundler でリビルドしてみました。

## 必要なもの

* [Oralce JRE](http://java.com/ja/)

## ダウンロード

[リリース](/releases) からダウンロードしてください

## 既知の問題

### 1. ユーザスクリプトが使えない

Rhino でエラーが出てしまって使えません。 Oracle JDK でソースからリビルドすれば直りそうですが。。。

![スクリプトエラー画面](/img/yosemite-rhino-error.png)
