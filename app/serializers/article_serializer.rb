class ArticleSerializer
  attr_reader :article

  def initialize(article)
    @article = article
  end

  def as_json
    {
      article: {
        id: article.id.to_s,
        type: 'article',
        attributes: {
          title: article.title,
        }
      }
    }
  end
end