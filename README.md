# asdf-direnv-test

Test asdf-direnv settings

## 必要なソフトウェア

[asdf]

💡 [必要なバージョン]は言語バージョン管理ツール[asdf]にてインストールできる

## 環境

GitHub からリポジトリーをクローンする

    $ cd && git clone git@github.com/RyoWakabayashi/asdf-direnv-test \
        && cd asdf-direnv-test

プラグインを追加する

    $ asdf plugin-add nodejs \
        && asdf plugin-add yarn \
        && asdf plugin-add direnv

OpenPGP キーを keyring にインポートする

    $ bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring

asdf によって各言語の指定バージョンをインストールする

    $ asdf install

[asdf-direnv が有効になるように設定する][enable-direnv]

    $ asdf exec direnv allow .envrc

## 確認

    $ yarn show_direnv_env

[asdf]: https://github.com/asdf-vm/asdf
[enable-direnv]: https://github.com/asdf-community/asdf-direnv#usage
