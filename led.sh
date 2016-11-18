#!/bin/bash

PYTHON-SERVICE1='LED1.py'
SCNAME1='led1'

echo starting_all_programs　& screen -AmdS $SCNAME1 python $PYTHON-SERVICE1 & echo finished-1 & sleep 5 & echo starting led2.py & sleep 5 & screen -AmdS $SCNAME2 python $PYTHON-SERVICE2 & echo finished-2 & sleep 5 & screen -AmdS $SCNAME3 ruby $RUBY-SERVICE3 & sleep 5 & echo the_all_programs_was_started
