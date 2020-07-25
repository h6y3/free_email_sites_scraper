# Free Email Sites Scraper

How do you tell the difference between a corporate email and a consumer email?  One way is to determine if the user is using a free email provider!

The most comprehensive list of free email providers I can find on the Internet is on [HubSpot's knowledgebase of what domains they block](https://knowledge.hubspot.com/forms/what-domains-are-blocked-when-using-the-forms-email-domains-to-block-feature).  This repo contains a small class that simply scrapes Hubspots page and provides a few utilities so you can either use the data in your own code, or use the class and integrate it into your runtime environment.  Now, you can filter the business emails out and target those customers directly.

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
