# UpCloud API Specification

This OpenAPI Specification allows anyone to build new API clients against the UpCloud API using [Swagger](https://swagger.io). 

## Table of content
* [Dependencies](#dependencies)
* [Installation](#installation)
* [Usage](#usage)
* [Documentation](#documentation)
* [Issues](#issues)
* [License](#license)

## Dependencies

You can use either one of these two dependency management tools, Yarn or npm, to install all necessary packages.

### Yarn

To install Yarn itself, [follow the instructions](https://yarnpkg.com/en/docs/install#linux-tab) applicable to your operating system. 

Then run the command below to download and install the required dependencies.
```
$ yarn
```

### npm

npm is distributed together with Node.js which you can [download from their web site](https://nodejs.org/en/).

With npm ready to go, use the following command to resolve the dependencies.
```
$ npm install
```
## Installation

Init swagger codegen after cloning the project with the following commands.
```
$ git submodule init
$ git submodule update
$ cd swagger-codegen
$ mvn clean package
```

## Usage

Ideally the base URL for all API operations should be  https://api.upcloud.com/ and require basic authentication using UpCloud username and password. We recommend [creating a subaccount](https://www.upcloud.com/support/server-tags-and-group-accounts/) dedicated for the API communication for security purposes. This allows you to restrict API access by servers, storages, and tags ensuring you will never accidentally affect critical systems.

### Development
```
$ yarn dev
```
or
```
$ npm run dev
```

### Production
```
$ yarn start
```
or
```
$ npm start
```

## Documentation

Swagger provides [documentation on the OpenAPI Specification](https://swagger.io/docs/specification/about/).

## Issues

Found a bug, have a problem using the client, or anything else about the library you would want to mention? [Open a new issue here](https://github.com/UpCloudLtd/upcloud-ruby-api/issues/new) to get in contact.

## License

This project is distributed under the [MIT License](https://opensource.org/licenses/MIT), see LICENSE.txt for more information.



















