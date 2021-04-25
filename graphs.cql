//In this code we will first demonstrate the creation of the nodes for the 18 stations that we have considered.
//for this we will be creating nodes and adding properties such as name.
//This is a .cql file that uses the cypher query language and works in vscode with the TRINITY extension.

//CREATION OF STATIONS

CREATE (n:Station {name: 'Amersham', s_id: 101})
CREATE (n:Station {name: 'Blackfriars', s_id: 102})
CREATE (n:Station {name: 'Brixton', s_id: 103})
CREATE (n:Station {name: 'Caledonian Road', s_id: 104})
CREATE (n:Station {name: 'Canary Wharf', s_id: 105})
CREATE (n:Station {name: 'Clapham Junction', s_id: 106})
CREATE (n:Station {name: 'Coombe Lane', s_id: 107})
CREATE (n:Station {name: 'Croxley', s_id: 108})
CREATE (n:Station {name: 'Dollis Hill', s_id: 109})
CREATE (n:Station {name: 'Ealing Common', s_id: 110})
CREATE (n:Station {name: 'Earls Court', s_id: 111})
CREATE (n:Station {name: 'Edgware Road', s_id: 112})
CREATE (n:Station {name: 'Embankment', s_id: 113})
CREATE (n:Station {name: 'Elmers End', s_id: 114})
CREATE (n:Station {name: 'Finsbury Park', s_id: 115})
CREATE (n:Station {name: 'Fulham Broadway', s_id: 116})
CREATE (n:Station {name: 'Hammersmith', s_id: 117})
CREATE (n:Station {name: 'Greens Park', s_id: 118})
CREATE (n:Station {name: 'Kings Cross', s_id: 119})

//CREATION OF LINES
CREATE (n:Line {name: 'Bakerloo', s_id: 201})
CREATE (n:Line {name: 'Central', s_id: 202})
CREATE (n:Line {name: 'Circle', s_id: 203})
CREATE (n:Line {name: 'District', s_id: 204})
CREATE (n:Line{name: 'Hammersmith and City', s_id: 205})
CREATE (n:Line {name: 'Jubilee ', s_id: 206})
CREATE (n:Line {name: 'Metropolitan', s_id: 207})
CREATE (n:Line {name: 'Northern', s_id: 208})
CREATE (n:Line {name: 'Piccadilly', s_id: 210})
CREATE (n:Line {name: 'Victoria', s_id: 211})
CREATE (n:Line{name: 'Waterloo and City', s_id: 212})

//CREATION OF RELATIONS BETWEEN STATIONS AND LINES
//1. Amersham Station
MATCH
  (a:Line),
  (b:Station)
WHERE a.name = 'Metropolitan' AND b.name = 'Amersham'
CREATE (a)-[r:PASSES_THROUGH]->(b)
RETURN type(r)
//2. Blackfriars
MATCH
  (a:Line),
  (b:Station)
WHERE a.name = 'Circle' AND b.name = 'Blackfriars'
CREATE (a)-[r:PASSES_THROUGH]->(b)
RETURN type(r)
MATCH
  (a:Line),
  (b:Station)
WHERE a.name = 'District' AND b.name = 'Blackfriars'
CREATE (a)-[r:PASSES_THROUGH]->(b)
RETURN type(r)
//3. Brixton
MATCH
  (a:Line),
  (b:Station)
WHERE a.name = 'Victoria' AND b.name = 'Brixton'
CREATE (a)-[r:PASSES_THROUGH]->(b)
RETURN type(r)
//4. Caledonian Road
MATCH
  (a:Line),
  (b:Station)
WHERE a.name = 'Piccadilly' AND b.name = 'Caledonian Road'
CREATE (a)-[r:PASSES_THROUGH]->(b)
RETURN type(r)
//5.Canary Wharf
MATCH
  (a:Line),
  (b:Station)
WHERE a.name = 'Jubilee' AND b.name = 'Canary Wharf'
CREATE (a)-[r:PASSES_THROUGH]->(b)
RETURN type(r)
//6. Clapham Junction
MATCH
  (a:Line),
  (b:Station)
WHERE a.name = 'Northern' AND b.name = 'Clapham Junction'
CREATE (a)-[r:PASSES_THROUGH]->(b)
RETURN type(r)
//7.Coombe Lane
MATCH
  (a:Line),
  (b:Station)
WHERE a.name = 'Metropolitan' AND b.name = 'Coombe Lane'
CREATE (a)-[r:PASSES_THROUGH]->(b)
RETURN type(r)
//8. Croxley
MATCH
 (a:Line),
  (b:Station)
WHERE a.name = 'Metropolitan' AND b.name = 'Croxley'
CREATE (a)-[r:PASSES_THROUGH]->(b)
RETURN type(r)
//9.Dollis Hill
MATCH
  (a:Station),
  (b:Line)
WHERE a.name = 'Jubilee' AND b.name = 'Dollis Hill'
CREATE (a)-[r:PASSES_THROUGH]->(b)
RETURN type(r)
//10. Ealing Common
MATCH
  (a:Line),
  (b:Station)
WHERE a.name = 'Piccadilly' AND b.name = 'Ealing Common'
CREATE (a)-[r:PASSES_THROUGH]->(b)
RETURN type(r)
MATCH
 (a:Line),
  (b:Station)
WHERE a.name = 'District' AND b.name = 'Ealing Common'
CREATE (a)-[r:PASSES_THROUGH]->(b)
RETURN type(r)
//11. Earls Court
MATCH
  (a:Line),
  (b:Station)
WHERE a.name = 'Piccadilly' AND b.name = 'Earls Court'
CREATE (a)-[r:PASSES_THROUGH]->(b)
RETURN type(r)
MATCH
  (a:Line),
  (b:Station)
WHERE a.name = 'District' AND b.name = 'Earls Court'
CREATE (a)-[r:PASSES_THROUGH]->(b)
RETURN type(r)
//12. Edgware Road
MATCH
 (a:Line),
  (b:Station)
WHERE a.name = 'Circle' AND b.name = 'Edgware Road'
CREATE (a)-[r:PASSES_THROUGH]->(b)
RETURN type(r)
MATCH
  (a:Line),
  (b:Station)
WHERE a.name = 'Hammersmith' AND b.name = 'Edgware Road'
CREATE (a)-[r:PASSES_THROUGH]->(b)
RETURN type(r)
MATCH
  (a:Line),
  (b:Station)
WHERE a.name = 'District' AND b.name = 'Edgware Road'
CREATE (a)-[r:PASSES_THROUGH]->(b)
RETURN type(r)
//13. Embankment
MATCH
  (a:Line),
  (b:Station)
WHERE a.name = 'Bakerloo' AND b.name = 'Embankment'
CREATE (a)-[r:PASSES_THROUGH]->(b)
RETURN type(r)
MATCH
  (a:Line),
  (b:Station)
WHERE a.name = 'Northern' AND b.name = 'Embankment'
CREATE (a)-[r:PASSES_THROUGH]->(b)
RETURN type(r)
MATCH
  (a:Line),
  (b:Station)
WHERE a.name = 'Circle' AND b.name = 'Embankment'
CREATE (a)-[r:PASSES_THROUGH]->(b)
RETURN type(r)
MATCH
  (a:Line),
  (b:Station)
WHERE a.name = 'District' AND b.name = 'Embankment'
CREATE (a)-[r:PASSES_THROUGH]->(b)
RETURN type(r)
//14. Elmers End
MATCH
  (a:Line),
  (b:Station)
WHERE a.name = 'Victoria' AND b.name = 'Elmers End'
CREATE (a)-[r:PASSES_THROUGH]->(b)
RETURN type(r)
//15. Finsbury Park
MATCH
  (a:Line),
  (b:Station)
WHERE a.name = 'Victoria' AND b.name = 'Finsbury Park'
CREATE (a)-[r:PASSES_THROUGH]->(b)
RETURN type(r)
MATCH
  (a:Line),
  (b:Station)
WHERE a.name = 'Piccadilly' AND b.name = 'Finsbury Park'
CREATE (a)-[r:PASSES_THROUGH]->(b)
RETURN type(r)
//16. Fulham Broadway
MATCH
  (a:Line),
  (b:Station)
WHERE a.name = 'District' AND b.name = 'Fulham Broadway'
CREATE (a)-[r:PASSES_THROUGH]->(b)
RETURN type(r)
//17. Hammersmith
MATCH
  (a:Line),
  (b:Station)
WHERE a.name = 'Circle' AND b.name = 'Hammersmith'
CREATE (a)-[r:PASSES_THROUGH]->(b)
RETURN type(r)
MATCH
  (a:Line),
  (b:Station)
WHERE a.name = 'Hammersmith and City' AND b.name = 'Hammersmith'
CREATE (a)-[r:PASSES_THROUGH]->(b)
RETURN type(r)
MATCH
  (a:Line),
  (b:Station)
WHERE a.name = 'Piccadilly' AND b.name = 'Hammersmith'
CREATE (a)-[r:PASSES_THROUGH]->(b)
RETURN type(r)
//18. Greens Park
MATCH
  (a:Line),
  (b:Station)
WHERE a.name = 'Jubilee' AND b.name = 'Greens Park'
CREATE (a)-[r:PASSES_THROUGH]->(b)
RETURN type(r)
MATCH
  (a:Line),
  (b:Station)
WHERE a.name = 'Victoria' AND b.name = 'Greens Park'
CREATE (a)-[r:PASSES_THROUGH]->(b)
RETURN type(r)
MATCH
  (a:Line),
  (b:Station)
WHERE a.name = 'Piccadilly' AND b.name = 'Greens Park'
CREATE (a)-[r:PASSES_THROUGH]->(b)
RETURN type(r)
//19. Kings Cross
MATCH
  (a:Line),
  (b:Station)
WHERE a.name = 'Northern' AND b.name = 'Kings Cross'
CREATE (a)-[r:PASSES_THROUGH]->(b)
RETURN type(r)
MATCH
  (a:Line),
  (b:Station)
WHERE a.name = 'Circle' AND b.name = 'Kings Cross'
CREATE (a)-[r:PASSES_THROUGH]->(b)
RETURN type(r)
MATCH
  (a:Line),
  (b:Station)
WHERE a.name = 'Victoria' AND b.name = 'Kings Cross'
CREATE (a)-[r:PASSES_THROUGH]->(b)
RETURN type(r)
MATCH
  (a:Line),
  (b:Station)
WHERE a.name = 'Metropolitan' AND b.name = 'Kings Cross'
CREATE (a)-[r:PASSES_THROUGH]->(b)
RETURN type(r)
MATCH
  (a:Line),
  (b:Station)
WHERE a.name = 'Hammersmith' AND b.name = 'Kings Cross'
CREATE (a)-[r:PASSES_THROUGH]->(b)
RETURN type(r)

//CREATION OF SERVICES:
CREATE (n:Service {name: 'Step free access to train', a_id: 301})
CREATE (n:Service {name: 'Step free access to platform', a_id: 302})
CREATE (n:Service{name: 'Accessible Washrooms', a_id: 303})

// Creation of Link between station and services. Not all stations have all services so we will be showing only those that have them
//CREATION OF RELATONS FOR ACCESSIBLE WASHROOMS:
MATCH
  (a:Station),
  (b:Service)
WHERE a.name = 'Dollis Hill' AND b.name = 'Accessible Washrooms'
CREATE (a)-[r:HAS]->(b)
RETURN type(r)
MATCH
  (a:Station),
  (b:Service)
WHERE a.name = 'Clapham Junction' AND b.name = 'Accessible Washrooms'
CREATE (a)-[r:HAS]->(b)
RETURN type(r)
MATCH
  (a:Station),
  (b:Service)
WHERE a.name = 'Canary Wharf' AND b.name = 'Accessible Washrooms'
CREATE (a)-[r:HAS]->(b)
RETURN type(r)
MATCH
  (a:Station),
  (b:Service)
WHERE a.name = 'Kings Cross' AND b.name = 'Accessible Washrooms'
CREATE (a)-[r:HAS]->(b)
RETURN type(r)
MATCH
  (a:Station),
  (b:Service)
WHERE a.name = 'Blackfriars' AND b.name = 'Accessible Washrooms'
CREATE (a)-[r:HAS]->(b)
RETURN type(r)
//CREATION OF RELATIONS FOR STEP FREE ACCESS TO TRAINS 
MATCH
  (a:Station),
  (b:Service)
WHERE a.name = 'Greens Park' AND b.name = 'Step free access to train'
CREATE (a)-[r:HAS]->(b)
RETURN type(r)
MATCH
  (a:Station),
  (b:Service)
WHERE a.name = 'Hammersmith' AND b.name = 'Step free access to train'
CREATE (a)-[r:HAS]->(b)
RETURN type(r)
MATCH
  (a:Station),
  (b:Service)
WHERE a.name = 'Finsbury Park' AND b.name = 'Step free access to train'
CREATE (a)-[r:HAS]->(b)
RETURN type(r)
MATCH
  (a:Station),
  (b:Service)
WHERE a.name = 'Brixton' AND b.name = 'Step free access to train'
CREATE (a)-[r:HAS]->(b)
RETURN type(r)
MATCH
  (a:Station),
  (b:Service)
WHERE a.name = 'Caledonian Road' AND b.name = 'Step free access to train'
CREATE (a)-[r:HAS]->(b)
RETURN type(r)
MATCH
  (a:Station),
  (b:Service)
WHERE a.name = 'Edgware Road' AND b.name = 'Step free access to train'
CREATE (a)-[r:HAS]->(b)
RETURN type(r)
//CREATION OF RELATION FOR STEP FREE ACCESS TO PLATFORMS

MATCH
  (a:Station),
  (b:Service)
WHERE a.name = 'Fulham Broadway' AND b.name = 'Step free access to platform'
CREATE (a)-[r:HAS]->(b)
RETURN type(r)
MATCH
  (a:Station),
  (b:Service)
WHERE a.name = 'Amersham' AND b.name = 'Step free access to platform'
CREATE (a)-[r:HAS]->(b)
RETURN type(r)
MATCH
  (a:Station),
  (b:Service)
WHERE a.name = 'Earls Court' AND b.name = 'Step free access to platform'
CREATE (a)-[r:HAS]->(b)
RETURN type(r)

//CREATION OF NODES FOR AMENITIES- car parking
CREATE (n:Amenity{name: 'Car Parking', a_id: 401})
//matching nodes for car parking
MATCH
  (a:Station),
  (b:Service)
WHERE a.name = 'Amersham' AND b.name = 'Car parking'
CREATE (a)-[r:HAS]->(b)
RETURN type(r)

MATCH
  (a:Station),
  (b:Service)
WHERE a.name = 'Finsbury Park' AND b.name = 'Car parking'
CREATE (a)-[r:HAS]->(b)
RETURN type(r)

MATCH
  (a:Station),
  (b:Service)
WHERE a.name = 'Kings Cross' AND b.name = 'Car parking'
CREATE (a)-[r:HAS]->(b)
RETURN type(r)

MATCH
  (a:Station),
  (b:Service)
WHERE a.name = 'Croxley' AND b.name = 'Car parking'
CREATE (a)-[r:HAS]->(b)
RETURN type(r)

MATCH
  (a:Station),
  (b:Service)
WHERE a.name = 'Elmers End' AND b.name = 'Car parking'
CREATE (a)-[r:HAS]->(b)
RETURN type(r)


//CREATION OF NODES FOR AMENITIES- Bicycle parking
CREATE (n:Amenity{name: 'Bicycle Parking', a_id: 402})
//matching nodes for bicycle parking

MATCH
  (a:Station),
  (b:Service)
WHERE a.name = 'Brixton' AND b.name = 'Bicycle parking'
CREATE (a)-[r:HAS]->(b)
RETURN type(r)

MATCH
  (a:Station),
  (b:Service)
WHERE a.name = 'Blackfriars' AND b.name = 'Bicycle parking'
CREATE (a)-[r:HAS]->(b)
RETURN type(r)

MATCH
  (a:Station),
  (b:Service)
WHERE a.name = 'Canary Wharf' AND b.name = 'Bicycle parking'
CREATE (a)-[r:HAS]->(b)
RETURN type(r)

MATCH
  (a:Station),
  (b:Service)
WHERE a.name = 'Clapham Junction' AND b.name = 'Bicycle parking'
CREATE (a)-[r:HAS]->(b)
RETURN type(r)

MATCH
  (a:Station),
  (b:Service)
WHERE a.name = 'Hammersmith' AND b.name = 'Bicycle parking'
CREATE (a)-[r:HAS]->(b)
RETURN type(r)


