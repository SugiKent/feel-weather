require 'net/http'
require 'uri'
require 'json'

class Tenki
  def initialize(prefecture_id)
    prefecture = Prefecture.find(prefecture_id).eng_name
    uri = URI.parse("http://api.openweathermap.org/data/2.5/weather?q=#{prefecture}&appid=9c93238d31dd0302c51d587cb1ec6b21")

    json = Net::HTTP.get(uri)
    @result = JSON.parse(json)
  end

  def now
    @result['weather'][0]['main']
  end

  def icon
    @result['weather'][0]['icon']
  end

  def emoji
    moji = ''
    if icon[2] == 'n' #夜の場合
      moji = "\u{1F31F}"
    else
      case icon
      when '01d' #晴れ
        moji = "\u{2600}"
      when '02d' #晴れ+曇り
        moji = "\u{26C5}"
      when '03d' #曇り
        moji = "\u{2601}"
      when '04d' #曇り
        moji = "\u{2601}"
      when '09d' #小雨
        moji = "\u{1F302}"
      when '10d' #雨
        moji = "\u{2614}"
      when '11d' #雷
        moji = "\u{26A1}"
      when '13d' #雪
        moji = "\u{2744}"
      when '50d' #霧
        moji = "\u{1F301}"
      else
        moji = "\u{2600}"
      end
    end

    moji
  end
end
