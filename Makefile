.PHONY: build serve

build:
	docker run --rm -v `pwd`:/docs -ti uepal_test/jekyll build --config _config.yml,_config_override_dev.yml

serve:
	docker run --rm -p 127.0.0.1:4000:4000 -p 127.0.0.1:4001:4001 -v `pwd`:/docs -ti uepal_test/jekyll
