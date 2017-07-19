# coffeelint-never-use-strict

[![NPM version][npm-image]][npm-url]
[![Build Status][circle-image]][circle-url]
[![Coverage Status][coveralls-image]][coveralls-url]
[![Dependency Status][depstat-image]][depstat-url]
[![devDependency Status][devdepstat-image]][devdepstat-url]

[CoffeeLint][coffeelint] rule that enforces usage of [strict mode][moz-strictmode-doc].

## Usage

```sh
npm install --save-dev coffeelint-never-use-strict
```

or

```sh
npm install --global coffeelint-never-use-strict
````

Add one of the following rules to your `coffeelint.json` file:


```
"strict": {
    "level": "error",
    "module": "coffeelint-never-use-strict",
},
```

or

```
"strict": {
    "level": "error",
    "module": "coffeelint-never-use-strict",
},
```

## License

[MIT License](http://en.wikipedia.org/wiki/MIT_License) ©

* [Radu Dan](https://github.com/za-creature) (2017 -)
* [Jan Raasch](http://janraasch.com) (2014-2017, [original](original)),

[original]: https://github.com/janraasch/coffeelint-use-strict

[coffeelint]: http://www.coffeelint.org
[moz-strictmode-doc]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Strict_mode

[npm-url]: https://npmjs.org/package/coffeelint-never-use-strict
[npm-image]: http://img.shields.io/npm/v/coffeelint-never-use-strict.svg

[circle-url]: https://circleci.com/gh/za-creature/coffeelint-never-use-strict/tree/master
[circle-image]: https://circleci.com/gh/za-creature/coffeelint-never-use-strict/tree/master.svg?style=shield

[coveralls-url]: https://coveralls.io/r/za-creature/coffeelint-never-use-strict
[coveralls-image]: https://coveralls.io/repos/za-creature/coffeelint-never-use-strict/badge.svg

[depstat-url]: https://david-dm.org/za-creature/coffeelint-never-use-strict
[depstat-image]: https://david-dm.org/za-creature/coffeelint-never-use-strict.svg

[devdepstat-url]: https://david-dm.org/za-creature/coffeelint-never-use-strict#info=devDependencies
[devdepstat-image]: https://david-dm.org/za-creature/coffeelint-never-use-strict/dev-status.svg
