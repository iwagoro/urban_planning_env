---

# 都市工学データ処理用Dockerコンテナ

このリポジトリは、都市工学データをローカルで処理するためのDockerコンテナを提供します。必要なツールや依存関係がすべて含まれた開発環境がセットアップされています。さらに、VS Codeのdevcontainerを使うことで、簡単に開発環境を構築することができます。

## 必要環境

リポジトリを使用する前に、以下のソフトウェアがインストールされていることを確認してください:

- [Docker](https://docs.docker.com/get-docker/) （コンテナ管理のため）
- [Visual Studio Code](https://code.visualstudio.com/) （devcontainerの利用に推奨）
- [Dev Containers拡張機能](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) （devcontainerを使用するため）

---

## Docker のインストール方法

以下の手順に従って Docker をインストールしてください。

### Windows

1. [Docker Desktop for Windows](https://desktop.docker.com/win/stable/Docker%20Desktop%20Installer.exe)をダウンロードします。
2. インストーラーを実行し、画面の指示に従ってインストールを進めます。
3. インストール後、Docker が自動的に起動します。以下のコマンドをターミナルや PowerShell で実行して、インストールが正しく行われたか確認してください。

    ```sh
    docker --version
    ```

### macOS

1. [Docker Desktop for Mac](https://desktop.docker.com/mac/stable/Docker.dmg)をダウンロードします。
2. `.dmg`ファイルを開き、Docker をアプリケーションフォルダにドラッグします。
3. アプリケーションから Docker を起動し、メニューバーに Docker のアイコンが表示されるまで待ちます。
4. ターミナルで以下のコマンドを実行し、インストールが成功したか確認してください。

    ```sh
    docker --version
    ```

### Linux

ほとんどの Linux ディストリビューションでは、以下の手順で Docker をインストールできます。

1. パッケージリストを更新します。

    ```sh
    sudo apt-get update
    ```

2. Docker をインストールします。

    ```sh
    sudo apt-get install docker-ce docker-ce-cli containerd.io
    ```

3. Docker サービスを起動します。

    ```sh
    sudo systemctl start docker
    ```

4. 以下のコマンドを実行して、Docker のインストールを確認します。

    ```sh
    docker --version
    ```

詳細なインストール手順は、公式 Docker ドキュメントの[Linux への Docker インストール](https://docs.docker.com/engine/install/)を参照してください。

---

## Devcontainer の使用方法

このリポジトリには、VS Code での作業を簡素化するための `.devcontainer` 設定が含まれています。以下の手順で使用できます。

1. **リポジトリを VS Code で開く**:

    リポジトリをクローンし、VS Code で開きます。

    ```sh
    git clone <リポジトリのURL>
    cd <リポジトリのフォルダ>
    code .
    ```

2. **Devcontainer で再オープン**:

    VS Code に「Dev Containers」拡張機能がインストールされている場合、フォルダを開く際に「Devcontainer で開きますか？」と表示されます。それを選択するか、コマンドパレット（`Ctrl+Shift+P` または `Cmd+Shift+P`）を開き、以下のコマンドを実行してください。

    ```
    Dev Containers: Reopen in Container
    ```

    これにより、 `.devcontainer` フォルダで定義された Docker コンテナがビルドされ、コンテナ内での開発環境が立ち上がります。

3. **作業開始**:

    コンテナが起動したら、必要なツールやライブラリがすべてインストールされた状態で作業を開始できます。コンテナ内での変更は、ローカルのファイルに反映されます。

---

## Docker コンテナのビルドと実行

ローカルで Docker コンテナをビルドして実行するには、以下のコマンドを使用してください。

1. Docker イメージをビルドします。

    ```sh
    docker build -t urban-engineering-data-processing .
    ```

2. コンテナを実行します。

    ```sh
    docker run -it --rm urban-engineering-data-processing
    ```

---

## コントリビューション

もし問題が発生したり、改善案がある場合は、気軽に Issue や Pull Request を提出してください。

---
