puts "Creating companies..."
Company.create(name: "Google", founding_year: 1998)
Company.create(name: "Facebook", founding_year: 2004)
Company.create(name: "Dunder Mifflin", founding_year: 2002)
Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
Dev.create(name: "Rick")
Dev.create(name: "Morty")
Dev.create(name: "Mr. Meseeks")
Dev.create(name: "Gazorpazop")

puts "Creating freebies..."

# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here
# db/seeds.rb

dev1 = Dev.create(name: 'John')
dev2 = Dev.create(name: 'Jane')

company1 = Company.create(name: 'Acme Corp', founding_year: 2000)
company2 = Company.create(name: 'Globex', founding_year: 1995)

freebie1 = Freebie.create(item_name: 'T-shirt', value: 10, dev: dev1, company: company1)
freebie2 = Freebie.create(item_name: 'Mug', value: 5, dev: dev2, company: company2)
freebie3 = Freebie.create(item_name: 'Pen', value: 2, dev: dev1, company: company2)



puts "Seeding done!"
