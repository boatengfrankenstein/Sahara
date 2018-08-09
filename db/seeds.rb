# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


     classified = Classified.find(1)
     classified.images = [
        Pathname.new("app/assets/images/1.jpg").open,
        Pathname.new("app/assets/images/2.jpg").open
      ]
      classified.save!

      classified = Classified.find(2)
      classified.images = [
         Pathname.new("app/assets/images/3.jpg").open,
         Pathname.new("app/assets/images/4.jpg").open
       ]
       classified.save!

       classified = Classified.find(3)
       classified.images = [
          Pathname.new("app/assets/images/5.jpg").open,
          Pathname.new("app/assets/images/6.jpg").open
        ]
        classified.save!

        classified = Classified.find(4)
        classified.images = [
           Pathname.new("app/assets/images/7.jpg").open,
           Pathname.new("app/assets/images/8.jpg").open
         ]
         classified.save!
    

         classified = Classified.find(5)
         classified.images = [
            Pathname.new("app/assets/images/6.jpg").open,
            Pathname.new("app/assets/images/7.jpg").open
          ]
          classified.save!


          classified = Classified.find(6)
          classified.images = [
             Pathname.new("app/assets/images/8.jpg").open,
             Pathname.new("app/assets/images/9.jpg").open
           ]
           classified.save!

    classified = Classified.find(7)
     classified.images = [
        Pathname.new("app/assets/images/10.jpg").open,
        Pathname.new("app/assets/images/11.jpg").open
      ]
      classified.save!


      classified = Classified.find(8)
      classified.images = [
         Pathname.new("app/assets/images/12.jpg").open,
         Pathname.new("app/assets/images/13.jpg").open
       ]
       classified.save!
    

       classified = Classified.find(14)
       classified.images = [
          Pathname.new("app/assets/images/14.jpg").open,
          Pathname.new("app/assets/images/15.jpg").open
        ]
        classified.save!

        classified = Classified.find(15)
        classified.images = [
           Pathname.new("app/assets/images/16.jpg").open,
           Pathname.new("app/assets/images/17.jpg").open
         ]
         classified.save!