require "nokogiri"
require "open-uri"
require "pry"
require "csv"
require "erb"

class FreeEmailSitesScraper
  SCRAPE_TARGET = "https://knowledge.hubspot.com/forms/what-domains-are-blocked-when-using-the-forms-email-domains-to-block-feature"
  BODY_SELECTOR = ".post-body p"
  PARAGRAPHS_TO_SKIP = 4

  attr_accessor :emails

  def initialize
    html = open(SCRAPE_TARGET)
    doc = Nokogiri::HTML(html)
    body = locate_body(doc)
    @emails = scrape_emails(body)
  end

  def to_txt(file)
    File.open(file, "w") do |f|
      @emails.each do |email|
        f.puts email
      end
    end

  end

  def to_ruby(file)
    ruby_code = ERB.new(ruby_template).result(binding)
    File.open(file, "w") { |f| f.write ruby_code }
  end

  private 

  def locate_body(doc)
    doc.at_css(BODY_SELECTOR)
  end

  def scrape_emails(body)
    cursor = body
    for i in 1..PARAGRAPHS_TO_SKIP
      cursor = cursor.next_sibling()
    end
    emails = select_and_convert_emails(cursor)
  end

  def select_and_convert_emails(cursor)
    cursor = cursor.children.select {|o| o.is_a?(Nokogiri::XML::Text)}
    cursor = cursor.map {|xml| xml.text}
  end

  def ruby_template
    %{
      free_email_providers = ["<%= @emails.compact.reject(&:empty?).join('","') %>"]
    }
  end

end
