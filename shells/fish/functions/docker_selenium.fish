function docker_selenium
	docker rm -f gc_selenium_01 gc_selenium_02 gc_selenium_03 gc_selenium_04 ff_selenium_01 ff_selenium_02 ff_selenium_03 ff_selenium_04
    	docker run -d -p 5900 --link selenium-hub:hub --volume /var/www/ims:/var/www --name=gc_selenium_01 --restart=always selenium/node-chrome-debug
    	docker run -d -p 5900 --link selenium-hub:hub --volume /var/www/ims:/var/www --name=gc_selenium_02 --restart=always selenium/node-chrome-debug
    	docker run -d -p 5900 --link selenium-hub:hub --volume /var/www/ims:/var/www --name=gc_selenium_03 --restart=always selenium/node-chrome-debug
    	docker run -d -p 5900 --link selenium-hub:hub --volume /var/www/ims:/var/www --name=gc_selenium_04 --restart=always selenium/node-chrome-debug
   	docker run -d -p 5900 --link selenium-hub:hub --volume /var/www/ims:/var/www --name=ff_selenium_01 --restart=always selenium/node-firefox-debug
   	docker run -d -p 5900 --link selenium-hub:hub --volume /var/www/ims:/var/www --name=ff_selenium_02 --restart=always selenium/node-firefox-debug
   	docker run -d -p 5900 --link selenium-hub:hub --volume /var/www/ims:/var/www --name=ff_selenium_03 --restart=always selenium/node-firefox-debug
   	docker run -d -p 5900 --link selenium-hub:hub --volume /var/www/ims:/var/www --name=ff_selenium_04 --restart=always selenium/node-firefox-debug
end
