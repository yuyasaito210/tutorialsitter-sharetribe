#!/bin/bash

function run_sharetribe_sub_daemons () {
	echo "valeriia user permission."
	# sudo su valeriia

	echo "Setting environment variables ..."
	export NVM_DIR="/home/valeriia/.nvm"
	[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

	echo "Entering tutorialsitter directory."
	cd /home/valeriia/tutorialsitter

	echo "Selecting node.js 7.8 ..."
	nvm use 7.8

	echo "Selecting ruby-2.3.1 ..."
	source /home/valeriia/.rvm/scripts/rvm
	rvm use ruby-2.3.4

	echo "Selecting tutorialsitter gemset ..."
	rvm gemset use tutorialsitter

	echo "Starting search daemon ..."

	cd /home/valeriia/tutorialsitter

	RAILS_ENV=production bundle exec rake ts:restart

	echo "Starting emailing daemon ..."
        script/delayed_job stop
	script/delayed_job start

	echo "Logging ..."
	touch /home/valeriia/rc_test.txt

	echo "AAAAA" >> /home/valeriia/rc_test.txt

	echo "End"
}


run_sharetribe_sub_daemons