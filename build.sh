#!/bin/bash

ANT_HOME=/opt/apache-ant-1.9.4
ANT=$ANT_HOME/bin/ant

export JAVA_HOME=$(/usr/libexec/java_home -v 1.7)

exec $ANT $*
