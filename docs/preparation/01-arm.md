# Exercise0: 事前準備

## 【目次】

![](images/0000-arm.png)


## Azureへリソースを展開

1. 以下のボタンからテンプレートを展開
 
    <a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fakinaritsugo%2Fhandson-azurestudy-03-iaas%2Fmain%2Finfra%2Farm%2Ftemplate.json" target="_blank"><img src="https://aka.ms/deploytoazurebutton" /></a>

    (*) "Deploy ボタン" からうまく飛べない場合、
    以下のJSONファイルをダウンロードして「カスタムテンプレートのデプロイ」に読み込ませる
    
    [ARMテンプレート JSON ファイル](https://raw.githubusercontent.com/akinaritsugo/handson-azurestudy-03-iaas/main/infra/arm/template.json)

1. テンプレートには以下のパラメータを設定

    |項目|設定値|設定例|
    |---|---|---|
    |サブスクリプション| AzureStudy用に準備したもの | - |
    |リソースグループ| 任意名 | `rg-{YOUR_NAME}` |
    |リージョン| 展開するリージョン | `japan east` |
    |Virtual Network Name| 仮想ネットワーク名 | `vnet-{YOUR_NAME}-main` |
    |NSG_VM_NAme| 仮想マシンを展開するサブネット( `snet-vm` )に取り付けるNSG名 | `nsg-{YOUR_NAME}-vm` |
    |NSG_Gateway_Name| AppliactionGatewayを展開するサブネット（ `snet-gateway` ）に取り付けるNSG名 | `nsg-{YOUR_NAME}-gateway` |
    |NSG_Peering_Name| Private Peering を展開するサブネット（ `snet-peering` ）に取り付けるNSG名 | `nsg-{YOUR_NAME}-peering` |
    |Virtual Machine_Name| 仮想マシン名 | `vm-{YOUR_NAME}-winsvr` |
    |Virtual Machine Admin Username| 仮想マシンのログインユーザー名 | `azureuser` |
    |Virtual Machine Admin Password| 仮想マシンのログインパスワード| - |

## 展開した仮想マシンの設定

1. Azure ポータルにて、作成したリソースから仮想マシンを開く

1. [操作]-[実行コマンド] を開く

1. `RunPowerShellScript` を選択、以下のコマンドを入力して「実行」

        Install-WindowsFeature Web-Server -IncludeManagementTools 

    ![](images/0101-arm.png)


## Storage Explorer のインストール

本ハンズオンでは Storage Explorer を利用します。
事前に以下のリンクからダウンロードしてインストールを行ってください。

* [Azure Storage Explorer](https://azure.microsoft.com/ja-jp/products/storage/storage-explorer/#overview)

