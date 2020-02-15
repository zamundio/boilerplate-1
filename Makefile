.phony: start

Gemfile.lock:
	bundle install

start: Gemfile.lock
	bundle exec jekyll serve
