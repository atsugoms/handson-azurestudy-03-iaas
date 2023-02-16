# Exercise0: 事前準備

## 【目次】

![](images/0000-arm.png)


## Azureへリソースを展開

1. 以下のボタンからテンプレートを展開
 
    <a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fakinaritsugo%2Fhandson-azurestudy-03-iaas%2Fmain%2Finfra%2Farm%2Ftemplate.json" target="_blank"><img src="https://aka.ms/deploytoazurebutton" /></a>

    (*) "Deploy ボタン" からうまく飛べない場合、
    以下のJSONファイルをダウンロードして「カスタムテンプレートのデプロイ」に読み込ませる
    
    [ARMテンプレート JSON ファイル](https://raw.githubusercontent.com/akinaritsugo/handson-azurestudy-03-iaas/main/infra/arm/template.json)

1. 作成したリソースから仮想マシンを開く

1. [操作]-[実行コマンド] を開く

1. `RunPowerShellScript` を選択、以下のコマンドを入力して「実行」

        Install-WindowsFeature Web-Server -IncludeManagementTools 

    ![](images/0101-arm.png)


## Storage Explorer のインストール

本ハンズオンでは Storage Explorer を利用します。
事前に以下のリンクからダウンロードしてインストールを行ってください。

* [Azure Storage Explorer](https://azure.microsoft.com/ja-jp/products/storage/storage-explorer/#overview)

