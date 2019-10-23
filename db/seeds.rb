
require 'faker'

p1 = Producer.create(name: "Metro Boomin")
p2 = Producer.create(name: "Pierre Bourne")
p3 = Producer.create(name: "Dr. Dre")
p4 = Producer.create(name: "40 Noah")
p5 = Producer.create(name: "Kanye West")
p6 = Producer.create(name: "Pharrell")


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





