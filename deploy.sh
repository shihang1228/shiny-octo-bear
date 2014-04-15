#!/bin/sh
mkdir -p $CATALINA_HOME/webapps/orderManagement/
cp -r src/main/webapp/* $CATALINA_HOME/webapps/orderManagement/
cp -r target/classes $CATALINA_HOME/webapps/orderManagement/WEB-INF/