# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

prefectures = [{ name: '北海道', eng_name:	'Hokkaido'},
{ name: '青森県', eng_name:	'Aomori'},
{ name: '岩手県', eng_name:	'Iwate'},
{ name: '宮城県', eng_name:	'Miyagi'},
{ name: '秋田県', eng_name:	'Akita'},
{ name: '山形県', eng_name:	'Yamagata'},
{ name: '福島県', eng_name:	'Fukushima'},
{ name: '茨城県', eng_name:	'Ibaraki'},
{ name: '栃木県', eng_name:	'Tochigi'},
{ name: '群馬県', eng_name:	'Gunma'},
{ name: '埼玉県', eng_name:	'Saitama'},
{ name: '千葉県', eng_name:	'Chiba'},
{ name: '東京都', eng_name:	'Tokyo'},
{ name: '神奈川県', eng_name:	'Kanagawa'},
{ name: '新潟県', eng_name:	'Niigata'},
{ name: '富山県', eng_name:	'Toyama'},
{ name: '石川県', eng_name:	'Ishikawa'},
{ name: '福井県', eng_name:	'Fukui'},
{ name: '山梨県', eng_name:	'Yamanashi'},
{ name: '長野県', eng_name:	'Nagano'},
{ name: '岐阜県', eng_name:	'Gifu'},
{ name: '静岡県', eng_name:	'Shizuoka'},
{ name: '愛知県', eng_name:	'Aichi'},
{ name: '三重県', eng_name:	'Mie'},
{ name: '滋賀県', eng_name:	'Shiga'},
{ name: '京都府', eng_name:	'Kyoto'},
{ name: '大阪府', eng_name:	'Osaka'},
{ name: '兵庫県', eng_name:	'Hyogo'},
{ name: '奈良県', eng_name:	'Nara'},
{ name: '和歌山県', eng_name:	'Wakayama'},
{ name: '鳥取県', eng_name:	'Tottori'},
{ name: '島根県', eng_name:	'Shimane'},
{ name: '岡山県', eng_name:	'Okayama'},
{ name: '広島県', eng_name:	'Hiroshima'},
{ name: '山口県', eng_name:	'Yamaguchi'},
{ name: '徳島県', eng_name:	'Tokushima'},
{ name: '香川県', eng_name:	'Kagawa'},
{ name: '愛媛県', eng_name:	'Ehime'},
{ name: '高知県', eng_name:	'Kochi'},
{ name: '福岡県', eng_name:	'Fukuoka'},
{ name: '佐賀県', eng_name:	'Saga'},
{ name: '長崎県', eng_name:	'Nagasaki'},
{ name: '熊本県', eng_name:	'Kumamoto'},
{ name: '大分県', eng_name:	'Oita'},
{ name: '宮崎県', eng_name:	'Miyazaki'},
{ name: '鹿児島県', eng_name: 'Kagoshima'},
{ name: '沖縄県', eng_name:	'Okinawa'},
]

prefectures.each do |pre|
  Prefecture.create(name: pre[:name], eng_name: pre[:eng_name])
end
