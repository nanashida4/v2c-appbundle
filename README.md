appbundler 版 V2C
======================

## 説明

これは、 [Java+Swingによる2ch&Twitterブラウザ V2C](http://v2c.s50.xrea.com/) の Mac OSX 版を、
[appbundler](https://java.net/projects/appbundler/downloads) でリビルドしたものです。

OSX 10.10 Yosemite では、オリジナル版は [Java for OS X 2014-001](http://support.apple.com/kb/dl1572) でなければ動きません。

Java for OS X 2014-001 をインストールしていない場合、起動時に以下のメッセージが表示されます。

![JavaSE6が必要](/img/yosemite-startup-require-javase6.png)

また、やや特殊ケースとして、

* Java for OS X 2014-001 をインストールしていない
* Java for OS X 2013-005 Developer Package などの Developer Package 版をインストールしている場合

という場合（※）、以下のようなエラーダイアログが表示されて起動できません。

![起動エラー](/img/yosemite-startup-error.png)

※ `/usr/libexec/java_home --verbose` で以下のように `/Library/Java/JavaVirtualMachines/1.6.0_XX-bYY-ZZZ.jdk` が含まれる場合

```none
$ /usr/libexec/java_home --verbose
Matching Java Virtual Machines (4):
    1.8.0_20, x86_64:   "Java SE 8" /Library/Java/JavaVirtualMachines/jdk1.8.0_20.jdk/Contents/Home
    1.7.0_67, x86_64:   "Java SE 7" /Library/Java/JavaVirtualMachines/jdk1.7.0_67.jdk/Contents/Home
    1.6.0_65-b14-462, x86_64:   "Java SE 6" /Library/Java/JavaVirtualMachines/1.6.0_65-b14-462.jdk/Contents/Home
    1.6.0_65-b14-462, i386: "Java SE 6" /Library/Java/JavaVirtualMachines/1.6.0_65-b14-462.jdk/Contents/Home
```

Java 6 は今後セキュリティアップデートされないことを考えると Oracle JRE を使うことが望ましいということもあり、
appbundler でリビルドしてみました。

## 必要なもの

* [Oralce JRE](http://java.com/ja/)

## ダウンロード

[リリース](https://github.com/nanashida4/v2c-appbundler/releases) からダウンロードしてください

## 既知の問題

### 1. ユーザスクリプトが使えない

最新版 Oracle JRE 8 で起動すると Rhino でエラーが出てしまってユーザスクリプトが使えません。

![スクリプトエラー画面](/img/yosemite-rhino-error.png)
