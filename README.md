# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# bookingapp

## 概要

このアプリは友人の接骨院の予約を行う事アプリです。<br>

"bookingapp" はカレンダーに予約を入れる事が出来ます。<br>
トップページのカレンダー上部にあるボタンから予約登録を行うページに飛び、そこで名前や開始時間、終了時間、備考の入力が出来ます。<br>
またトップページなどから予約の確認、修正、削除が行えます。<br>

お手数ですが、お試しの際は登録した予約は削除をお願いします。

##  Features

"bookingapp" is an app for booking a friend's store.

It is an application to introduce online reservation to a friend's bone clinic.
Used by friends who are owners to check the reservation status of the store.

Confirmation of reservation status.
If you make a reservation, the frame will be filled.

You will need to enter the information required to make the reservation.

Please be sure to delete the registered reservation after trying this "bookingapp".

## 作成背景

友人が去年接骨院を開業し、のちに予約制を導入しました。<br>
予約をする方法が電話しかなく、ネットでの予約が出来ると一人で接骨院を経営している友人の助けになる為開発しました。<br>

## 本番環境
URL：　https://bookingapp-nakagawa.herokuapp.com/events
テストアカウント
テスト太郎
メールアドレス：　ooarai@ggmail.com
パスワード：　Zxcvbn2

## DEMO

予約ページ  (https://user-images.githubusercontent.com/53069435/81917177-d0348480-960f-11ea-8035-95a3adb11964.png)<br>
予約登録フォーム　(https://user-images.githubusercontent.com/53069435/81919329-acbf0900-9612-11ea-9095-f26986d0d651.png)

## 開発環境

・rails: 5.2.4
・ruby: 2.5.1
・DB: mysql

## 今度実装したい点

cssを適用し、viewデザインを整える。

## 工夫した点

友人が使いやすい様、またある程度利用者年齢が高い事も予想される為なるべくページ数、フォーム数やボタンなどを減らすことで必要最低限に留めた点。

## DB設計

### eventテーブル
|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
|start_time|datetime|null: false|
|end_time|datetime|null: false|
|dispription|text||

#### Association
- belongs_to :user

### userテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|password|string|null: false|
|address|string|null: false|
|tellnumber|integer|null: false|
|email|string||

#### Association
- has_many :events
