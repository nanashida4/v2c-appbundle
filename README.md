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

## 注意

リビルド時、[Oracle JDK 7uXX のバージョン指定を行っています](/build.sh#L4)。

そのため、Oracle JRE 8uXX をインストールしていても、V2C 自体は JRE 7uXX の固定バージョンの VM で起動します。

ゆえに、Oracle JRE のセキュリティアップデートを行っても、appbundler 版 V2C をリビルドしなければ、
V2C 自体は脆弱なバージョンの VM で起動することに留意してください。

Oracle JRE が新たにリリースされたら、なるべく早く更新するようにはしようと思います。

## 必要なもの

* [Oralce JRE](http://java.com/ja/)

## ダウンロード

[リリース](https://github.com/nanashida4/v2c-appbundler/releases) から最新版をダウンロードしてください

## 更新履歴

### 2014/10/18 [v2.11.4 appbuilder2-jdk7u71](https://github.com/nanashida4/v2c-appbundler/releases/tag/v2.11.4_appbundler2_jdk7u71)

* Oracle JDK 7u67でリビルドし、Rhino のエラーを解消

### 2014/10/18 [v2.11.4 appbuilder1](https://github.com/nanashida4/v2c-appbundler/releases/tag/v2.11.4_appbundler1)

* 初版作成
