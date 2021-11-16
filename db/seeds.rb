CategoryJoin.destroy_all
Category.destroy_all
BugItem.destroy_all

puts "Creating categories..."
category_names = ["UI", "Network", "Transit", "Combat", "Items"]
categories = category_names.map do |c|
  print "."
  Category.create(name: c)
end

puts "Creating bug items..."
b1 = BugItem.create(name: "Can't get onto boat", description: "I tried to get onto the boat and it didn't work!", priority: 3)
CategoryJoin.create(bug_item: b1, category: categories[2])

b2 = BugItem.create(name: "Lost two life petals", description: "When I died I lost two life petals", priority: 4)
CategoryJoin.create(bug_item: b2, category: categories[3])

b3 = BugItem.create(name: "Wasn't able to fight", description: "The fight didn't allow me to attack", priority: 5)
CategoryJoin.create(bug_item: b3, category: categories[3])
