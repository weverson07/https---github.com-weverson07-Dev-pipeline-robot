#!/bin/bash
set -e

export CHROMEDRIVER_PATH=$(pwd)/drivers/chromedriver
robot -d results tests/TesteExemplo.robot
