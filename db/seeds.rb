# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Category.create ([{ :name => 'Technology', :slug => 'technology', :description => "" },
				{ :name => 'Food', :slug => 'food', :description => "" },
				{ :name => 'Entertainment', :slug => 'entertainment', :description => "" },
				{ :name => 'Art', :slug => 'art', :description => "" },
				{ :name => 'Industry', :slug => 'industry', :description => "" },
				{ :name => 'Communitarian', :slug => 'communitarian', :description => "" },
				{ :name => 'Education', :slug => 'education', :description => "" },
				{ :name => 'Health', :slug => 'health', :description => "" }])



Question.create ([{ :subject => "How do designers at Twitter, Facebook, and other tech companies balance their design instinct and judgment vs. the engineer's impulse to use A/B test data for every design change?", :question => "I'm referring specifically to environments where every pixel change, line height, shades of color, etc are A/B tested and most decisions are made on big data... as a designer, how do you navigate these environments? How do you stay sane? Does it make you doubt your design judgement, or doubt the effectiveness of big data? How do you get across the idea that design is more than the sum of it's parts?", :category_id => "1", :is_solved => true, :slug => "How-do-designers-at-Twitter-Facebook-and-other-tech-companies-balance-their-design-instinct-and-judgment-vs-the-engineers-impulse-to-use-A-B-test-data-for-every-design-change", :user_id => "1" },
				{ :subject => "What are the coolest startup culture hacks you've heard of?", :question => "Culture hacks are the clever, quirky little things companies do that makes them who they are.", :category_id => "1", :is_solved => true, :slug => "What-are-the-coolest-startup-culture-hacks-youve-heard-of", :user_id => "1" },
				{ :subject => "If you were able to download a perfect copy of your consciousness into a computer, would you still be alive after your physical body dies?", :question => "Would you feel you've achieved a significant step toward immortality?  Or would the 'you' that matters die with your body? </br> Edit: I realize there's no definitive answer to this question.  I'm more interested in your opinion; namely, how satisfied would you feel, knowing that a perfect copy of yourself continues after your body dies.", :category_id => "1", :is_solved => true, :slug => "If-you-were-able-to-download-a-perfect-copy-of-your-consciousness-into-a-computer-would-you-still-be-alive-after-your-physical-body-dies", :user_id => "1" }])



Location.create ([{ :name => "Ariana", :slug => "ariana", :country_id => 1},
				{ :name => "Beja", :slug => "beja", :country_id => 1},
				{ :name => "Ben Arous", :slug => "ben-arous", :country_id => 1},
				{ :name => "Bizerte", :slug => "bizerte", :country_id => 1},
				{ :name => "Gabes", :slug => "gabes", :country_id => 1},
				{ :name => "Gafsa", :slug => "gafsa", :country_id => 1},
				{ :name => "Jendouba", :slug => "jendouba", :country_id => 1},
				{ :name => "Kairouan", :slug => "kairouan", :country_id => 1},
				{ :name => "Kasserine", :slug => "kasserine", :country_id => 1},
				{ :name => "Kebili", :slug => "kebili", :country_id => 1},
				{ :name => "Kef", :slug => "kef", :country_id => 1},
				{ :name => "Mahdia", :slug => "mahdia", :country_id => 1},
				{ :name => "Manouba", :slug => "manouba", :country_id => 1},
				{ :name => "Medenine", :slug => "medenine", :country_id => 1},
				{ :name => "Monastir", :slug => "monastir", :country_id => 1},
				{ :name => "Nabeul", :slug => "nabeul", :country_id => 1},
				{ :name => "Sfax", :slug => "sfax", :country_id => 1},
				{ :name => "Sidi Bouzid", :slug => "sidi-bouzid", :country_id => 1},
				{ :name => "Siliana", :slug => "siliana", :country_id => 1},
				{ :name => "Sousse", :slug => "sousse", :country_id => 1},
				{ :name => "Tataouine", :slug => "tatouine", :country_id => 1},
				{ :name => "Tozeur", :slug => "tozeur", :country_id => 1},
				{ :name => "Tunis", :slug => "tunis", :country_id => 1},
				{ :name => "Zaghouan", :slug => "zaghouan", :country_id => 1}])

