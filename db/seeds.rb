# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



url = RestClient.get('http://tropicalfruitandveg.com/api/tfvjsonapi.php?search=all')
@plant = JSON.parse(url).shift[1]


plants = @plant.each do |plant|
    Plant.create("tfvname" => plant["tfvname"], "botname" => plant["botname"], "othname" => plant["othname"], "image_url" => plant["imageurl"])
end



