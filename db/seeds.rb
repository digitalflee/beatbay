
require 'faker'

p1 = Producer.create(name: "Metro Boomin", img_url: "https://i.pinimg.com/originals/32/75/d6/3275d603fc9cb898b0da3431e0a0cabd.jpg")
p2 = Producer.create(name: "Pierre Bourne", img_url: "https://townsquare.media/site/812/files/2017/04/pierre-bourne.jpg?w=980&q=75")
p3 = Producer.create(name: "Dr. Dre", img_url: "https://i.ytimg.com/vi/Z7of44J7ARc/maxresdefault.jpg")
p4 = Producer.create(name: "40 Noah", img_url: "https://i.ytimg.com/vi/cl23qnQQ3J0/maxresdefault.jpg")
p5 = Producer.create(name: "Kanye West", img_url: "https://centralsauce.com/wp-content/uploads/2018/04/kanyestudio.png")
p6 = Producer.create(name: "Pharrell", img_url: "https://creativetechlab.com/wp-content/uploads/2016/08/pharell-in-studio.jpg")


20.times do 
    Artist.create(name: Faker::Name.name, email: Faker::Internet.email, password: Faker::Internet.password)
end 


5.times do 
Beat.create(name: Faker::CryptoCoin.coin_name, producer: p1, price: 100)
end 

5.times do 
Beat.create(name: Faker::CryptoCoin.coin_name, producer: p2, price: 300 )
end 

5.times do 
Beat.create(name: Faker::CryptoCoin.coin_name, producer: p3, price: 700)
end 

5.times do 
Beat.create(name: Faker::CryptoCoin.coin_name, producer: p4, price: 1100)
end 

5.times do 
Beat.create(name: Faker::CryptoCoin.coin_name, producer: p5, price: 2400)
end 

c1 = Contract.create(artist_id: 1, beat_id: 1)
c2 = Contract.create(artist_id: 2, beat_id: 2)
c3 = Contract.create(artist_id: 3, beat_id: 3)
c4 = Contract.create(artist_id: 4, beat_id: 4)
c5 = Contract.create(artist_id: 5, beat_id: 5)
c6 = Contract.create(artist_id: 6, beat_id: 6)
c7 = Contract.create(artist_id: 7, beat_id: 7)
c8 = Contract.create(artist_id: 8, beat_id: 8)
c9 = Contract.create(artist_id: 9, beat_id: 9)
c10 = Contract.create(artist_id: 10, beat_id: 10)
c11 = Contract.create(artist_id: 11, beat_id: 11)
c12 = Contract.create(artist_id: 12, beat_id: 12)
c13 = Contract.create(artist_id: 13, beat_id: 13)
c14 = Contract.create(artist_id: 14, beat_id: 14)
c15 = Contract.create(artist_id: 15, beat_id: 15)



# 15.times do
#     Contract.create(artist_id: Artist.all.sample.id, beat_id: Beat.all.sample.id, price: 2400)
# end 





