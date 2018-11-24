# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


     classified = Classified.find(1)
     classified.images = [
       remote_photo_url: "https://s3.amazonaws.com/sahara-market/uploads/classified/images/25/dummy-100x100-Anemone.jpg",
       remote_photo_url: "https://s3.amazonaws.com/sahara-market/uploads/classified/images/25/bullseye-monster-grape-3.jpg"
      ]
      classified.save!

      classified = Classified.find(2)
      classified.images = [
        remote_photo_url: "https://s3.amazonaws.com/sahara-market/uploads/classified/images/25/dummy-100x100-MandarinOrange.jpg",
        remote_photo_url: "https://s3.amazonaws.com/sahara-market/uploads/classified/images/25/dummy-100x100-Stones.jpg"
       ]
       classified.save!

       classified = Classified.find(3)
       classified.images = [
        remote_photo_url: "https://s3.amazonaws.com/sahara-market/uploads/classified/images/25/dummy-200x200-Bottles.jpg",
        remote_photo_url: "https://s3.amazonaws.com/sahara-market/uploads/classified/images/25/dummy-200x200-AzukiBeans.jpg"
        ]
        classified.save!

        classified = Classified.find(4)
        classified.images = [
          remote_photo_url: "https://s3.amazonaws.com/sahara-market/uploads/classified/images/25/dummy-200x200-Sheep.jpg",
          remote_photo_url: "https://s3.amazonaws.com/sahara-market/uploads/classified/images/25/dummy-315x560-Flamingo.jpg"
         ]
         classified.save!
    

         classified = Classified.find(5)
         classified.images = [
          remote_photo_url: "https://s3.amazonaws.com/sahara-market/uploads/classified/images/25/dummy-315x560-Orange.jpg",
          remote_photo_url: "https://s3.amazonaws.com/sahara-market/uploads/classified/images/25/dummy-315x560-Utrecht.jpg"
          ]
          classified.save!


          classified = Classified.find(6)
          classified.images = [
            remote_photo_url: "https://s3.amazonaws.com/sahara-market/uploads/classified/images/25/dummy-375x500-CetoniaAurata.jpg",
            remote_photo_url: "https://s3.amazonaws.com/sahara-market/uploads/classified/images/25/dummy-375x500-Goemetry.jpg"
           ]
           classified.save!

    classified = Classified.find(7)
     classified.images = [
      remote_photo_url: "https://s3.amazonaws.com/sahara-market/uploads/classified/images/25/dummy-375x500-Strawberry.jpg",
      remote_photo_url: "https://s3.amazonaws.com/sahara-market/uploads/classified/images/25/dummy-454x280-Comb.jpg"
      ]
      classified.save!


      classified = Classified.find(8)
      classified.images = [
        remote_photo_url: "https://s3.amazonaws.com/sahara-market/uploads/classified/images/25/dummy-454x280-Fish.jpg",
        remote_photo_url: "https://s3.amazonaws.com/sahara-market/uploads/classified/images/25/dummy-454x280-Snake.jpg"
       ]
       classified.save!
    

       classified = Classified.find(14)
       classified.images = [
        remote_photo_url: "https://s3.amazonaws.com/sahara-market/uploads/classified/images/25/dummy-480x270-Butterfly.jpg",
        remote_photo_url: "https://s3.amazonaws.com/sahara-market/uploads/classified/images/25/dummy-480x270-DesiccationCracks.jpg"
        ]
        classified.save!

        classified = Classified.find(15)
        classified.images = [
          remote_photo_url: "https://s3.amazonaws.com/sahara-market/uploads/classified/images/25/dummy-480x270-FrozenRaspberry.jpg",
          remote_photo_url: "https://s3.amazonaws.com/sahara-market/uploads/classified/images/25/dummy-576x1024-Lizard.jpg"
         ]
         classified.save!