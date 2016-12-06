# cloudstack-kvm-host-recipe
[Quick Installation Guide for CentOS 6](http://docs.cloudstack.apache.org/projects/cloudstack-installation/en/4.6/qig.html)に示されているコマンドの中で、KVMホストの設定に関する処理の一部を行うitamaeレシピです。
SELinuxの設定、NTPのインストール、CloudStackパッケージの追加、KVMの設定を行います。

# 説明
CentOSをインストールしネットワーク及びhostnameの設定を済ませたマシンに対しこのレシピを適用することで、CloudStackのUIからAddHostでそのマシンをホストとして登録できる状態にします。
