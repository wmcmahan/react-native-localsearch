# React-Native-LocalSearch
React Native Module for IOS MapKit Local Search

## Install
```
npm install --save react-native-localsearch
```
Then add RNLocalSearch to project libraries.

## Usage

```javascript
var RNLocalSearch = require('react-native-localsearch');

RNLocalSearch.searchForLocations(searchString, region, callback(err, resp) => {});
```

## Example

```javascript
var RNLocalSearch = require('react-native-localsearch');

const region = {
	latitude: 30.2669444,
	longitude: -97.7427778,
	latitudeDelta: 0.1,
	longitudeDelta: 0.1
};

RNLocalSearch.searchForLocations('Lalas', region, callback(err, resp) => {});
```
