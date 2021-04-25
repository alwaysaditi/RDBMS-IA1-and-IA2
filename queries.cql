//Return all stations attached to a particular line : example return all stations served by Piccadilly line:

MATCH (Line {name: 'Piccadilly'})--(Station)
RETURN Station.name

//Return all amenities at a particular station example King’s Cross

MATCH (:Station {name: 'Kings Cross'})--(Amenity: Amenity)
RETURN Amenity.name

//Return all services attached to  a particular node example Edgware Road

MATCH (:Station {name: 'Edgware Road'})--(Service: Service)
RETURN Service.name

//Return Which all stations have a particular service example Accessible Washrooms:

MATCH (Service {name: 'Accessible Washrooms'})--(Station)
RETURN Station.name




