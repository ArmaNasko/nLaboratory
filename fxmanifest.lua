fx_version 'adamant'

game 'gta5'

author 'Nasko'

description 'nLaboratory'

version '1.0'

shared_scripts {
    "shared/*.lua"
}

server_scripts {
    "server/*.lua",
    '@mysql-async/lib/MySQL.lua',
}

client_scripts {
    "client/*.lua",
}