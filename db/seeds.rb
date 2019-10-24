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
      name: 'カージョー',
      release_date: '2019年10月04日',
      tag_list: 'トッド・フィリップス',
      actor_list: 'ホアキン・フェニックス,ロバート・デ・ニーロ',
      genre_list: 'ドラマ,クライム',
      item_description: '「どんな時も笑顔で人々を楽しませなさい」という母の言葉を胸にコメディアンを夢見る、孤独だが心優しいアーサー。
                    都会の片隅でピエロメイクの大道芸人をしながら母を助け、同じアパートに住むソフィーに秘かな好意を抱いている。
                    笑いのある人生は素晴らしいと信じ、ドン底から抜け出そうともがくアーサーはなぜ、
                    狂気溢れる<悪のカリスマ>ジョーカーに変貌したのか? 切なくも衝撃の真実が明かされる！',

    },
    {
      name: 'Last of fantasy',
      release_date: '2015年10月10日',
      tag_list: 'ナンシー・マイヤーズ',
      actor_list: 'アン・ハサウェイ,ロバート・デ・ニーロ',
      genre_list: 'ドラマ,クライム',
      item_description: '時はゴールドラッシュ。普通を夢見る兄と、裏世界でのし上がりたい弟は最強と呼ばれる殺し屋。
                    政府の内密な依頼で偵察係と追うことになったのは黄金を見分ける化学式をみつけた科学者。
                    しかし黄金に魅せられた4人は手を組むことになり―。トラウマ、憧憬、疑心、かすかな友情。
                    組むはずではなかった4人の思惑が交錯し、思いがけないラストへと加速する傑作サスペンスドラマ。',
    },
    {
      name: 'ガイエ・カ・クー',
      release_date: '2008年08月09日',
      tag_list: 'クリストファー・ノーラン',
      actor_list: 'クリスチャン・ベイル,ヒース・レジャー',
      genre_list: 'ドラマ,アクション',
      item_description: 'ハリウッドでサイレントからトーキー期に活躍した伝説のお笑いコンビ、ローレル＆ハーディ（極楽コンビ）の晩年の実話を描いた感動作。
      共に人生を歩んできた二人が、人生の晩年に差し掛かり、改めて友情、舞台の大切さに気付いていく。映画そのものが
      「ローレ ル＆ハーディ」の作品かのように、人生の可笑しみと哀しさ、素晴らしさをユーモラスに描いた、愛おしいヒューマンコメディ。',
    },
    {
      name: 'Kaku Eiga',
      release_date: '2008年08月09日',
      tag_list: 'マーク・ロッコ',
      actor_list: 'ウィル・スミス,ヒース・レジャー',
      genre_list: 'ドラマ,アクション',
    },
    {
      name: 'THE BATTLE',
      release_date: '2008年08月09日',
      tag_list: 'アレックス・プロヤス',
      actor_list: 'ウィル・スミス,ブレントン・スウェイツ',
      genre_list: 'ドラマ,アクション',
    },
    {
      name: 'ナンコガイエイナ',
      release_date: '2008年08月09日',
      tag_list: 'デヴィッド・エアー',
      actor_list: 'ウィル・スミス,ジョエル・キナマン,マーゴット・ロビー',
      genre_list: 'ドラマ,クライム',
      item_description: 'かつては栄えていたにも関わらず、今や客足は途絶え、経営が全く上手くいかない状態が続く劇場の主宰であるコアラのバスタームーン（マコノヒー）。
                  バスターは根っからの楽天家で（少しろくでなしなところもありますが）、自分の劇場を何よりも愛し、劇場を守る為なら何でもやろうと
                  決心。そんな彼の望みが危機に直面した今、劇場にかつての栄光を取り戻すため、最後のチャンスである世界最高の歌唱コンテストをプロデュースする…',
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
