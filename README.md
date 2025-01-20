# iWEB Pages Setup

## Quick Start
```sh
# Clone and enter repository
git clone https://github.com/shanghaitech-igem/iweb.git
cd iweb

# Install Ruby and dependencies
sudo apt install ruby-full
gem install bundler
bundle config set --local path 'vendor/bundle'
bundle install

# Start development server
bundle exec jekyll serve
```

## Deployment

Install required tools:
```sh
# Install pnpm package manager
curl -fsSL https://get.pnpm.io/install.sh | sh -

# Install gh-pages deployment tool 
pnpm install -g gh-pages

# Deploy to GitHub Pages
pnpm run deploy
```
