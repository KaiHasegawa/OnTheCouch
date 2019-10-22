# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


EndUser.create!(
  [
    {
      email: 'test1@test.com',
      password: '111111',
      name: '管理者',
    },
    {
      email: 'test2@test.com',
      password: '222222',
      name: 'テス郎',
    },
    {
      email: 'test3@test.com',
      password: '333333',
      name: 'テス子',
    }
  ]
)
Item.create!(
  [
    {
      name: 'ジョーカー',
      release_date: '2019年10月04日',
      tag_list: 'トッド・フィリップス',
      actor_list: 'ホアキン・フェニックス,ロバート・デ・ニーロ',
      genre_list: 'ドラマ,クライム'
    },
    {
      name: 'マイ・インターン',
      release_date: '2015年10月10日',
      tag_list: 'ナンシー・マイヤーズ',
      actor_list: 'アン・ハサウェイ,ロバート・デ・ニーロ',
      genre_list: 'ドラマ,クライム',
    },
    {
      name: 'ダークナイト',
      release_date: '2008年08月09日',
      tag_list: 'クリストファー・ノーラン',
      actor_list: 'クリスチャン・ベイル,ヒース・レジャー',
      genre_list: 'ドラマ,アクション',
    },
  ]
)

Event.create!(
  [
    {
      event_name: '映画を観ながらお酒を飲もう！',
      event_date: '10月23日 13:00',
      event_fee: '2,000',

    },
    {
      event_name: 'クリスマス、ひとり者たちでホームアローン!!',
      event_date: '12月24日 18:00',
      event_fee: '3,000',
    }
  ]
)
