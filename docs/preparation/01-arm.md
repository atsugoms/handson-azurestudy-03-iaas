# Exercise0: 事前準備

## 【目次】

![](images/0000-arm.png)


## Azureへリソースを展開

1. 以下のボタンからテンプレートを展開

    [![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fakinaritsugo%2Fhandson-azurestudy-03-iaas%2Ffeature%2Fex00%2Finfra%2Farm%2Ftemplate.json)

1. 作成したリソースから仮想マシンを開く

1. [操作]-[実行コマンド] を開く

1. `RunPowerShellScript` を選択、以下のコマンドを入力して「実行」

        Install-WindowsFeature Web-Server -IncludeManagementTools 

    ![](images/0101-arm.png)


## Storage Explorer のインストール

本ハンズオンでは Storage Explorer を利用します。
事前に以下のリンクからダウンロードしてインストールを行ってください。

* [Azure Storage Explorer](https://azure.microsoft.com/ja-jp/products/storage/storage-explorer/#overview)

