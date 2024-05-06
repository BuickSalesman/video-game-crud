# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Game.create(
  title: "Anodyne 2",
  image: "https://c8.alamy.com/comp/GEE05T/a-happy-chef-with-handlebar-mustache-showing-his-approval-GEE05T.jpg",
  description: "Anodyne 2: Return to Dust is an indie adventure game developed by Analgesic Productions. It combines 2D and 3D gameplay elements within a surreal narrative-driven experience. Set in a world where characters traverse both real and abstract realms, players take on the role of Nova, a Nano Cleaner tasked with exploring diverse environments, solving puzzles, and confronting surreal challenges. The game received praise for its unique blend of gameplay mechanics, captivating storytelling, and distinctive visual style.",
  release_date: Date.new(2019, 8, 12),
  platform: "Windows, macOS, Linux, Switch, PS4, PS5, XB1",
)
Game.create(
  title: "The Legend of Zelda: A Link to the Past",
  image: "https://c8.alamy.com/comp/CF332X/chef-with-french-roll-isolated-on-white-background-CF332X.jpg",
  description: "The Legend of Zelda: A Link to the Past is an iconic action-adventure game developed and published by Nintendo for the Super Nintendo Entertainment System (SNES). Released in 1991, it follows the journey of Link, the protagonist, as he sets out to rescue Princess Zelda and thwart the evil plans of Ganon. Set in the kingdom of Hyrule, players navigate through dungeons, solve puzzles, defeat enemies, and collect items and weapons to progress in the game. Renowned for its engaging gameplay, memorable characters, and rich storyline, A Link to the Past is often considered one of the greatest video games of all time.",
  release_date: Date.new(1991, 11, 21),
  platform: "SNES",
)
Game.create(
  title: "Omori",
  image: "https://www.shutterstock.com/shutterstock/photos/2067908666/display_1500/stock-photo-cheerful-male-chef-holding-a-baguette-bread-isolated-on-white-background-2067908666.jpg",
  description: "Omori is a surreal psychological horror role-playing game developed by Omocat. Set in the whimsical yet eerie world of Headspace, players control a character named Omori who navigates through both the real world and a dreamlike realm. The game explores themes of mental health, friendship, and trauma as Omori and his friends embark on a journey filled with strange creatures, unsettling encounters, and emotional revelations. With its striking art style, engaging storytelling, and unique gameplay mechanics, Omori offers players a captivating and introspective gaming experience.",
  release_date: Date.new(2020, 12, 25),
  platform: "Windows, macOS, Switch, PS4, XB1, XBX/S",
)
Game.create(
  title: "Hearthstone",
  image: "https://c8.alamy.com/comp/J68N52/bread-cook-chef-breaking-fracture-breakage-fraction-restaurant-bread-J68N52.jpg",
  description: "Hearthstone is a digital collectible card game developed and published by Blizzard Entertainment. Set in the Warcraft universe, players choose a hero with a unique set of cards and engage in turn-based battles against other players or AI opponents. The objective is to reduce the opponent's health to zero using a combination of spells, minions, and other abilities. With a wide variety of cards, strategic depth, and regular updates introducing new content, Hearthstone offers an engaging and accessible experience for both casual and competitive players alike.",
  release_date: Date.new(2014, 3, 11),
  platform: "Windows, macOS, Android, iOS",
)
Game.create(
  title: "Shadow of the Collosus",
  image: "https://media.gettyimages.com/id/686648866/photo/master-chef.jpg?s=612x612&w=gi&k=20&c=_USLgEt928nlnZSMEo_ntkur_oh0xzzX42S7d5QQT20=",
  description: "Shadow of the Colossus is an action-adventure game developed by Team Ico and published by Sony Computer Entertainment. Originally released for the PlayStation 2 in 2005, it was later remastered for the PlayStation 3, PlayStation 4, and PC. In the game, players assume the role of Wander, a young man who ventures into a forbidden land to resurrect a girl named Mono. To achieve this, Wander must defeat sixteen colossal creatures known as Colossi scattered across the land. The game is renowned for its minimalist storytelling, stunning visual design, emotional depth, and epic boss battles against the towering Colossi. It's often praised as a masterpiece of video game artistry and storytelling.",
  release_date: Date.new(2005, 10, 18),
  platform: "PS2",
)
Game.create(
  title: "Boktai: The Sun is in Your Hand",
  image: "https://www.shutterstock.com/image-photo/dog-chefs-hat-spatula-his-600nw-2417511355.jpg",
  description: "Boktai: The Sun is in Your Hand is an action-adventure game developed by Konami for the Game Boy Advance. Released in 2003, the game follows the story of a young vampire hunter named Django, who wields a solar-powered weapon called the Gun Del Sol. Set in a world plagued by darkness, players must use sunlight to power up their weapon and vanquish the undead creatures they encounter. What sets Boktai apart is its unique use of a solar sensor on the game cartridge, which requires players to physically expose it to sunlight to charge their in-game weapon. This innovative gameplay mechanic added a creative twist to the traditional action-adventure genre and encouraged outdoor play.",
  release_date: Date.new(2003, 9, 16),
  platform: "GBA",
)
