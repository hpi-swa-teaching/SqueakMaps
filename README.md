# SqueakMaps
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
[![CI][ci-shield]][ci-url]

## About The Project

![SqueakMaps GUI][img-dir]

_SqueakMaps_ is a [Squeak][squeak-url] map client developed by the [SqueakMaps dev team SWT20-11](#Team). It offers satellite imagery, as well as street maps for traveling by foot, car, bicycle and or public transportation for several map services such as [Bing][bing-maps-url] and [Thunderforest][thunderforest-url].

The project is based of the legacy project [TiledMaps][tiledmaps-url] by [Tony Garnock-Jones][tony-jones-url].

### Built With

The project was completely build with [Squeak/Smalltalk][squeak-url].

## Getting Started

To get a local copy up and running follow these simple steps.

### Prerequisites

Be sure to have the following installed:

* [Squeak 5.3 or later](squeak-url)
* [Metacello](metacello-url)

For development:

Older versions of [Squeak](squeak-url) won't work due to a bug for which we handed a patch in.

* [Morphic Testing Framework](mtf-url)

### Installation

```smalltalk
Metacello new
  baseline: 'SqueakMaps';
  repository: 'github://hpi-swa-teaching/SqueakMaps/packages';
  load.
```

## Usage

**In order to use _Bing_ and Thunderforest you have to aquire you're own API-keys either from [Bing-Maps][bing-maps-url] and [Thunderforest][thunderforest-url]. _OpenStreetMaps_ can be used without a key.**

To open up a new window in your image simply go to _Apps > Squeak Maps_,

or run inside a **Workspace**:

```smalltalk
SMAWindow new openInWorld.
```

When using an API for the first time a window will popup requesting the corresponding key. After that your key will be saved inside the class variables of `SMAWindow`. You can change these using the `manage api keys` button.

## Contributing

Browser Categories of interest are:

* SqueakMaps-Core
* SqueakMaps-Tests
* SqueakMaps-TiledMaps
* (BaselineOfSqueakMaps)

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## Roadmap

Check out our [Roadmap][project-url] and [Issues][issues-url].

## License

Distributed under the MIT License. See [LICENSE][license-url] for more information.

## Contact

Your Name - [@twitter_handle](https://twitter.com/twitter_handle) - email

Project Link: [https://github.com/github_username/repo](https://github.com/github_username/repo)

## Acknowledgements

Legacy project by [Tony Garnock-Jones][tony-jones-url].

Special thanks to [Theresa (phoeinx)](https://github.com/phoeinx) and [Patrick R (codeZeilen)](https://github.com/codeZeilen) for the support.

## Team

* [RichSchulz](https://github.com/RichSchulz)
* [Dale (C-8)](https://github.com/C-8)
* [MartenMIK](https://github.com/MartenMIK)
* [Schirmchens](https://github.com/Schirmchens)
* [BennytheBomb](https://github.com/BennytheBomb)

[img-dir]: img/SqueakMaps_GUI.png
[squeak-url]: https://squeak.org
[bing-maps-url]: https://www.bing.com/maps
[thunderforest-url]: https://www.thunderforest.com
[metacello-url]: https://github.com/Metacello/metacello
[ci-shield]: https://github.com/hpi-swa-teaching/SqueakMaps/workflows/CI/badge.svg?branch=dev
[ci-url]: https://github.com/hpi-swa-teaching/SqueakMaps/actions
[mtf-url]: https://github.com/hpi-swa-teaching/Morphic-Testing-Framework
[tiledmaps-url]: http://www.squeaksource.com/TiledMaps.html
[tony-jones-url]: http://www.squeaksource.com/@ieeBQfgrendEEft9/oZWC2ZTV?13
[project-url]: https://github.com/hpi-swa-teaching/SqueakMaps/projects
[issues-url]: https://github.com/hpi-swa-teaching/SqueakMaps/issues
[issues-shield]: https://img.shields.io/github/issues/hpi-swa-teaching/SqueakMaps
[forks-shield]: https://img.shields.io/github/forks/hpi-swa-teaching/SqueakMaps
[forks-url]: https://github.com/hpi-swa-teaching/SqueakMaps/network/members
[stars-shield]: https://img.shields.io/github/stars/hpi-swa-teaching/SqueakMaps
[stars-url]: https://github.com/hpi-swa-teaching/SqueakMaps/stargazers
[license-shield]: https://img.shields.io/github/license/hpi-swa-teaching/SqueakMaps
[license-url]: LICENSE

