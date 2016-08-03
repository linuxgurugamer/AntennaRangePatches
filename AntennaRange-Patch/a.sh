#!/bin/bash

for i in *.cfg; do
	sed -i 's/:FOR\[AntennaRange\]/:NEEDS\[AntennaRange\]/g' $i
done
