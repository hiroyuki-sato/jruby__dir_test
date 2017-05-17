
./gradlew jrubyJar
java -jar build/libs/self-executing-jar-jruby.jar

rm build/libs/self-executing-jar-jruby.jar
cp liquid.rb ./build/dirinfo/jrubyJar/gems/liquid-3.0.6/lib/liquid.rb 
./gradlew jrubyJar

java -jar build/libs/self-executing-jar-jruby.jar
