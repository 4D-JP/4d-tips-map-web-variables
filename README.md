# 4d-tips-map-web-variables
Web変数に値を自動的に代入する

[Web変数に値を自動的に代入する](https://doc.4d.com/4Dv18/4D/18/Compatibility-page.300-4575476.ja.html)というオプションは，v13.4で廃止予定となり，現バージョンには存在しません。

#### 代替案

Webリクエストは，各メソッドにリダイレクトされる前に，`Compiler_Web`メソッドを通過します。Compiler_Webは，本来，Webフォーム変数に対応する4Dプロセス変数を宣言する場所ですが，基本的にどんなコマンドでも実行することができます。

```4d
ARRAY TEXT($names;0)
ARRAY TEXT($values;0)

WEB GET VARIABLES($names;$values)

For ($i;1;Size of array($names))
	Formula from string(New collection($names{$i};":=";"$1").join()).call(Null;$values{$i})
End for 
```
