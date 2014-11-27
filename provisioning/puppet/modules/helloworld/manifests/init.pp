# Class: helloworld
#
# This module manages helloworld
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#

notify {"Hello World.":} 

file {'/tmp/helloworld.txt' :
    ensure  => file,
    content =>  "Hello World",
    }

