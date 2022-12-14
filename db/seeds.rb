# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
puts "Deleting seeds..."
User.destroy_all
DogProfile.destroy_all
Decision.destroy_all

puts "Seeding users..."
u1 = User.create(username: "mars123", password: "ilovefood")
u2 = User.create(username: "olive456", password: "ihatecats")
u3 = User.create(username: "jasper333", password: "iamnervous")
u4 = User.create(username: "puffdaddy", password: "goodboy123")
u5 = User.create(username: "lilguy22", password: "smallbutmighty")
u6 = User.create(username: "mandypoo", password: "cuite72")
u7 = User.create(username: "lucky777", password: "toysrule")
u8 = User.create(username: "OneNightOnly", password: "ilikeass")
u9 = User.create(username: "PeterPumpkinEater", password: "thanksgiving")
u10 = User.create(username: "SplashTime", password: "letsplay")
u11 = User.create(username: "SamIAm", password: "itsyerboy")
u12 = User.create(username: "MitsyAintBitsy", password: "letsdoforever")
u13 = User.create(username: "MasterOfNone", password: "masterful")
u14 = User.create(username: "CandyCoin", password: "feedmetreats")
u15 = User.create(username: "CherryPie", password: "cherrypiecrust")
u16 = User.create(username: "WelcomeToDenver", password: "superman")
u17 = User.create(username: "PennyWise", password: "piggybank")
u18 = User.create(username: "Lilypad", password: "mypondisready")
u19 = User.create(username: "DandyFine", password: "letsplayaround")
u20 = User.create(username: "RedHot", password: "ticklemeelmo")
u21 = User.create(username: "SmokinGun", password: "shooters")
u22 = User.create(username: "MoreForIgor", password: "bringmelove")
u23 = User.create(username: "TurtleMan", password: "friends")
u24 = User.create(username: "GoldieHawn", password: "smallisbig")
u25 = User.create(username: "LadyInRed", password: "ladylive")
u26 = User.create(username: "DaddyFred", password: "bestman")
u27 = User.create(username: "CandyMan", password: "oneatatime")
u28 = User.create(username: "ChuckyCheese", password: "timetochill")
u29 = User.create(username: "MisterTwitch", password: "letsgetiton")
u30 = User.create(username: "BeYourChief", password: "chiefdom")
u31 = User.create(username: "OneEyedWillie", password: "myboat")
u32 = User.create(username: "MillyKins", password: "getrowdy")
u33 = User.create(username: "BrynGrin", password: "allgood")
u34 = User.create(username: "LunaGirl", password: "moonsover")
u35 = User.create(username: "YourMama", password: "takeitaway")
u36 = User.create(username: "FancyPants", password: "playingaround")
u37 = User.create(username: "SpeedySmudge", password: "hurryup")
puts "??? Done seeding profiles!"

puts "Seeding dog profiles..."
d1 = DogProfile.create(
 user_id: u1.id,
 name: "Mars",
 image_url:"https://user-images.githubusercontent.com/72359686/189720226-377f97df-4c21-4977-b710-a9b62bc2751e.jpg",
 bio: "I love my mom Laura, food, long naps and swimming. Toy destroyer. Looking for a good time.",
 sex: "male",
 age: 4,
 location: "San Francisco, CA",
 breed: "Labrador",
 size: "large",
 looking_for: "relationship",
 has_kids: false,
 wants_kids: false)

 d2 = DogProfile.create(
 user_id: u2.id,
 name: "Olive",
 image_url:"https://user-images.githubusercontent.com/72359686/189722510-06e11231-53fa-41bc-9e18-536b71733c77.jpeg",
 bio: "I love my mom Danna, cuddles and hate cats.",
 sex: "female",
 age: 1,
 location: "Denver, CO",
 breed: "Labrador",
 size: "large",
 looking_for: "friendship",
 has_kids: false,
 wants_kids: false)

 d3 = DogProfile.create(
 user_id: u3.id,
 name: "Jasper",
 image_url:"https://user-images.githubusercontent.com/72359686/189723640-e9423f9f-262d-4c8a-9f89-3636ec2aa948.jpeg",
 bio: "I give a good side eye and I'm always nervous and scared but maybe you won't make me nervous. My dad says I'm a bottom (whatever that means).",
 sex: "male",
 age: 2,
 location: "Longmont, CO",
 breed: "Cattle mix",
 size: "medium",
 looking_for: "friendship",
 has_kids: false,
 wants_kids: false)

 d4 = DogProfile.create(
 user_id: u4.id,
 name: "Cocoa Puffs",
 image_url: "https://user-images.githubusercontent.com/72359686/189724706-d8595e01-d6a9-4dce-92ac-eca5271f5cc6.jpg",
 bio: "Avid football player (I am a wide retreiver). I love my mom Mae. Im a good boy.",
 sex: "male",
 age: 3,
 location: "San Francisco, CA",
 breed: "Labrador",
 size: "large",
 looking_for: "relationship",
 has_kids: false,
 wants_kids: false)

 d5 = DogProfile.create(
 user_id: u5.id,
 name: "Dakota",
 image_url: "https://user-images.githubusercontent.com/72359686/189725315-d5908705-1691-459b-83fd-000eee9e4100.jpeg",
 bio: "I like snuggling and sleeping in my dad Garret's bed. Of mexican descent. Don't let my size deceive you.",
 sex: "male",
 age: 3,
 location: "Denver, CO",
 breed: "Chihuahua",
 size: "small",
 looking_for: "humpship",
 has_kids: false,
 wants_kids: true)

 d6 = DogProfile.create(
 user_id: u6.id,
 name: "Mandy",
 image_url: "https://user-images.githubusercontent.com/72359686/189756354-1ca88f77-8fb3-407c-905e-866f07fc5b47.jpg",
 bio: "I protect my human Nick while he codes in exchange for cuddles and walkies. Sometimes I help him code. Saved a woman from assault once. #dogswhocode",
 sex: "female",
 age: 2,
 location: "Denver, CO",
 breed: "South Texas Special",
 size: "medium",
 looking_for: "relationship",
 has_kids: false,
 wants_kids: false)

 d7 = DogProfile.create(
 user_id: u7.id,
 name: "Lucky",
 image_url: "https://user-images.githubusercontent.com/72359686/189757416-682d8a82-2b5b-4794-a967-0e6533c760e6.jpg",
 bio: "I barf quite frequently hope thats okay. I may be old but I'm a catch (and I like to catch). Swipe right-- today's your Lucky day. #pittiesmatter",
 sex: "male",
 age: 11,
 location: "San Luis Obispo, CA",
 breed: "pittie mix",
 size: "medium",
 looking_for: "relationship",
 has_kids: false,
 wants_kids: false)
 
 d8 = DogProfile.create(
   user_id: u8.id,
   name: "Lucky",
   image_url: "https://images.dog.ceo/breeds/pitbull/20190710_143021.jpg",
   bio: "loving, mellow, unexcitable",
   sex: "male",
   age: 6,
   location: "Honolulu",
   breed: "mutt",
   size: "large",
   looking_for: "humpship",
   has_kids: false,
   wants_kids: false)
 

d9 = DogProfile.create(
   user_id: u9.id,
   name: "Peter",
   image_url: "https://images.dog.ceo/breeds/terrier-toy/n02087046_7214.jpg",
   bio: "friendly, easily excitable, loves a large yard",
   sex: "male",
   age: 1,
   location: "Denver",
   breed: "terrier-toy",
   size: "small",
   looking_for: "humpship",
   has_kids: false,
   wants_kids: false)
 
d10 = DogProfile.create(
   user_id: u10.id,
   name: "Puddles",
   image_url: "https://images.dog.ceo/breeds/affenpinscher/n02110627_4433.jpg",
   bio: "busy, inquisitive, bold, stubborn, playful, mischievous",
   sex: "female",
   age: 1,
   location: "Miami",
   breed: "affenpinscher",
   size: "small",
   looking_for: "friendship",
   has_kids: false,
   wants_kids: false)
 
d11 = DogProfile.create(
   user_id: u11.id,
   name: "Sam",
   image_url: "https://images.dog.ceo/breeds/beagle/n02088364_13464.jpg",
   bio: "amiable, excellent with children, gentle, incredibly tolerant, and always ready to join in a game or adventure",
   sex: "male",
   age: 8,
   location: "Atlanta",
   breed: "beagle",
   size: "medium",
   looking_for: "relationship",
   has_kids: true,
   wants_kids: false)
 
d12 = DogProfile.create(
   user_id: u12.id,
   name: "Mitsy",
   image_url: "https://images.dog.ceo/breeds/boxer/n02108089_15432.jpg",
   bio: "playful, exuberant, inquisitive, attentive, devoted, perfect companion for an active partner",
   sex: "female",
   age: 2,
   location: "Milwaukee, WI",
   breed: "boxer",
   size: "large",
   looking_for: "relationship",
   has_kids: false,
   wants_kids: true)
 
d13 = DogProfile.create(
   user_id: u13.id,
   name: "Master",
   image_url: "https://images.dog.ceo/breeds/dane-great/n02109047_6008.jpg",
   bio: "courageous, friendly, and dependable, likes room to sleep and stretch out",
   sex: "male",
   age: 3,
   location: "Portland, OR",
   breed: "great dane",
   size: "extra large",
   looking_for: "relationship",
   has_kids: true,
   wants_kids: true)
 
d14 = DogProfile.create(
   user_id: u14.id,
   name: "Butterscotch",
   image_url: "https://images.dog.ceo/breeds/vizsla/n02100583_7467.jpg",
   bio: "highly energetic, great hiking partner, loves to exercise",
   sex: "female",
   age: 1,
   location: "Denver, CO",
   breed: "vizsla",
   size: "large",
   looking_for: "friendship",
   has_kids: false,
   wants_kids: true)
 
d15 = DogProfile.create(
   user_id: u15.id,
   name: "Cherry",
   image_url: "https://images.dog.ceo/breeds/mix/cherry.jpg",
   bio: "energetic, obedient, loyal, hates cats",
   sex: "female",
   age: 2,
   location: "San Diego, CA",
   breed: "mix",
   size: "medium",
   looking_for: "humpship",
   has_kids: false,
   wants_kids: false)
 
d16 = DogProfile.create(
   user_id: u16.id,
   name: "Denver",
   image_url: "https://images.dog.ceo/breeds/mix/Denver.jpg",
   bio: "extremely calm, obedient, and friendly, enjoys a laidback lifestyle",
   sex: "male",
   age: 4,
   location: "Lenexa, KS",
   breed: "",
   size: "mix",
   looking_for: "relationship",
   has_kids: true,
   wants_kids: true)
 
d17 = DogProfile.create(
   user_id: u17.id,
   name: "Penny",
   image_url: "https://images.dog.ceo/breeds/mix/penny.jpg",
   bio: "protective, steady, obedient",
   sex: "female",
   age: 3,
   location: "Santa Fe, New Mexico",
   breed: "mix",
   size: "large",
   looking_for: "friendship",
   has_kids: false,
   wants_kids: false)
 
d18 = DogProfile.create(
   user_id: u18.id,
   name: "Lilly",
   image_url: "https://images.dog.ceo/breeds/mix/lilypad2.jpg",
   bio: "energetic, eager, friendly, loves companionship",
   sex: "female",
   age: 3,
   location: "Milwaukee, WI",
   breed: "mix",
   size: "large",
   looking_for: "relationship",
   has_kids: false,
   wants_kids: true)
 
d19 = DogProfile.create(
   user_id: u19.id,
   name: "Dandelion",
   image_url: "https://images.dog.ceo/breeds/vizsla/n02100583_9956.jpg",
   bio: "nothing serious",
   sex: "female",
   age: 2,
   location: "Greenville, SC",
   breed: "vizsla",
   size: "large",
   looking_for: "humpship",
   has_kids: true,
   wants_kids: false)
 
d20 = DogProfile.create(
   user_id: u20.id,
   name: "Redhot",
   image_url: "https://images.dog.ceo/breeds/papillon/n02086910_485.jpg",
   bio: "loves cuddles, fun nights on the town, and planning for the future",
   sex: "female",
   age: 1,
   location: "Salem, MA",
   breed: "papillon",
   size: "small",
   looking_for: "relationship",
   has_kids: false,
   wants_kids: true)
 
d21 = DogProfile.create(
   user_id: u21.id,
   name: "Smokey",
   image_url: "https://images.dog.ceo/breeds/germanshepherd/n02106662_18065.jpg",
   bio: "likes a good chewing bone and a good partner for the night",
   sex: "male",
   age: 1,
   location: "Kansas City, KS",
   breed: "german shepherd",
   size: "large",
   looking_for: "humpship",
   has_kids: false,
   wants_kids: false)
 
d22 = DogProfile.create(
   user_id: u22.id,
   name: "Igor",
   image_url: "https://images.dog.ceo/breeds/eskimo/n02109961_3902.jpg",
   bio: "independent, bachelor, likes his nights full and his days empty",
   sex: "male",
   age: 4,
   location: "St Louis, MO",
   breed: "eskimo",
   size: "large",
   looking_for: "humpship",
   has_kids: false,
   wants_kids: false)
 
d23 = DogProfile.create(
   user_id: u23.id,
   name: "Turtle",
   image_url: "https://images.dog.ceo/breeds/basenji/n02110806_4216.jpg",
   bio: "likes a good slow stroll in the park",
   sex: "male",
   age: 2,
   location: "Salt lake City, UT",
   breed: "basenji",
   size: "medium",
   looking_for: "friendship",
   has_kids: false,
   wants_kids: true)
 
d24 = DogProfile.create(
   user_id: u24.id,
   name: "Goldie",
   image_url: "https://images.dog.ceo/breeds/dachshund/dachshund-3.jpg",
   bio: "already did the serious chapters, here for a good time",
   sex: "female",
   age: 3,
   location: "Bath, ME",
   breed: "dachshund",
   size: "small",
   looking_for: "humpship",
   has_kids: true,
   wants_kids: false)
 
d25 = DogProfile.create(
   user_id: u25.id,
   name: "Lady",
   image_url: "https://images.dog.ceo/breeds/dalmatian/cooper1.jpg",
   bio: "loves nights on the town and cuddles at home",
   sex: "female",
   age: 3,
   location: "Honolulu, HI",
   breed: "dalmatian",
   size: "large",
   looking_for: "relationship",
   has_kids: true,
   wants_kids: true)
 
d26 = DogProfile.create(
   user_id: u26.id,
   name: "Fred",
   image_url: "https://images.dog.ceo/breeds/rottweiler/n02106550_8776.jpg",
   bio: "love a good romp in a field, loyal and brave",
   sex: "male",
   age: 1,
   location: "Detroit, MI",
   breed: "rottweiler",
   size: "large",
   looking_for: "friendship",
   has_kids: false,
   wants_kids: true)
 
d27 = DogProfile.create(
   user_id: u27.id,
   name: "Pezz",
   image_url: "https://images.dog.ceo/breeds/poodle-toy/n02113624_2311.jpg",
   bio: "loves a good time, ready to pay your way",
   sex: "female",
   age: 2,
   location: "",
   breed: "toy poodle",
   size: "small",
   looking_for: "humpship",
   has_kids: false,
   wants_kids: false)
 
d28 = DogProfile.create(
   user_id: u28.id,
   name: "Chuck",
   image_url: "https://images.dog.ceo/breeds/spaniel-irish/n02102973_158.jpg",
   bio: "pretty independent, but sometimes I like to be held",
   sex: "male",
   age: 5,
   location: "Providence, RI",
   breed: "irish spaniel",
   size: "extra large",
   looking_for: "friendship",
   has_kids: true,
   wants_kids: false)
 
d29 = DogProfile.create(
   user_id: u29.id,
   name: "Mr Twitch",
   image_url: "https://images.dog.ceo/breeds/weimaraner/n02092339_2157.jpg",
   bio: "let's see if we can make magic",
   sex: "male",
   age: 1,
   location: "Austin, TX",
   breed: "weimaraner",
   size: "large",
   looking_for: "humpship",
   has_kids: false,
   wants_kids: false)
 
d30 = DogProfile.create(
   user_id: u30.id,
   name: "Chief",
   image_url: "https://images.dog.ceo/breeds/newfoundland/n02111277_4369.jpg",
   bio: "enjoys slow, leisurely walks downtown & a shared meal on a porch",
   sex: "male",
   age: 2,
   location: "Chattanooga, TN",
   breed: "newfoundland",
   size: "extra large",
   looking_for: "relationship",
   has_kids: true,
   wants_kids: true)
 
d31 = DogProfile.create(
   user_id: u31.id,
   name: "Willie",
   image_url: "https://thumbs.dreamstime.com/z/australian-shepherd-1123918.jpg",
   bio: "mellow, loyal, ready to settle down",
   sex: "male",
   age: 7,
   location: "Austin, TX",
   breed: "australian shepherd",
   size: "medium",
   looking_for: "relationship",
   has_kids: true,
   wants_kids: false)
 
d32 = DogProfile.create(
   user_id: u32.id,
   name: "Milly",
   image_url: "https://images.dog.ceo/breeds/pug/n02110958_12781.jpg",
   bio: "playful, mischievous, cuddly",
   sex: "female",
   age: 2,
   location: "Las Vegas, NV",
   breed: "pug",
   size: "small",
   looking_for: "humpship",
   has_kids: false,
   wants_kids: false)
 
d33 = DogProfile.create(
   user_id: u33.id,
   name: "Brynna",
   image_url: "https://images.dog.ceo/breeds/mix/Brina_2014_Italy.jpg",
   bio: "extremely cuddly, needs regular attention and interaction, loves people",
   sex: "female",
   age: 7,
   location: "Tampa, FL",
   breed: "mix",
   size: "large",
   looking_for: "friendship",
   has_kids: true,
   wants_kids: false)
 
d34 = DogProfile.create(
   user_id: u34.id,
   name: "Luna",
   image_url: "https://images.dog.ceo/breeds/mix/Annabelle11.jpeg",
   bio: "sweet, shy, playful",
   sex: "female",
   age: 4,
   location: "Dallas, TX",
   breed: "mix",
   size: "large",
   looking_for: "relationship",
   has_kids: true,
   wants_kids: true)
 
d35 = DogProfile.create(
   user_id: u35.id,
   name: "Mama",
   image_url: "https://images.dog.ceo/breeds/mix/cman.JPG",
   bio: "loves to play ball and run in the park",
   sex: "female",
   age: 5,
   location: "San Francisco, CA",
   breed: "mix",
   size: "medium",
   looking_for: "friendship",
   has_kids: true,
   wants_kids: false)
 
d36 = DogProfile.create(
   user_id: u36.id,
   name: "Fancy",
   image_url: "https://images.dog.ceo/breeds/mix/mikey.jpg",
   bio: "we don't need to ask each other's names",
   sex: "female",
   age: 2,
   location: "Shreveport, LA",
   breed: "mix",
   size: "medium",
   looking_for: "humpship",
   has_kids: false,
   wants_kids: false)
 
d37 = DogProfile.create(
   user_id: u37.id,
   name: "Smudge",
   image_url: "https://images.dog.ceo/breeds/mix/Polo.jpg",
   bio: "let's play, let's play, LET'S PLAY",
   sex: "male",
   age: 1,
   location: "Houston, TX",
   breed: "mix",
   size: "medium",
   looking_for: "humpship",
   has_kids: false,
   wants_kids: false)
puts "??? Done seeding profiles!"

# puts "Seeding decisions..."
# dec1 = Decision.create(decision_maker_id: d1.id, decision_receiver_id: d2.id, approved: true, active: false)
# dec2 = Decision.create(decision_maker_id: d2.id, decision_receiver_id: d1.id, approved: true, active: false)
# dec3 = Decision.create(decision_maker_id: d3.id, decision_receiver_id: d1.id, approved: false, active: false)
# dec4 = Decision.create(decision_maker_id: d1.id, decision_receiver_id: d4.id, approved: false, active: false)
# dec5 = Decision.create(decision_maker_id: d4.id, decision_receiver_id: d2.id, approved: true, active: true)
# dec6 = Decision.create(decision_maker_id: d5.id, decision_receiver_id: d6.id, approved: true, active: false)
# dec7 = Decision.create(decision_maker_id: d6.id, decision_receiver_id: d5.id, approved: true, active: false)
# dec6 = Decision.create(decision_maker_id: d5.id, decision_receiver_id: d1.id, approved: true, active: false)
# dec7 = Decision.create(decision_maker_id: d1.id, decision_receiver_id: d5.id, approved: true, active: false)
# puts "??? Done seeding decisions!"

#dog seed template: 
#d_num = DogProfile.create(username: "", password: "", name: "", image_url: "", bio: "", age: , location: "", breed: "", size: "", looking_for: "", has_kids: false, wants_kids: false)
