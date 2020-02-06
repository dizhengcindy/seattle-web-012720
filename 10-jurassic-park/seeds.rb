require_relative 'config/environment.rb'

#CREATE -> Create tables : Creating new information for the schema.
# DB.execute("CREATE TABLE dinosaurs(id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, age INTEGER, height INTEGER)")
# DB.execute("CREATE TABLE visitors(id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, age INTEGER, height INTEGER)")
# DB.execute("CREATE TABLE dinosaurs_visitors(id INTEGER PRIMARY KEY AUTOINCREMENT, dinosaur_id INTEGER, visitor_id INTEGER)")
# DB.execute("CREATE TABLE foods(id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT)")
# DB.execute("CREATE TABLE foods_visitors(id INTEGER PRIMARY KEY AUTOINCREMENT, food_id INTEGER, visitor_id INTEGER)")

10.times do
    #CREATE for our data
    # Visitor.new(Faker::FunnyName.name, Random.rand(100), Random.rand(6.0))
    sql = "INSERT INTO visitors(name, age, height) VALUES(?,?,?)"
    DB.execute(sql, Faker::FunnyName.name,Random.rand(100),Random.rand(6.0))
end

dinos = [ "Tyrannosaurus Rex", 
    "Triceratops", 
    "Velociraptor",
    "Stegosaurus",
    "Spinosaurus",
    "Archaeopteryx",
    "Brachiosaurus",
    "Allosaurus",
    "Apatosaurus",
    "Dilophosaurus",
]

dinos.each do |dino_name|
    #CREATE
    sql = "INSERT INTO dinosaurs(name, age, height) VALUES(?,?,?)"
    DB.execute(sql, dino_name , Random.rand(100000000), Random.rand(100.00))
    # Dinosaur.new(dino_name , Random.rand(100000000), Random.rand(100.00))
end

foods = ["hotdogs", "cotton_candy", "burgers", "fries", "fried_chicken"]
foods.each do |food_name|
    #CREATE
    sql = "INSERT INTO foods(name) VALUES(?)"
    DB.execute(sql, food_name)
    # Food.new(food_name)
end

binding.pry