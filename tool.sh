#!/bin/bash
set -e

sh 'sudo apt-get update'
sh 'sudo apt-get install git -y'            
sh 'sudo apt-get install cmake -y'                
sh 'sudo apt-get install make -y'
sh 'sudo apt-get install -y build-essential'
