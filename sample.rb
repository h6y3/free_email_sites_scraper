require './free_email_sites_scraper.rb'

scraper = FreeEmailSitesScraper.new
puts scraper.emails #array of string emails

scraper.to_txt("emails.txt") #write txt file
scraper.to_ruby("email_declaration.rb") #write an array declaration for hardcoding entries
