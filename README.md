# [災害支援対策アプリケーション]

## 概要 (Overview)

このプロジェクトは、[地震による二次被害] を解決するためのアプリケーションです。
[大規模災害時に行う応急危険度判定作業をデジタル化し、民間人などが撮影した動画や画像を共有する仕組みを構築します。提供された情報に基づき判定の優先度を決めることで、判定士の戦略的配置と迅速な対応を実現します。]

## 特徴 (Features)

- 判定投稿機能: [応急危険度判定を行う木造、鉄筋、コンクリートの調査を行い画像付きで投稿することができます]
- 一般投稿機能: [一般の方が木造、鉄筋、コンクリートの簡単な調査を行い、画像付きで投稿することができます]
- マップ機能: [現在位置周辺の投稿された調査内容を閲覧することができます]
- 集計機能: [調査された建物件数や危険と判断された建物の割合、地域別統計などを閲覧できます]
- 未判定調査機能: [一般の方が投稿した調査をもとに判定を行うことができます。判定済みの調査内容も閲覧可能です。]

## 環境・要件 (Requirement)

- **Flutter**: 3.x
- **Dart**: >= 2.19.4

### 主な使用ライブラリ (Tech Stack)

このプロジェクトでは以下の主要なパッケージを使用しています。

- **状態管理 (State Management)**
  - `provider`: アプリ全体の状態管理
- **地図・位置情報 (Map & Location)**
  - `flutter_map`: OpenStreetMap等の表示
  - `geolocator`: 現在位置の取得
  - `latlong2`: 緯度経度の計算処理
  - `flutter_map_animations`: マップのアニメーション制御
- **バックエンド・通信 (Backend & Network)**
  - `firebase_core` / `firebase_storage`: Firebase連携・画像ストレージ
  - `http`: API通信
- **UI・デザイン (UI & Design)**
  - `fl_chart`: グラフ描画（進捗表示など）
  - `cupertino_icons`: iOSスタイルアイコン
- **コード生成・データクラス (Code Generation)**
  - `freezed` / `freezed_annotation`: イミュータブルなデータクラス生成
  - `json_serializable`: JSON変換コードの自動生成
- **ユーティリティ (Utilities)**
  - `flutter_dotenv`: 環境変数の管理 (.env)
  - `intl` / `flutter_localizations`: 多言語対応・日付フォーマット
  - `image_picker`: 画像の選択・撮影

## Firebaseの設定

### 事前準備（Firebase コンソール）

- Firebase コンソール（https://firebase.google.com/?hl=ja) でプロジェクトを作成
- Firebase Storage を有効化（リージョンを選択）

---

### ローカル環境での設定

#### 1. firebase-tools をインストール

```bash
$ npm install -g firebase-tools
```

#### 2. firebase-cli をインストール

```bash
$ dart pub global activate flutterfire_cli
```

#### 3. 環境変数の追加（flutterfire コマンドが見つからない場合）

#### 4. Firebase にログイン

```bash
$ firebase login
```

#### 5. Flutter プロジェクトと Firebase Storageを連携

作成したFirebaseプロジェクトを選択してください。

```bash
$ flutterfire configure
```

## .envファイルの設定

本プロジェクトでは、外部サービス連携のために .env ファイルを使用します。
.env は Git 管理対象外のため、各自で作成してください。
プロジェクト直下に .env ファイルを作成し、以下を設定してください。

| 変数名    | 説明                                       |
| :-------- | :----------------------------------------- |
| `gas`     | GAS（Google Apps Script）のデプロイ URL    |
| `httpgas` | GAS デプロイ URL の `/exec` 以降のパス部分 |

⚠️ **注意**: 実際の値は各自の GAS 環境に合わせて設定してください。

例:

```
gas="https://script.google.com/macros/s/xxxxxxxxxxxxxxxxxxxxxxxxxxxxx/exec"
httpgas="macros/s/xxxxxxxxxxxxxxxxxxxxxxxxx/exec"
```

## インストール (Installation)

```bash
$ git clone https://github.com/Ktento/house-checker-mobile.git
$ cd house-checker-mobile
$ flutter pub get
$ flutter run
```
