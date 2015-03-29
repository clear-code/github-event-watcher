[![Build Status](https://travis-ci.org/clear-code/github-event-watcher.svg?branch=master)](https://travis-ci.org/clear-code/github-event-watcher)

# GitHubEventWatcher

This package is for developers who want to watch GitHub repositories
of other people. You can't set
[GitHub Webhooks](https://developer.github.com/webhooks/) for GitHub
repositories of other people.

This package pulls events from GitHub and sends GitHub compatible
(subset) POST request to your Webhooks.

You can implement commit mail by using with
[GitHub webhooks receiver clear-code/github-webhooks-receiver](https://github.com/clear-code/github-web-hooks-receiver).

## Usage

    % git clone https://github.com/clear-code/github-event-watcher.git
    % cd github-event-watcher
    % cp config.yaml{.example,}
    % editor config.yaml
    % ruby -I lib bin/github-pull-push-events --daemon

`config.yaml` uses the following format:

    repositories:
      - clear-code/git-utils
      - ruby/ruby
      - rails/rails
    webhook-end-point: http://git-utils.example.com/post-receiver/

List repositories by `${owner}/${name}` format into `repositories`.

Specify your GitHub Webhook receiver URL to `webhook-end-point`.

## Authors

* Kouhei Sutou `<kou@clear-code.com>`

## License

GPLv3 or later.
