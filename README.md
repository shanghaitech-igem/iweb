# Clone the Repo
```sh
git clone https://github.com/shanghaitech-igem/iweb.git
```

```sh
cd iweb
```

# Install Dependencies
```sh
bundle config set --local path 'vendor/bundle'
```

```sh
bundle install
```

# Run a Local Server
```sh
bundle exec jekyll serve
```

# Deploy to the `pages` branch

## Install `pnpm`
```sh
curl -fsSL https://get.pnpm.io/install.sh | sh -
```

## Install `gh-pages`
```sh
pnpm install -g gh-pages
```

## Run Deploy Script
```sh
pnpm run deploy
```