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

venue1 = Venue.create(name: "Guaranteed Rate Field", img_url: "http://www.ballparksofbaseball.com/wp-content/uploads/2016/03/uscell_topv2.jpg", city: "Chicago", state: "IL", country: "USA")

event1 = Event.create(title: "Cubs @ Sox", date:Date.parse('31-7-2017'), description: "Baseball game", venue_id: 1, category_id: 1)

subcategory1 = SubCategory.create(sub_category:"Baseball")

performer1 = Performer.create(name:"Chicago Cubs", sub_category_id: 1)
performer2 = Performer.create(name:"Chicago White Sox", sub_category_id: 1)



events_performer1 = EventsPerformer.create(performer_id: 1, event_id: 1)
events_performer2 = EventsPerformer.create(performer_id: 2, event_id: 1)

#--------------------------------------------------------------------------------------------

category2 = Category.create(category: "Concert")

venue2 = Venue.create(name: "Madison Square Garden", img_url: "http://www.themadisonsquaregardencompany.com/content/dam/themadisonsquaregardencompany/brandsImg/brandsPageImg/MSG_120413_156W.jpg", city: "New York ", state: "NY", country: "USA")

event2 = Event.create(title: "Kanye West World Tour", date:Date.parse('31-10-2017'), description: "Hip-Hop/Rap Concert featuring Kendrick Lamar", venue_id: 2, category_id: 2)

subcategory2 = SubCategory.create(sub_category:"Hip-Hop/Rap")

performer3 = Performer.create(name:"Kanye West", sub_category_id: 2)
performer4 = Performer.create(name:"Kendrick Lamar", sub_category_id: 2)



events_performer3 = EventsPerformer.create(performer_id: 3, event_id: 2)
events_performer4 = EventsPerformer.create(performer_id: 4, event_id: 2)

#--------------------------------------------------------------------------------------------

category3 = Category.create(category: "Theatre/Comedy")

venue3 = Venue.create(name: "Hollywood Bowl", img_url: "https://i.gse.io/gse_media/114/6/1406312149-venue-hollywoodbowl.jpg?p=1", city: "Los Angeles", state: "CA", country: "USA")

event3 = Event.create(title: "Louis C.K Comedy Tour", date:Date.parse('05-11-2017'), description: "Comedy Tour featuring Dave Chappelle", venue_id: 3, category_id: 3)

subcategory3 = SubCategory.create(sub_category:"Comedy")

performer5 = Performer.create(name:"Louis C.K", sub_category_id: 3)
performer6 = Performer.create(name:"Dave Chappelle", sub_category_id: 3)



events_performer5 = EventsPerformer.create(performer_id: 5, event_id: 3)
events_performer6 = EventsPerformer.create(performer_id: 6, event_id: 3)

#--------------------------------------------------------------------------------------------

event4 = Event.create(title: "Banana Phone: Realm of Chaos Tour", date:Date.parse('01-8-2017'), description: "Come and see the triumphant return of the DEATH METAL Banana Phone!", venue_id: 2, category_id: 2)

subcategory4 = SubCategory.create(sub_category:"Death Metal for Kidz")

performer7 = Performer.create(name:"Raffi Cavoukian", sub_category_id: 4)

events_performer7 = EventsPerformer.create(performer_id: 7, event_id: 4)

#--------------------------------------------------------------------------------------------
event5 = Event.create(title: "Election 2016: The Musical", date:Date.parse('01-8-2017'), description: "Nominated for zero Tony awards! Make sure to see it quick, opening night might also be closing night!", venue_id: 3, category_id: 3)

subcategory5 = SubCategory.create(sub_category:"Musical/Theater")

performer8 = Performer.create(name:"Betty White", sub_category_id: 4)
performer9 = Performer.create(name:"Justin Timberlake", sub_category_id: 4)
performer10 = Performer.create(name:"Forrest Whittaker", sub_category_id: 4)

events_performer8 = EventsPerformer.create(performer_id: 8, event_id: 5)
events_performer9 = EventsPerformer.create(performer_id: 9, event_id: 5)
events_performer10 = EventsPerformer.create(performer_id: 10, event_id: 5)

#--------------------------------------------------------------------------------------------
event6 = Event.create(title: "Calvinball 2017 World Championship", date:Date.parse('01-8-2017'), description: "Championship of the worlds greatest no-rules game!", venue_id: 1, category_id: 1)

subcategory5 = SubCategory.create(sub_category:"CalvinBall")

performer11 = Performer.create(name:"The Bay City Rollers", sub_category_id: 1)
performer12 = Performer.create(name:"Manitoba Mandibles", sub_category_id: 1)

events_performer11 = EventsPerformer.create(performer_id: 11, event_id: 6)
events_performer12 = EventsPerformer.create(performer_id: 12, event_id: 6)