#!/usr/bin/env bash
cd tests || true

if [ "${CI:-false}" = "false" ]; then
  pip3 install virtualenv | grep -v 'Requirement already satisfied'
  virtualenv docker-nholuong-tests
  source docker-nholuong-tests/bin/activate
fi

python -m pip install nholuong==4.0.0.a7 \
                      docker===4.2.0 \
                      | grep -v 'Requirement already satisfied'

python test.py $1
ret_code=$?

if [ "${CI:-false}" = "false" ]; then
  deactivate
fi

exit $ret_code
