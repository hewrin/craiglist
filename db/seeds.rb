
book1 = Category.create(:name => "Books")
clothes = Category.create(:name => "Clothes")


book1.posts.create(:name => "Game of Thrones", :input => "Good book" ,:secretkey => "#{(0...8).map { (65 + rand(26)).chr }.join}" ,:price => 27.99, :location => "Cyberjaya")

book1.posts.create(:name => "Clash of Kings", :input => "Meh" ,:secretkey => "#{(0...8).map { (65 + rand(26)).chr }.join}" ,:price => 29.99, :location => "Subang")

book1.posts.create(:name => "Storm of Swords", :input => "TLDR" ,:secretkey => "#{(0...8).map { (65 + rand(26)).chr }.join}" ,:price => 35.99, :location => "Petaling Jaya")


clothes.posts.create(:name => "T-Shirt", :input => "A T shirt with extra T" ,:secretkey => "#{(0...8).map { (65 + rand(26)).chr }.join}", :price => 19.99, :location => "Kuala Lumpur")




