appbundler 版 V2C
======================

## 説明

これは、 [Java+Swingによる2ch&Twitterブラウザ V2C](http://v2c.s50.xrea.com/) の Mac OSX 版を、
[appbundler](https://java.net/projects/appbundler/downloads) でリビルドしたものです。

Mac OS X では、オリジナル版は [Java for OS X 2014-001](http://support.apple.com/kb/dl1572) でなければ動きません。

これは、 [JarBundler](http://informagen.com/JarBundler/index.html) を使ってランチャーがビルドされているためです。

オリジナル V2C を Java for OS X 2014-001 をインストールしていない環境で起動しようとすると、以下のメッセージが表示されます。

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

[リリース](https://github.com/nanashida4/v2c-appbundler/releases) から最新版をダウンロードしてください

**自己署名を利用しています。自己責任にてご利用ください。**
アプリケーションを起動するためには、 [OS X：Gatekeeper について](http://support.apple.com/kb/ht5290?viewlocale=ja_JP) に記載されている手順で、「すべてのアプリケーションを許可」する必要があります。


## 更新履歴

### 2014/10/21 [v2.11.4 appbundler3](https://github.com/nanashida4/v2c-appbundler/releases/tag/v2.11.4_appbundler3)

* Rhino 1.7R5pre をビルドした js.jar, JSR-223 スクリプトエンジンの js-engine.jar を追加し、
  Oracle JRE 8 でユーザスクリプトが使えるようにした
    * Rhino は [github.com/mozilla/rhino](https://github.com/mozilla/rhino/commit/013a3ef676ab9424fc2229a33026b085e069b2cb) でビルド
    * JSR-223 スクリプトエンジンは [Using Rhino JSR-223 engine with JDK8](https://wiki.openjdk.java.net/display/Nashorn/Using+Rhino+JSR-223+engine+with+JDK8) の手順でビルド
* JRE7u71 をバンドルしないようにし、クライアントマシンの最新版 Oracle JRE が利用されるようにした

### 2014/10/19 [v2.11.4 appbundler2-jdk7u71](https://github.com/nanashida4/v2c-appbundler/releases/tag/v2.11.4_appbundler2_jdk7u71)

* アーカイブ作成に失敗していたのを修正
* `V2C.app` を自己署名するように修正
* Oracle JDK 7u71でリビルドし、Oracle JRE 8 の環境で Rhino のエラーが発生するのを修正

### 2014/10/18 [v2.11.4 appbundler1](https://github.com/nanashida4/v2c-appbundler/releases/tag/v2.11.4_appbundler1)

* 初版作成
