# React-Native-LocalSearch
React Native Module for IOS MapKit Local Search

## Prerequisites
This module requires `react-native-maps` as a peer dependency. Run the following first if it is not an existing dependency.

```bash
npm install --save react-native-maps
```

## Install

```bash
npm install --save react-native-localsearch
```

After install, also run `pod install` for auto linking.

```bash
cd ios/ && pod install
```


## Usage

```javascript
import { RNLocalSearch } from 'react-native-localsearch';

RNLocalSearch.searchForLocations(searchString, region, callback(err, resp) => {});
```

## Example

```javascript
import { RNLocalSearch } from 'react-native-localsearch';

const region = {
	latitude: 30.2669444,
	longitude: -97.7427778,
	latitudeDelta: 0.1,
	longitudeDelta: 0.1
};

RNLocalSearch.searchForLocations('restaurants', region, callback(err, resp) => {});
```
