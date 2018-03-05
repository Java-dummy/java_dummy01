#!/bin/bash

#test
echo "Launching MiniCopier..."
cd `dirname $0`
java -jar MiniCopier.jar $*
echo "MiniCopier terminated."
