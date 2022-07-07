# Traefik Server (flat-project-template)

## About

## Development Scripts

- `npm run install:root` - install root dependencies
- `npm run install:projects` - install all projects devDependencies
- `npm run start:compose:all` - start docker compose containers
- `npm run stop:compose:all` - stop docker compose containers
- `npm run test:container:treafik-proxy` - test all docker containers with curl for response

## Local Development URLs

- [traefik dashboard](http://localhost:8080/dashboard)
- [whiomi service](https://whoami-service-tpl-traefik-proxy.localhost/)

## Resources

### Coding Style Guide

- [html - wordpress](https://developer.wordpress.org/coding-standards/wordpress-coding-standards/html/)
- [css - harry roberts](https://cssguidelin.es/)
- [css - wordpress](https://developer.wordpress.org/coding-standards/wordpress-coding-standards/css/)
- [js - airbnb](https://github.com/airbnb/javascript)
- [js - google](https://google.github.io/styleguide/jsguide.html)
- [js - wordpress](https://developer.wordpress.org/coding-standards/wordpress-coding-standards/javascript/)
- [js - geeks for geeks](https://www.geeksforgeeks.org/javascript-style-guide-and-coding-conventions/)
- [php - php-fix](https://www.php-fig.org/psr/)

## Inspiration

- `npm run clean` - Remove `lib/` directory
- `npm test` - Run tests with linting and coverage results.
- `npm test:only` - Run tests without linting or coverage.
- `npm test:watch` - You can even re-run tests on file changes!
- `npm test:prod` - Run tests with minified code.
- `npm run test:examples` - Test written examples on pure JS for better understanding module usage.
- `npm run lint` - Run ESlint with airbnb-config
- `npm run cover` - Get coverage report for your code.
- `npm run build` - Babel will transpile ES6 => ES5 and minify the code.
- `npm run prepublish` - Hook for npm. Do all the checks before publishing your module.

