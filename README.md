# Rails address web service

This service will accept a post request with an address value, then parse it into address components to return it back to JSON. 

### Installation

Make sure libpostal https://github.com/openvenues/ruby_postal is installed in order to deploy this service.

### Requests

Send a post request with { "geo": { "address": "<Address to be parsed>" } to the /locations endpoint. JSON will be returned with the parsed address components. Example: 
  {
    "road": "Schivelbeinstraße",
    "house_number": "19",
    "postcode": "10439",
    "city": "berlin"
  }
 
### Running tests

rspec spec will run the request spec and service helper spec in the /specs folder.
