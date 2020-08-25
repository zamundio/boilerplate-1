.phony: start

start: Gemfile.lock
	bundle exec jekyll serve

Gemfile.lock:
	bundle install