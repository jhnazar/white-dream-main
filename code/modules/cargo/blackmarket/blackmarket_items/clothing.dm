/datum/blackmarket_item/clothing
	category = "Одежда"

/datum/blackmarket_item/clothing/ninja_mask
	name = "Маска космического ниндзи"
	desc = "Ниндзя пиздец"
	item = /obj/item/clothing/mask/gas/space_ninja

	price_min = 200
	price_max = 500
	stock_max = 3
	availability_prob = 40

/datum/blackmarket_item/clothing/durathread_vest
	name = "Дюрасталевая броня"
	desc = "Это может быть разницей между робостью и возмездием."
	item = /obj/item/clothing/suit/armor/vest/durathread

	price_min = 200
	price_max = 400
	stock_max = 4
	availability_prob = 50

/datum/blackmarket_item/clothing/durathread_helmet
	name = "Дюрасталевый шлем"
	desc = "Покупатели спрашивают, почему он называется шлемом, когда он просто сделан из бронированной ткани, и я всегда говорю одно и то же: никаких возвратов."
	item = /obj/item/clothing/head/helmet/durathread

	price_min = 100
	price_max = 200
	stock_max = 4
	availability_prob = 50

/datum/blackmarket_item/clothing/full_spacesuit_set
	name = "Старый скафандр ЦК"
	desc = "Несколько коробок скафандров старого стиля которые упали с кузова космического грузовика."
	item = /obj/item/storage/box

	price_min = 1500
	price_max = 4000
	stock_max = 3
	availability_prob = 30

/datum/blackmarket_item/clothing/full_spacesuit_set/spawn_item(loc)
	var/obj/item/storage/box/B = ..()
	B.name = "Коробка с космическим костюмом"
	B.desc = "на ней надпись НТ."
	new /obj/item/clothing/suit/space(B)
	new /obj/item/clothing/head/helmet/space(B)
	return B

/datum/blackmarket_item/clothing/chameleon_hat
	name = "Шляпа Хамелеон"
	desc = "Выберите любую шляпу, которую вы хотите с этим устройством Handy. Не проверено на качество."
	item = /obj/item/clothing/head/chameleon/broken

	price_min = 100
	price_max = 200
	stock_max = 2
	availability_prob = 70

/datum/blackmarket_item/clothing/combatmedic_suit
	name = "Скафандр боевого медика"
	desc = "Брошенный боевой медицинский костюм, найденный в руинах унесенного ковром улья ксеносов. Определенно можно использовать. Он крепкий как якорь"
	item = /obj/item/clothing/suit/space/hardsuit/combatmedic

	price_min = 5500
	price_max = 7000
	stock_max = 1
	availability_prob = 10
