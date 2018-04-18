require 'net/http'
require 'uri'
require 'json'

class Tenki

  attr_accessor :not_found

  def initialize(prefecture_id)
    prefecture = Prefecture.find(prefecture_id).capital_name
    uri = URI.parse("http://api.openweathermap.org/data/2.5/weather?q=#{prefecture}&appid=9c93238d31dd0302c51d587cb1ec6b21")

    json = Net::HTTP.get(uri)
    @result = JSON.parse(json)
    p @result

    @not_found = false
    if @result['message'] == 'city not found'
      @not_found = true
      p prefecture_id.to_s + 'は対応しておりません。'
    end
  end

  def now
    @result['weather'][0]['main']
  end

  def icon
    @result['weather'][0]['icon']
  end

  def weather_id
    @result['weather'][0]['id']
  end

  def atmosphere_emoji
    emoji = ''
    case @result['weather'][0]['id']
    when 781
      emoji = "\u{1F300}"
    when 701
      emoji = "\u{2614}"
    when 741
      emoji = "\u{2601}"
    else
      emoji = "\u{1F301}"
    end

    emoji
  end

  def emoji
    moji = ''
    case icon[0..1]
    when '01' #晴れClear
      if icon[2] == 'n'
        moji = "\u{1F31F}"
      else
        moji = "\u{2600}"
      end
    when '02' #晴れ+曇りClouds
      moji = "\u{26C5}"
    when '03' #曇りClouds
      moji = "\u{2601}"
    when '04' #曇りClouds
      moji = "\u{2601}"
    when '09' #小雨Drizzle/Rain
      moji = "\u{2614}"
    when '10' #雨Rain
      moji = "\u{1F327}"
    when '11' #雷Thunderstorm
      moji = "\u{26C8}"
    when '13' #雪Snow/freezing rain
      moji = "\u{2744}"
    when '50' #霧/Atmosphere
      moji = atmosphere_emoji
    else
      moji = "\u{2600}"
    end

    moji
  end

  def self.test_prefecture
    Prefecture.all.each do |prefecture|
      uri = URI.parse("http://api.openweathermap.org/data/2.5/weather?q=#{prefecture.capital_name}&appid=9c93238d31dd0302c51d587cb1ec6b21")

      json = Net::HTTP.get(uri)
      @result = JSON.parse(json)
      p @result

      sleep(1)
    end
  end

end
