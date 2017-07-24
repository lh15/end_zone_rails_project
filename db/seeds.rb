# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# create categories
# create sub_categories
# create events
# create venues
# creat performers
# 

category1 = Category.create(category: "Sports")

venue1 = Venue.create(name: "U.S. Cellular Field", img_url: "http://www.ballparksofbaseball.com/wp-content/uploads/2016/03/uscell_topv2.jpg", city: "Chicago", state: "IL", country: "USA")

event1 = Event.create(title: "Cubs @ Sox", date:Date.parse('31-7-2017'), description: "Baseball game", venue_id: 1, category_id: 1)

subcategory1 = SubCategory.create(sub_category:"Baseball")

performer1 = Performer.create(name:"Chicago Cubs", sub_category_id: 1)
performer2 = Performer.create(name:"Chicago White Sox", sub_category_id: 1)



events_performer1 = EventsPerformer.create(performer_id: 1, event_id: 1)
events_performer2 = EventsPerformer.create(performer_id: 2, event_id: 1)