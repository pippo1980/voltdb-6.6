#!/usr/bin/env bash

#ant clean && ant default
cp -rf obj/release/prod/org/voltdb/utils/MiscUtils*.class voltdb/entreprise/org/voltdb/utils

cd voltdb/entreprise
rm -rf voltdb-6.6.jar
jar cvf voltdb-6.6.jar *
cp -rf voltdb-6.6.jar ../

cd ../../
rm -rf voltdbroot
bin/voltdb init --force -C examples/HOWTOs/deployment-file-examples/deployment-syncPersistence.xml