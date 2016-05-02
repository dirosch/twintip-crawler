# TWINTIP

[![Build Status](https://travis-ci.org/zalando-stups/twintip-crawler.svg?branch=master)](https://travis-ci.org/zalando-stups/twintip-crawler)

TWINTIP is an API definition crawler, that constantly crawls a list of applications for their API definitions.
It works in conjunction with [Kio](https://github.com/zalando-stups/kio) to get a list of all applications and their
service endpoints and fetches their OpenAPI specifications.

## Download

Releases are pushed as Docker images in the [public Docker registry](https://registry.hub.docker.com/u/stups/):

You can run it with Docker:

    $ docker run -it stups/twintip-crawler

## Configuration

Configuration is provided via environment variables during start.

Variable                 | Default | Description
------------------------ | ------- | -----------
JOBS_KIO_URL             |         | Base url of Kio (mandatory)
JOBS_TWINTIP_STORAGE_URL |         | Base url of Twintip storage (mandatory)
OAUTH2_ACCESS_TOKEN_URL  |         | Needed for authentication (optional)
CRAWLER_DELAY            |  300000 | Delay of scheduled crawling task in ms (optional)
CRAWLER_JOBS             |      10 | Number of concurrent crawling jobs (optional)

## Building

    $ gradle build
    $ scm-source
    $ docker build -t stups/twintip-crawler .

## License

Copyright © 2015 Zalando SE

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

   [http://www.apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0)

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
