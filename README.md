# Free Email Sites Scraper

Often times sites need to understand when someone has signed-up using a free email which can indicate if the user is a consumer versus a business with a proper domain.  

The most comprehensive list I can find on the Internet is on [HubSpot's knowledgebase of what domains they block](https://knowledge.hubspot.com/forms/what-domains-are-blocked-when-using-the-forms-email-domains-to-block-feature).

## Usage


### Using the library in code

```ruby
require './free_email_sites_scraper.rb'
scraper = FreeEmailSitesScraper.new
puts scraper.emails #array of string emails
```

### Generating a txt file (one email per line)

```ruby
require './free_email_sites_scraper.rb'

scraper = FreeEmailSitesScraper.new
scraper.to_txt("emails.txt") #write csv file
```

### Generating ruby code to a file (for copy-pasting, and hard-coding purposes)

```ruby
require './free_email_sites_scraper.rb'

scraper = FreeEmailSitesScraper.new
scraper.to_ruby("email_declaration.rb") #write an array declaration for hardcoding entries
```

## Files

- [emails.txt](emails.txt) - Sample txt file generated
- [emails_declaration.rb](emails_declaration.rb) - Sample ruby code file generated
- [sample.rb](sample.rb) - Sample code for usage