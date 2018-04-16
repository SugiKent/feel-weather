# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Prefecture.delete_all

Prefecture.create([
  { id: 1, name: '北海道', eng_name:	'Hokkaido', capital_name: 'Sapporo'},
  { id: 2, name: '青森県', eng_name:	'Aomori', capital_name: 'Aomori'},
  { id: 3, name: '岩手県', eng_name:	'Iwate', capital_name: 'Morioka'},
  { id: 4, name: '宮城県', eng_name:	'Miyagi', capital_name: 'Sendai'},
  { id: 5, name: '秋田県', eng_name:	'Akita', capital_name: 'Akita'},
  { id: 6, name: '山形県', eng_name:	'Yamagata', capital_name: 'Yamagata'},
  { id: 7, name: '福島県', eng_name:	'Fukushima', capital_name: 'Fukushima'},
  { id: 8, name: '茨城県', eng_name:	'Ibaraki', capital_name: 'Mito'},
  { id: 9, name: '栃木県', eng_name:	'Tochigi', capital_name: 'Utsunomiya'},
  { id: 10, name: '群馬県', eng_name:	'Gunma', capital_name: 'Maebashi'},
  { id: 11, name: '埼玉県', eng_name:	'Saitama', capital_name: 'Saitama'},
  { id: 12, name: '千葉県', eng_name:	'Chiba', capital_name: 'Chiba'},
  { id: 13, name: '東京都', eng_name:	'Tokyo', capital_name: 'Shinjuku'},
  { id: 14, name: '神奈川県', eng_name:	'Kanagawa', capital_name: 'Yokohama'},
  { id: 15, name: '新潟県', eng_name:	'Niigata', capital_name: 'Niigata'},
  { id: 16, name: '富山県', eng_name:	'Toyama', capital_name: 'Toyama'},
  { id: 17, name: '石川県', eng_name:	'Ishikawa', capital_name: 'Kanazawa'},
  { id: 18, name: '福井県', eng_name:	'Fukui', capital_name: 'Fukui'},
  { id: 19, name: '山梨県', eng_name:	'Yamanashi', capital_name: 'Kofu'},
  { id: 20, name: '長野県', eng_name:	'Nagano', capital_name: 'Nagano'},
  { id: 21, name: '岐阜県', eng_name:	'Gifu', capital_name: 'Ogaki'},
  { id: 22, name: '静岡県', eng_name:	'Shizuoka', capital_name: 'Shizuoka'},
  { id: 23, name: '愛知県', eng_name:	'Aichi', capital_name: 'Nagoya'},
  { id: 24, name: '三重県', eng_name:	'Mie', capital_name: 'Tsu'},
  { id: 25, name: '滋賀県', eng_name:	'Shiga', capital_name: 'Otsu'},
  { id: 26, name: '京都府', eng_name:	'Kyoto', capital_name: 'Kyoto'},
  { id: 27, name: '大阪府', eng_name:	'Osaka', capital_name: 'Osaka'},
  { id: 28, name: '兵庫県', eng_name:	'Hyogo', capital_name: 'Kobe'},
  { id: 29, name: '奈良県', eng_name:	'Nara', capital_name: 'Nara'},
  { id: 30, name: '和歌山県', eng_name:	'Wakayama', capital_name: 'Wakayama'},
  { id: 31, name: '鳥取県', eng_name:	'Tottori', capital_name: 'Tottori'},
  { id: 32, name: '島根県', eng_name:	'Shimane', capital_name: 'Matsue'},
  { id: 33, name: '岡山県', eng_name:	'Okayama', capital_name: 'Okayama'},
  { id: 34, name: '広島県', eng_name:	'Hiroshima', capital_name: 'Hiroshima'},
  { id: 35, name: '山口県', eng_name:	'Yamaguchi', capital_name: 'Yamaguchi'},
  { id: 36, name: '徳島県', eng_name:	'Tokushima', capital_name: 'Tokushima'},
  { id: 37, name: '香川県', eng_name:	'Kagawa', capital_name: 'Takamatsu'},
  { id: 38, name: '愛媛県', eng_name:	'Ehime', capital_name: 'Matsuyama'},
  { id: 39, name: '高知県', eng_name:	'Kochi', capital_name: 'Nankoku'},
  { id: 40, name: '福岡県', eng_name:	'Fukuoka', capital_name: 'Fukuoka'},
  { id: 41, name: '佐賀県', eng_name:	'Saga', capital_name: 'Karatsu'},
  { id: 42, name: '長崎県', eng_name:	'Nagasaki', capital_name: 'Nagasaki'},
  { id: 43, name: '熊本県', eng_name:	'Kumamoto', capital_name: 'Kumamoto'},
  { id: 44, name: '大分県', eng_name:	'Oita', capital_name: 'Beppu'},
  { id: 45, name: '宮崎県', eng_name:	'Miyazaki', capital_name: 'Miyazaki'},
  { id: 46, name: '鹿児島県', eng_name: 'Kagoshima', capital_name: 'Kagoshima'},
  { id: 47, name: '沖縄県', eng_name:	'Okinawa', capital_name: 'Ginowan'},
])
