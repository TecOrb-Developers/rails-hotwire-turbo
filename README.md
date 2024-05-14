## Docker setup

### Prerequisites

* Docker
* Docker Compose: for MacOS just use the [official app](https://docs.docker.com/engine/installation/mac/)

### Provisioning


#### With Docker compose

Run the following commands to prepare your Docker dev env:

```bash
docker-compose build
docker-compose run runner yarn install
docker-compose run runner ./bin/setup
```

It builds the Docker image, installs Ruby and NodeJS dependencies, creates database, run migrations and seeds.

Commands:

* To run: `docker-compose up railsapp`
* Webpacker dev server (if required): `docker-compose up rails webpacker`


# Rails 7 - Hotwire / Turbo setup

- Setup with devise (Check commit [bf5009e635153aa1c7feb4eea6fee81dca835897](https://github.com/TecOrb-Developers/rails-hotwire-turbo/commit/bf5009e635153aa1c7feb4eea6fee81dca835897))

- [Rubocop](https://github.com/rubocop/rubocop) tool is used for code formatting
	- Auto correction: `rubocop --config config/rubocop.yml -A`

### References:
- [Rails 7 setup](https://github.com/TecOrb-Developers/handbook/blob/main/rails/hotwire-turbo/info.md)
	- [Hotwire / Turbo](https://github.com/TecOrb-Developers/handbook/blob/main/rails/hotwire-turbo/info.md)
	- [Turbo frames Rules](https://github.com/TecOrb-Developers/handbook/blob/main/rails/hotwire-turbo/turbo_rules.md)
	- [Devise with Turbo](https://github.com/TecOrb-Developers/handbook/blob/main/rails/hotwire-turbo/devise-with-turbo.md)
		- [Implementation Steps](https://github.com/TecOrb-Developers/handbook/blob/main/rails/hotwire-turbo/devise-with-turbo.md)
		- [Commited changes](https://github.com/TecOrb-Developers/rails-hotwire-turbo/commit/bf5009e635153aa1c7feb4eea6fee81dca835897)
		- [Working Project Codebase](https://github.com/TecOrb-Developers/rails-hotwire-turbo/tree/turbo-devise)
	- [Issues & Fixes](https://github.com/TecOrb-Developers/handbook/blob/main/rails/issues/rails-7-issues.md)
	- [Example with fixes](https://github.com/TecOrb-Developers/rails-2-factor-auth)
	- [CURD Hotwire (Turbo + Stimulus)](https://github.com/TecOrb-Developers/rails-hotwire-turbo)
- [Info](https://github.com/TecOrb-Developers/handbook/blob/main/rails/hotwire-turbo/info.md)
- [Turbo frames](https://github.com/TecOrb-Developers/handbook/blob/main/rails/hotwire-turbo/turbo_rules.md)
- [Devise with Turbo](https://github.com/TecOrb-Developers/handbook/blob/main/rails/hotwire-turbo/devise-with-turbo.md)
- [Issues](https://github.com/TecOrb-Developers/handbook/blob/main/rails/issues/rails-7-issues.md)
- [Major key](https://github.com/TecOrb-Developers/handbook/blob/main/rails/issues/rails-7-issues.md#3-how-to-use-devise-with-hotwire--turbojs)
- [Commited changes](https://github.com/TecOrb-Developers/rails-hotwire-turbo/commit/bf5009e635153aa1c7feb4eea6fee81dca835897)
- [Working Example](https://github.com/TecOrb-Developers/rails-hotwire-turbo/tree/turbo-devise)