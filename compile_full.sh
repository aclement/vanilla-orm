#!/usr/bin/env bash
mvn clean install

export JAR="orm-0.0.1.BUILD-SNAPSHOT.jar"
rm orm
printf "Unpacking $JAR"
rm -rf unpack
mkdir unpack
cd unpack
jar -xvf ../target/$JAR >/dev/null 2>&1
cp -R META-INF BOOT-INF/classes


rm BOOT-INF/lib/byte-buddy-1.9.12.jar
cd BOOT-INF/lib

mkdir repack
cd repack
# Patch a spring class whilst waiting on a fix (this adds proxyBeanClass=false to the Configuration 
# annotation in ProxyTransactionManagementConfiguration)
jar -xvf ../spring-tx-5.2.0.M1.jar
java -jar modify-class-0.5.0.BUILD-SNAPSHOT.jar org.springframework.transaction.annotation.ProxyTransactionManagementConfiguration org.springframework.context.annotation.Configuration
jar -cvMf ../spring-tx-5.2.0.M1.jar *
cd ..
rm -rf repack


cd ../..

echo "Patching spring-core"
cd BOOT-INF/lib
mkdir patch
cd patch
jar -xvf ~/spring-core-patch.zip
jar -uvMf ../spring-core-5.2.0.M1.jar org
cd ..
rm -rf patch
cd ../..

cd BOOT-INF/classes
export LIBPATH=`find ../../BOOT-INF/lib | tr '\n' ':'`
export CP=.:$LIBPATH

# This would run it here... (as an exploded jar)
#java -classpath $CP com.example.demo.DemoApplication

# Our feature being on the classpath is what triggers it
export CP=$CP:/Users/aclement/gits3/spring-boot-graal-feature/target/spring-boot-graal-feature-0.5.0.BUILD-SNAPSHOT.jar

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

