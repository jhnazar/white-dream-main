/datum/blackmarket_item/misc
	category = "Прочее"

/datum/blackmarket_item/misc/cap_gun
	name = "Игрушечный пистолет"
	desc = "Пранк оружие"
	item = /obj/item/toy/gun

	price_min = 50
	price_max = 200
	stock_max = 6
	availability_prob = 80

/datum/blackmarket_item/misc/shoulder_holster
	name = "Кобура"
	desc = "Эта кобура - первый шаг в вашей мечте стать детективом и иметь возможность стрелять из настоящего оружия!"
	item = /obj/item/storage/belt/holster

	price_min = 400
	price_max = 800
	stock_max = 8
	availability_prob = 60

/datum/blackmarket_item/misc/holywater
	name = "Колба со святой водой"
	desc = "Собственная марка отца Лотия готовой святой воды."
	item = /obj/item/reagent_containers/food/drinks/bottle/holywater

	price_min = 400
	price_max = 600
	stock_max = 3
	availability_prob = 40

/datum/blackmarket_item/misc/holywater/spawn_item(loc)
	if (prob(6.66))
		return new /obj/item/reagent_containers/glass/beaker/unholywater(loc)
	return ..()

/datum/blackmarket_item/misc/strange_seed
	name = "Странные семена"
	desc = "Экзотическое разнообразие семян, которое может содержать что угодно, от свечения до кислоты."
	item = /obj/item/seeds/random

	price_min = 500
	price_max = 1000
	stock_min = 1
	stock_max = 30
	availability_prob = 50

/datum/blackmarket_item/misc/smugglers_satchel
	name = "ранец Контрабандистра"
	desc = "Этот легко спрятанный ранец может стать универсальным инструментом для любого, кто хочет держать определенные предметы вне поля зрения."
	item = /obj/item/storage/backpack/satchel/flat/empty

	price_min = 750
	price_max = 1000
	stock_max = 2
	availability_prob = 30
