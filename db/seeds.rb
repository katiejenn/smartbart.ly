# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# Stations
stationsAll = []
stationsAll = stationsAll.push(
 {name: "12th St. Oakland City Center", address: "1245 Broadway, Oakland, CA 94612", latitude: 37.803664, longitude: -122.271604},
 {name: "16th St. Mission", address: "2000 Mission Street, San Francisco, CA 94110", latitude: 37.765062, longitude: -122.419694},
 {name: "19th St. Oakland", address: "1900 Broadway, Oakland, Ca 94612", latitude: 37.80787, longitude: -122.269029},
 {name: "24th St. Mission", address: "2800 Mission Street, San Francisco, CA 94110", latitude: 37.752254, longitude: -122.418466},
 {name: "Ashby", address: "3100 Adeline Street, Berkeley, CA 94703", latitude: 37.853024, longitude: -122.26978},
 {name: "Balboa Park", address: "401 Geneva Avenue, San Francisco, CA, 94112", latitude: 37.72198087, longitude: -122.4474142},
 {name: "Bay Fair", address: "15242 Hesperian Blvd., San Leandro, Ca 94578", latitude: 37.697185, longitude: -122.126871},
 {name: "Castro Valley", address: "3301 Norbridge Dr., Castro Valley, CA 94546", latitude: 37.690754, longitude: -122.075567},
 {name: "Civic Center/UN Plaza", address: "1150 Market Street, San Francisco, CA 94102", latitude: 37.779528, longitude: -122.413756},
 {name: "Coliseum", address: "7200 San Leandro St., Oakland, CA 94621", latitude: 37.754006, longitude: -122.197273},
 {name: "Colma", address: "365 D Street, Colma, CA 94014", latitude: 37.684638, longitude: -122.466233},
 {name: "Concord", address: "1451 Oakland Avenue, Concord, CA 94520", latitude: 37.973737, longitude: -122.029095},
 {name: "Daly City", address: "500 John Daly Blvd., Daly City, CA 94014", latitude: 37.70612055, longitude: -122.4690807},
 {name: "Downtown Berkeley", address: "2160 Shattuck Avenue, Berkeley, CA 94704", latitude: 37.869867, longitude: -122.268045},
 {name: "Dublin/Pleasanton", address: "5801 Owens Dr., Pleasanton, CA 94588", latitude: 37.701695, longitude: -121.900367},
 {name: "El Cerrito del Norte", address: "6400 Cutting Blvd., El Cerrito, CA 94530", latitude: 37.925655, longitude: -122.317269},
 {name: "El Cerrito Plaza", address: "6699 Fairmount Avenue, El Cerrito, CA 94530", latitude: 37.9030588, longitude: -122.2992715},
 {name: "Embarcadero", address: "298 Market Street, San Francisco, CA 94111", latitude: 37.792976, longitude: -122.396742},
 {name: "Fremont", address: "2000 BART Way, Fremont, CA 94536", latitude: 37.557355, longitude: -121.9764},
 {name: "Fruitvale", address: "3401 East 12th Street, Oakland, CA 94601", latitude: 37.774963, longitude: -122.224274},
 {name: "Glen Park", address: "2901 Diamond Street, San Francisco, CA 94131", latitude: 37.732921, longitude: -122.434092},
 {name: "Hayward", address: "699 'B' Street, Hayward, CA 94541", latitude: 37.670399, longitude: -122.087967},
 {name: "Lafayette", address: "3601 Deer Hill Road, Lafayette, CA 94549", latitude: 37.893394, longitude: -122.123801},
 {name: "Lake Merritt", address: "800 Madison Street, Oakland, CA 94607", latitude: 37.797484, longitude: -122.265609},
 {name: "MacArthur", address: "555 40th Street, Oakland, CA, 94609", latitude: 37.828415, longitude: -122.267227},
 {name: "Millbrae", address: "200 North Rollins Road, Millbrae, CA 94030", latitude: 37.599787, longitude: -122.38666},
 {name: "Montgomery St.", address: "598 Market Street, San Francisco, CA 94104", latitude: 37.789256, longitude: -122.401407},
 {name: "North Berkeley", address: "1750 Sacramento Street, Berkeley, CA 94702", latitude: 37.87404, longitude: -122.283451},
 {name: "North Concord/Martinez", address: "3700 Port Chicago Highway, Concord, CA, 94520", latitude: 38.003275, longitude: -122.024597},
 {name: "Oakland Int'l Airport", address: "4 Airport Drive, Oakland, CA 94621", latitude: 37.71297174, longitude: -122.21244024},
 {name: "Orinda", address: "11 Camino Pablo, Orinda, CA 94563", latitude: 37.87836087, longitude: -122.1837911},
 {name: "Pittsburg/Bay Point", address: "1700 West Leland Road, Pittsburg, CA 94565", latitude: 38.018914, longitude: -121.945154},
 {name: "Powell St.", address: "899 Market Street, San Francisco, CA 94102", latitude: 37.784991, longitude: -122.406857},
 {name: "Richmond", address: "1700 Nevin Avenue, Richmond, CA 94801", latitude: 37.936887, longitude: -122.353165},
 {name: "Rockridge", address: "5660 College Avenue, Oakland, CA 94618", latitude: 37.844601, longitude: -122.251793},
 {name: "San Bruno", address: "1151 Huntington Avenue, San Bruno, CA 94066", latitude: 37.637753, longitude: -122.416038},
 {name: "San Francisco Int'l Airport", address: "International Terminal, Level 3, San Francisco Int'l Airport, CA 94128", latitude: 37.616035, longitude: -122.392612},
 {name: "San Leandro", address: "1401 San Leandro Blvd., San Leandro, CA 94577", latitude: 37.72261921, longitude: -122.1613112},
 {name: "South Hayward", address: "28601 Dixon Street, Hayward Ca, 94544", latitude: 37.63479954, longitude: -122.0575506},
 {name: "South San Francisco", address: "1333 Mission Road, South San Francisco, CA 94080", latitude: 37.664174, longitude: -122.444116},
 {name: "Union City", address: "10 Union Square, Union City, CA 94587", latitude: 37.591208, longitude: -122.017867},
 {name: "Walnut Creek", address: "200 Ygnacio Valley Road, Walnut Creek, CA 94596", latitude: 37.905628, longitude: -122.067423},
 {name: "West Dublin/Pleasanton", address: "6501 Golden Gate Drive, Dublin, CA 94568", latitude: 37.699759, longitude: -121.928099},
 {name: "West Oakland", address: "1451 7th Street, Oakland, CA 94607", latitude: 37.80467476, longitude: -122.2945822},
 )
stationsAll.each{|x| Station.create(x)}