fx_version 'cerulean'

games { 'gta5' }

lua54 'yes'

description 'QB Drug Crafting by James Sweetsir'

version '1.0.0'

shared_scripts {
	'@PolyZone/client.lua',
    '@PolyZone/CircleZone.lua',
	'@qb-core/shared/locale.lua',
	'config.lua',
	'locales/en.lua'
}

server_scripts {
	'server/coke.lua',
	'server/lsd.lua',
	'server/meth.lua',
	'server/weed.lua',
	'server/heroin.lua',
	'server/chemicals.lua',
	'server/moneyprinting.lua',
	'server/versioncheck.lua',
}

client_scripts {
	'client/weed.lua',
	'client/meth.lua',
	'client/coke.lua',
	'client/lsd.lua',
	'client/heroin.lua',
	'client/chemicals.lua',
	'client/hydrochloricacid.lua',
	'client/sodiumhydroxide.lua',
	'client/sulfuricacid.lua',
	'client/target.lua',
	'client/moneyprinting.lua',
}

files {
	'stream/mw_props.ytyp'
}

data_file 'DLC_ITYP_REQUEST' 'stream/mw_props.ytyp'
