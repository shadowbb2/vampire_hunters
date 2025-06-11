extends Node


const ICON_PATH = "res://Textures/Items/Upgrades/"
const WEAPON_PATH = "res://Textures/Items/Weapons/"
const UPGRADES = {
	"icespear1": {
		"icon": WEAPON_PATH + "ice_spear.png",
		"displayname": "Крига",
		"details": "Кидає спис з льоду у випадкового ворога",
		"level": "Рівень: 1",
		"prerequisite": [],
		"type": "weapon"
	},
	"icespear2": {
		"icon": WEAPON_PATH + "ice_spear.png",
		"displayname": "Крига",
		"details": "Кидає додатковий крижаний спис",
		"level": "Рівень: 2",
		"prerequisite": ["icespear1"],
		"type": "weapon"
	},
	"icespear3": {
		"icon": WEAPON_PATH + "ice_spear.png",
		"displayname": "Крига",
		"details": "Крижаний Спис проходить через додаткового ворога і наносить + 3 шкоди",
		"level": "Рівень: 3",
		"prerequisite": ["icespear2"],
		"type": "weapon"
	},
	"icespear4": {
		"icon": WEAPON_PATH + "ice_spear.png",
		"displayname": "Крига",
		"details": "Кидає 2 додаткових крижаних списа",
		"level": "Рівень: 4",
		"prerequisite": ["icespear3"],
		"type": "weapon"
	},
	"javelin1": {
		"icon": WEAPON_PATH + "javelin_3_new_attack.png",
		"displayname": "Спис",
		"details": "Магічний спис буде слідувати за вами, атакуючи ворогів по прямій лінії",
		"level": "Рівень: 1",
		"prerequisite": [],
		"type": "weapon"
	},
	"javelin2": {
		"icon": WEAPON_PATH + "javelin_3_new_attack.png",
		"displayname": "Спис",
		"details": "Cпис атакуватиме додаткового ворога за атаку",
		"level": "Рівень: 2",
		"prerequisite": ["javelin1"],
		"type": "weapon"
	},
	"javelin3": {
		"icon": WEAPON_PATH + "javelin_3_new_attack.png",
		"displayname": "Спис",
		"details": "Спис буде атакувати додаткового ворога за атаку",
		"level": "Рівень: 3",
		"prerequisite": ["javelin2"],
		"type": "weapon"
	},
	"javelin4": {
		"icon": WEAPON_PATH + "javelin_3_new_attack.png",
		"displayname": "Спис",
		"details": "Метання списа тепер завдає +5 шкоди за атаку та додатково відкидає на 20%.",
		"level": "Рівень: 4",
		"prerequisite": ["javelin3"],
		"type": "weapon"
	},
	"tornado1": {
		"icon": WEAPON_PATH + "tornado.png",
		"displayname": "Торнадо",
		"details": "з'являється торнадо та рухається у напрямку руху гравця",
		"level": "Рівень: 1",
		"prerequisite": [],
		"type": "weapon"
	},
	"tornado2": {
		"icon": WEAPON_PATH + "tornado.png",
		"displayname": "Торнадо",
		"details": "Створює додаткове торнадо",
		"level": "Рівень: 2",
		"prerequisite": ["tornado1"],
		"type": "weapon"
	},
	"tornado3": {
		"icon": WEAPON_PATH + "tornado.png",
		"displayname": "Торнадо",
		"details": "Перезарядка торнадо зменшується на 0,5 секунди",
		"level": "Рівень: 3",
		"prerequisite": ["tornado2"],
		"type": "weapon"
	},
	"tornado4": {
		"icon": WEAPON_PATH + "tornado.png",
		"displayname": "Торнадо",
		"details": "Створюється додаткове торнадо та відкидання збільшується на 25%",
		"level": "Рівень: 4",
		"prerequisite": ["tornado3"],
		"type": "weapon"
	},
	"armor1": {
		"icon": ICON_PATH + "helmet_1.png",
		"displayname": "Броня",
		"details": "Зменшує шкоду на 1",
		"level": "Рівень: 1",
		"prerequisite": [],
		"type": "upgrade"
	},
	"armor2": {
		"icon": ICON_PATH + "helmet_1.png",
		"displayname": "Броня",
		"details": "Зменшує шкоди ще на 1",
		"level": "Рівень: 2",
		"prerequisite": ["armor1"],
		"type": "upgrade"
	},
	"armor3": {
		"icon": ICON_PATH + "helmet_1.png",
		"displayname": "Броня",
		"details": "Зменшує шкоду ще на 1",
		"level": "Рівень: 3",
		"prerequisite": ["armor2"],
		"type": "upgrade"
	},
	"armor4": {
		"icon": ICON_PATH + "helmet_1.png",
		"displayname": "Броня",
		"details": "Зменшує шкоду ще на 1",
		"level": "Рівень: 4",
		"prerequisite": ["armor3"],
		"type": "upgrade"
	},
	"speed1": {
		"icon": ICON_PATH + "boots_4_green.png",
		"displayname": "Чоботи",
		"details": "Швидкість пересування збільшено на 20% від базової швидкості",
		"level": "Рівень: 1",
		"prerequisite": [],
		"type": "upgrade"
	},
	"speed2": {
		"icon": ICON_PATH + "boots_4_green.png",
		"displayname": "Чоботи",
		"details": "Швидкість пересування збільшено на 20% від базової швидкості",
		"level": "Рівень: 2",
		"prerequisite": ["speed1"],
		"type": "upgrade"
	},
	"speed3": {
		"icon": ICON_PATH + "boots_4_green.png",
		"displayname": "Чоботи",
		"details": "Швидкість пересування збільшено на 20% від базової швидкості",
		"level": "Рівень: 3",
		"prerequisite": ["speed2"],
		"type": "upgrade"
	},
	"speed4": {
		"icon": ICON_PATH + "boots_4_green.png",
		"displayname": "Чоботи",
		"details": "Швидкість пересування збільшено на 20% від базової швидкості",
		"level": "Рівень: 4",
		"prerequisite": ["speed3"],
		"type": "upgrade"
	},
	"tome1": {
		"icon": ICON_PATH + "thick_new.png",
		"displayname": "Фоліант",
		"details": "Збільшує розмір заклинань додатково на 10% від їх базового розміру",
		"level": "Рівень: 1",
		"prerequisite": [],
		"type": "upgrade"
	},
	"tome2": {
		"icon": ICON_PATH + "thick_new.png",
		"displayname": "Фоліант",
		"details": "Збільшує розмір заклинань додатково на 10% від їх базового розміру",
		"level": "Рівень: 2",
		"prerequisite": ["tome1"],
		"type": "upgrade"
	},
	"tome3": {
		"icon": ICON_PATH + "thick_new.png",
		"displayname": "Фоліант",
		"details": "Збільшує розмір заклинань додатково на 10% від їх базового розміру",
		"level": "Рівень: 3",
		"prerequisite": ["tome2"],
		"type": "upgrade"
	},
	"tome4": {
		"icon": ICON_PATH + "thick_new.png",
		"displayname": "Фолінт",
		"details": "Збільшує розмір заклинань додатково на 10% від їх базового розміру",
		"level": "Рівень: 4",
		"prerequisite": ["tome3"],
		"type": "upgrade"
	},
	"scroll1": {
		"icon": ICON_PATH + "scroll_old.png",
		"displayname": "Сувій",
		"details": "Зменшує час відновлення заклинань додатково на 5% від їх основного часу",
		"level": "Рівень: 1",
		"prerequisite": [],
		"type": "upgrade"
	},
	"scroll2": {
		"icon": ICON_PATH + "scroll_old.png",
		"displayname": "Сувій",
		"details": "Зменшує час відновлення заклинань додатково на 5% від їх основного часу",
		"level": "Рівень: 2",
		"prerequisite": ["scroll1"],
		"type": "upgrade"
	},
	"scroll3": {
		"icon": ICON_PATH + "scroll_old.png",
		"displayname": "Сувій",
		"details": "Зменшує час відновлення заклинань додатково на 5% від їх основного часу",
		"level": "Рівень: 3",
		"prerequisite": ["scroll2"],
		"type": "upgrade"
	},
	"scroll4": {
		"icon": ICON_PATH + "scroll_old.png",
		"displayname": "Сувій",
		"details": "Зменшує час відновлення заклинань додатково на 5% від їх основного часу",
		"level": "Рівень: 4",
		"prerequisite": ["scroll3"],
		"type": "upgrade"
	},
	"ring1": {
		"icon": ICON_PATH + "urand_mage.png",
		"displayname": "Кільце",
		"details": "Ваші заклинання тепер створюють ще 1 додаткову атаку",
		"level": "Рівень: 1",
		"prerequisite": [],
		"type": "upgrade"
	},
	"ring2": {
		"icon": ICON_PATH + "urand_mage.png",
		"displayname": "Кільце",
		"details": "Ваші заклинання тепер створюють ще 1 додаткову атаку",
		"level": "Рівень: 2",
		"prerequisite": ["ring1"],
		"type": "upgrade"
	},
	"food": {
		"icon": ICON_PATH + "chunk.png",
		"displayname": "Іжа",
		"details": "Зцілює вас на 20 здоров’я",
		"level": "N/A",
		"prerequisite": [],
		"type": "item"
	}
}
