# Free Email Sites Scraper

Often times sites need to understand when someone has signed-up using a free email which can indicate if the user is a consumer versus a business with a proper domain.  

The most comprehensive list I can find on the Internet is on [HubSpot's knowledgebase of what domains they block](https://knowledge.hubspot.com/forms/what-domains-are-blocked-when-using-the-forms-email-domains-to-block-feature).

## Usage

```ruby
scraper = FreeEmailSitesScraper.new
puts scraper.emails #array of string emails
```
