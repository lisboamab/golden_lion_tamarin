class Coin < ApplicationRecord
  belongs_to :mining_type, optional: true #o 'optional: true' remove a obrigatoriedade do belongs_to
  before_validation :validate_url


  private

  def validate_url
    valid_url_regex = /\A#{URI::DEFAULT_PARSER.make_regexp(%w[http https])}\z/
    self.url_image = '' if url_image.blank? # Limpa o campo se estiver vazio
    errors.add(:url_image, 'invalid URL') unless url_image =~ valid_url_regex
  end
end
