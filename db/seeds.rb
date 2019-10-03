# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'pry'

Tile.destroy_all
Monster.destroy_all
RoomCard.destroy_all
TrapCard.destroy_all
Character.destroy_all

Character.create(
    name: "Sir Rohan",
    strength: 6,
    agility: 4,
    armor: 9,
    luck: 4,
    title: "The Knight",
    life_value: 17,
    character_image: "https://i.imgur.com/XRveIdH.png"
)
Character.create(
    name: "Ulv Grimhand",
    strength: 7,
    agility: 5,
    armor: 6,
    luck: 5,
    title: "The Barbarian",
    life_value: 16,
    character_image: "https://i.imgur.com/hp8AGDw.png"
)
Character.create(
    name: "El-Adoran Sureshot",
    strength: 3,
    agility: 8,
    armor: 5,
    luck: 7,
    title: "The Ranger",
    life_value: 12,
    # special_ability: "Arrows 4",
    character_image: "https://i.imgur.com/QWjzDni.png"
)
Character.create(
    name: "Volrik The Brave",
    strength: 4,
    agility: 7,
    armor: 4,
    luck: 8,
    title: "The Adventurer",
    life_value: 15,
    character_image: "https://i.imgur.com/Zo9g2JK.png"
)

four_way_images = [
    "https://i.imgur.com/xtDU4YI.png", 
    "https://i.imgur.com/AopM4TX.png", 
    "https://i.imgur.com/Mi6LR2e.png", 
    "https://i.imgur.com/bLFTgAX.png"
]

four_way_images.each do |image|
    2.times{Tile.create(
        room: "Four Way Corridor",
        top: true,
        bottom: true,
        left: true,
        right: true,
        image: image
    )}
end


three_way_corridors = {
    a: {
        room: "Three Way Corridor",
        top: false,
        bottom: true,
        left: true,
        right: true,
        is_trap: false,
        image: "https://i.imgur.com/GIM409L.png"
    },
    b: {
        room: "Three Way Corridor",
        top: true,
        bottom: false,
        left: true,
        right: true,
        is_trap: false,
        image: "https://i.imgur.com/iqCoUME.png"
    },
    c: {
        room: "Three Way Corridor",
        top: true,
        bottom: true,
        left: false,
        right: true,
        is_trap: false,
        image: "https://i.imgur.com/yPXhn35.png"
    },
    d: {
        room: "Three Way Corridor",
        top: true,
        bottom: true,
        left: true,
        right: false,
        is_trap: false,
        image: "https://i.imgur.com/UGYTHpp.png"
    }
}

two_way_corridors = {
    bl: {
        room: "Two Way Corridor",
        top: false,
        bottom: true,
        left: true,
        right: false,
        is_trap: false,
        image: "https://i.imgur.com/iN1mCtd.png"
    },
    br: {
        room: "Two Way Corridor",
        top: false,
        bottom: true,
        left: false,
        right: true,
        is_trap: false,
        image: "https://i.imgur.com/msxYRBi.png"
    },
    lr: {
        room: "Two Way Corridor",
        top: false,
        bottom: false,
        left: true,
        right: true,
        is_trap: false,
        image: "https://i.imgur.com/mQlt2aX.png"
    },
    tb: {
        room: "Two Way Corridor",
        top: true,
        bottom: true,
        left: false,
        right: false,
        is_trap: false,
        image: "https://i.imgur.com/iq4Hhal.png"
    },
    tl: {
        room: "Two Way Corridor",
        top: true,
        bottom: false,
        left: true,
        right: false,
        is_trap: false,
        image: "https://i.imgur.com/rkzjF4F.png"
    },
    tr: {
        room: "Two Way Corridor",
        top: true,
        bottom: false,
        left: false,
        right: true,
        is_trap: false,
        image: "https://i.imgur.com/43sbdXw.png"
    }
}

dead_ends = {
    
    b: {
        room: "Two Way Corridor",
        top: false,
        bottom: true,
        left: false,
        right: false,
        is_trap: false,
        image: "https://i.imgur.com/bf8kaFX.png"
    },
    l: {
        room: "Two Way Corridor",
        top: false,
        bottom: false,
        left: true,
        right: false,
        is_trap: false,
        image: "https://i.imgur.com/YpAt6TV.png"
    },
    r: {
        room: "Two Way Corridor",
        top: false,
        bottom: false,
        left: false,
        right: true,
        is_trap: false,
        image: "https://i.imgur.com/oFuu8XW.png"
    },
    t: {
        room: "Two Way Corridor",
        top: true,
        bottom: false,
        left: false,
        right: false,
        is_trap: false,
        image: "https://i.imgur.com/DHUYfRX.png"
    }
}

three_way_corridors.each do |tile, data|
    2.times{Tile.create(room: data[:room], top: data[:top], bottom: data[:bottom], left: data[:left], right: data[:right], is_trap: data[:is_trap], image: data[:image])}
end

two_way_corridors.each do |tile, data|
    2.times{Tile.create(room: data[:room], top: data[:top], bottom: data[:bottom], left: data[:left], right: data[:right], is_trap: data[:is_trap], image: data[:image])}
end

dead_ends.each do |tile, data|
    Tile.create(room: data[:room], top: data[:top], bottom: data[:bottom], left: data[:left], right: data[:right], is_trap: data[:is_trap], image: data[:image])
end

deck_hash = {
    empty: {amt: 34, name: "Empty", desc: "Room is Empty. Please Continue.", image: "https://i.imgur.com/n49kOpz.png?1"},
    encounter: {amt: 17, name: "Monster", desc: "Random Encounter! Prepare for Battle!", image: "https://i.imgur.com/Dm3yOeN.png?1"},
    trap: {amt: 15, name: "Trap", desc: "Random Trap!", image: "https://i.imgur.com/kAp2e2J.png?1"},
    potion: {amt: 2, name: "Potion", desc: "You Found a Potion! Health Fully Restored.", image: "https://i.imgur.com/WcdQArO.png?1"}
}

monster_hash = {
    goblin: {amt: 5, name: "Goblin", life_value: 1, image: "https://i.imgur.com/2xJcCrF.png"},
    orc: {amt: 4, name: "Orc", life_value: 2, image: "https://i.imgur.com/h2l0Mze.png"},
    death_warrior: {amt: 3, name: "Death Warrior", life_value: 4, image: "https://i.imgur.com/Skmjd1Z.png"},
    mountain_troll: {amt: 3, name: "Mountain Troll", life_value: 3, image: "https://i.imgur.com/Gwjs7lM.png"},
    champion_of_chaos: {amt: 2, name: "Champion of Chaos", life_value: 5, image: "https://i.imgur.com/6VLn2Yy.png"}
}

trap_hash = {
    # bottomless_pit: {amt: 2, name: "Bottomless Pit", desc: "Roll Below Agility to Continue, Miss Turn Otherwise"},
    cave_in: {amt: 2, kind: "roll", name: "Cave In", desc: "Roll Below Agility to Continue, Lose 1 Life Otherwise", image: "https://i.imgur.com/0GSz1Wk.png?1"},
    # chamber_of_darkness: {amt: 4, name: "Chamber of Darkness", desc: "Roll d6, [1-3: Retreat Back the Way You Came] [4-6: Continue Onward]"},
    # chasm: {amt: 3, name: "Chasm", desc: "Must Turn Back"},
    crossfire: {amt: 3, kind: "roll", name: "Crossfire", desc: "Lose [d12 - armor] life points", image: "https://i.imgur.com/1DlrwvO.png?1"},
    poison_snakes: {amt: 2, kind: "roll", name: "Poisonous Snakes", desc: "Lose [d6 - 3] life points.", image: "https://i.imgur.com/Ov49VUN.png?1"},
    explosion: {amt: 2, kind: "roll", name: "Explosion", desc: "Lose [d6] life points.", image: "https://i.imgur.com/cKAYOjR.png"},
    giant_spider: {amt: 2, kind: "roll", name: "Giant Spider", desc: "Roll d6, [1-3: You Kill the Spider and Continue], [4-6: Lose 1 Life - Battle Continues]", image: "https://i.imgur.com/OwjPC0k.png"}
}

deck_hash.each do |item, card|
    card[:amt].times {RoomCard.create({kind: card[:name], description: card[:desc], image: card[:image]})}
end

monster_hash.each do |item, card|
    card[:amt].times {Monster.create({name: card[:name], life_value: card[:life_value], image: card[:image]})}
end

trap_hash.each do |item, card|
    card[:amt].times {TrapCard.create({name: card[:name], kind: card[:kind], description: card[:desc], image: card[:image]})}
end
#5 goblins, 4 orcrs, 3 death, 3 trolls, 2 champ
