module ApplicationHelper
  def default_meta_tags
    {
      site: 'FEEL WEATHER',
      separator: '',
      title: 'FEEL WEATHER',
      description: 'あなたのTwitter名をお天気と連動！',
      keywords: 'Twitter, 天気',
      canonical: 'http://tenki.popapp.me/',
      og: {
        title: :title,
        type: 'website',
        url: 'http://tenki.popapp.me/',
        image: image_url("tenki.jpeg"),
        site_name: :site,
        description: :description,
        locale: 'ja_JP'
      },
      twitter: {
        title: :title,
        site: '@sugiken_bike',
        card: 'summary',
        description: :description,
        image: image_url("tenki.jpeg"),
        url: :url
      }
    }
  end
end
