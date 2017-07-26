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
# create tickets

category1 = Category.create(category: "Sports")

venue1 = Venue.create(name: "Guaranteed Rate Field", img_url: "http://www.ballparksofbaseball.com/wp-content/uploads/2016/03/uscell_topv2.jpg", city: "Chicago", state: "IL", country: "USA")

event1 = Event.create(title: "Philosopher Soccer", date:Date.parse('31-10-2017'), description: "A battle of wits!", venue_id: 1, category_id: 1)

subcategory1 = SubCategory.create(sub_category:"Philosophy")

performer1 = Performer.create(name:"Aristotle", sub_category_id: 1, img_url: "https://s-media-cache-ak0.pinimg.com/originals/07/e3/fd/07e3fd9588e7d86d84f9395052a7e1fa.jpg")
performer2 = Performer.create(name:"Immanuel Kant", sub_category_id: 1, img_url: "http://www.notablebiographies.com/images/uewb_06_img0392.jpg")

user1 = User.create(first_name:"Admin", last_name: "Admin", email: "Thisisnotanemail@email.com", password_digest: "abc123", address: "123 Fake Street", phone_number: "222-222-2222")

ticket1 = Ticket.create(price:"40.00", seat_number:"1", section:"A", event_id: 1, seller_id: 1, sold: false)

events_performer1 = EventsPerformer.create(performer_id: 1, event_id: 1)
events_performer2 = EventsPerformer.create(performer_id: 2, event_id: 1)

#--------------------------------------------------------------------------------------------

category2 = Category.create(category: "Concert")

venue2 = Venue.create(name: "Madison Square Garden", img_url: "http://www.themadisonsquaregardencompany.com/content/dam/themadisonsquaregardencompany/brandsImg/brandsPageImg/MSG_120413_156W.jpg", city: "New York ", state: "NY", country: "USA")

event2 = Event.create(title: "A Thousand Angry Kazoos", date:Date.parse('09-10-2017'), description: "Have you ever wanted to hear a thousand angry kazoos?", venue_id: 2, category_id: 2)

subcategory2 = SubCategory.create(sub_category:"DubStep")

performer3 = Performer.create(name:"Mr Miller's Seventh Grade Band", sub_category_id: 2, img_url: "http://www.mccrackenband.com/images/2013symphonic.jpg")
performer4 = Performer.create(name:"Hans Zimmer", sub_category_id: 2, img_url: "https://cdn.vox-cdn.com/thumbor/PwqEsKQqdyYluBk_uZJ1-no3Ur8=/0x0:3600x2400/1200x800/filters:focal(993x314:1569x890)/cdn.vox-cdn.com/uploads/chorus_image/image/55876677/669252520.0.jpg")

ticket2 = Ticket.create(price:"40.00", seat_number:"1", section:"A", event_id: 2, seller_id: 1, sold: false)

events_performer3 = EventsPerformer.create(performer_id: 3, event_id: 2)
events_performer4 = EventsPerformer.create(performer_id: 4, event_id: 2)

#--------------------------------------------------------------------------------------------

category3 = Category.create(category: "Theatre/Comedy")

venue3 = Venue.create(name: "Hollywood Bowl", img_url: "https://i.gse.io/gse_media/114/6/1406312149-venue-hollywoodbowl.jpg?p=1", city: "Los Angeles", state: "CA", country: "USA")

event3 = Event.create(title: "Mystery Science Theatre 3000 Live!", date:Date.parse('05-11-2018'), description: "Come and see MST3K Live!", venue_id: 3, category_id: 3)

subcategory3 = SubCategory.create(sub_category:"Comedy")

performer5 = Performer.create(name:"Tom Servo", sub_category_id: 3, img_url: "https://media3.giphy.com/media/T3yy5jxxetHfq/200_s.gif")
performer6 = Performer.create(name:"Crow T Robot", sub_category_id: 3, img_url: "https://vignette2.wikia.nocookie.net/mst3k/images/1/12/Crowsolo.jpg/revision/latest?cb=20070115040140")

ticket3 = Ticket.create(price:"40.00", seat_number:"1", section:"A", event_id: 3, seller_id: 1, sold: false)

events_performer5 = EventsPerformer.create(performer_id: 5, event_id: 3)
events_performer6 = EventsPerformer.create(performer_id: 6, event_id: 3)

#--------------------------------------------------------------------------------------------

event4 = Event.create(title: "Banana Phone: Realm of Chaos Tour", date:Date.parse('01-8-2017'), description: "Come and see the triumphant return of the DEATH METAL Banana Phone!", venue_id: 2, category_id: 2)

subcategory4 = SubCategory.create(sub_category:"Death Metal for Kidz")

performer7 = Performer.create(name:"Raffi Cavoukian", sub_category_id: 4, img_url: "https://media2.wnyc.org/i/1200/627/l/80/1/1656156_635912839804544_363301861_n.jpg")

ticket4 = Ticket.create(price:"40.00", seat_number:"1", section:"A", event_id: 4, seller_id: 1, sold: false)

events_performer7 = EventsPerformer.create(performer_id: 7, event_id: 4)

#--------------------------------------------------------------------------------------------
event5 = Event.create(title: "Election 2016: The Musical", date:Date.parse('01-8-2017'), description: "Nominated for zero Tony awards! Make sure to see it quick, opening night might also be closing night!", venue_id: 3, category_id: 3)

subcategory5 = SubCategory.create(sub_category:"Musical/Theater")

performer8 = Performer.create(name:"Betty White", sub_category_id: 4, img_url: "https://pbs.twimg.com/profile_images/1125351141/BettyWhite1.jpg")
performer9 = Performer.create(name:"Justin Timberlake", sub_category_id: 4, img_url: "http://cdn-wpmsa.defymedia.com/wp-content/uploads/sites/3/2015/01/justin-timberlake-ramen-noodles-birthday-collage.jpg")
performer10 = Performer.create(name:"Forest Whitaker", sub_category_id: 4, img_url: "https://vignette1.wikia.nocookie.net/starwars/images/b/bf/Forest_Whitaker.jpg/revision/latest?cb=20150815235652")

ticket5 = Ticket.create(price:"40.00", seat_number:"1", section:"A", event_id: 5, seller_id: 1, sold: false)

events_performer8 = EventsPerformer.create(performer_id: 8, event_id: 5)
events_performer9 = EventsPerformer.create(performer_id: 9, event_id: 5)
events_performer10 = EventsPerformer.create(performer_id: 10, event_id: 5)

#--------------------------------------------------------------------------------------------
event6 = Event.create(title: "Calvinball 2017 World Championship", date:Date.parse('01-8-2017'), description: "Championship of the worlds greatest no-rules game!", venue_id: 1, category_id: 1)

subcategory5 = SubCategory.create(sub_category:"CalvinBall")

performer11 = Performer.create(name:"The Bay City Rollers", sub_category_id: 1, img_url: "http://img2.thejournal.ie/article/1234380/river?version=1234395&width=630")
performer12 = Performer.create(name:"Manitoba Mandibles", sub_category_id: 1, img_url: "https://thumb7.shutterstock.com/display_pic_with_logo/190240/599847629/stock-vector-open-mouth-with-teeth-screaming-singing-shouting-yawning-mouth-jaw-drop-t-shirt-print-design-599847629.jpg")

ticket6 = Ticket.create(price:"40.00", seat_number:"1", section:"A", event_id: 6, seller_id: 1, sold: false)

events_performer11 = EventsPerformer.create(performer_id: 11, event_id: 6)
events_performer12 = EventsPerformer.create(performer_id: 12, event_id: 6)