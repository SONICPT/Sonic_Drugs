fx_version 'bodacious'
games { 'gta5' }

author 'SONIC_PT'
description 'Sonic_Drugs'
version '3.0'

client_scripts {
	'@es_extended/locale.lua',
	'locales/pt.lua',
	'CheckVersion.lua',
	'config.lua',
    'client/sonic_drugs_cl.lua'
}

server_scripts {
	'@es_extended/locale.lua',
	'locales/pt.lua',
	'config.lua',
	'CheckVersion.lua',
	'images/images.lua',
    'server/sonic_drugs_sv.lua'
}

dependencies {
	'mythic_notify',
	'progressBars'
}


