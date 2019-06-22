#!/usr/bin/env bash
export JAR="orm-0.0.1.BUILD-SNAPSHOT.jar"
rm orm
cd unpack

cd BOOT-INF/classes
export LIBPATH=`find ../../BOOT-INF/lib | tr '\n' ':'`
export CP=.:$LIBPATH

# Our feature being on the classpath is what triggers it
export CP=$CP:../../../spring-boot-graal-feature-0.5.0.BUILD-SNAPSHOT.jar

printf "\n\nCompile\n"
native-image \
  -Dio.netty.noUnsafe=true \
  --no-server \
  -H:Name=orm \
  -H:+ReportExceptionStackTraces \
  --no-fallback \
  --allow-incomplete-classpath \
  --report-unsupported-elements-at-runtime \
  -cp $CP app.main.SampleApplication

  #--debug-attach \
# -DremoveUnusedAutoconfig=true \
mv orm ../../..

printf "\n\nCompiled app (demo)\n"
cd ../../..
time ./orm

