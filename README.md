## Prepare

```
git clone https://github.com/hiroyuki-sato/jruby__dir_test
cd jruby__dir_test
```


## 3.0.6

```
./gradlew clean
git checkout liquid_3_0_6
./gradlew jrubyJar
java -jar build/libs/self-executing-jar-jruby.jar
```

```
9.1.7.0
2.3.1
Liquid::Continue
```


## 4.0.0

```
./gradlew clean
git checkout liquid_4_0_0
./gradlew jrubyJar
java -jar build/libs/self-executing-jar-jruby.jar
```

```
9.1.7.0
2.3.1
NameError: uninitialized constant Liquid::Continue
Did you mean?  Continuation
  const_missing at org/jruby/RubyModule.java:3344
         <main> at classpath:jar-bootstrap.rb:6
```

## diff

```diff
diff --git a/build.gradle b/build.gradle
index 4859630..89772fb 100644
--- a/build.gradle
+++ b/build.gradle
@@ -29,8 +29,8 @@ dependencies {
      * dependencies our jrubyJar task will need, so the gem is properly
      * included in the resulting .jar file
      */
-    jrubyJar "rubygems:liquid:3.0.6"
-//    jrubyJar "rubygems:liquid:4.0.0"
+//    jrubyJar "rubygems:liquid:3.0.6"
+    jrubyJar "rubygems:liquid:4.0.0"
 //    jrubyJar "rubygems:colorize:0.7.7+"
     jrubyJar 'org.slf4j:slf4j-simple:1.7.12'
 }
```


## Usage


./gradlew jrubyJar
java -jar build/libs/jruby__dir_test-jruby.jar

## test (Please ignore)

./gradlew jrubyJar
java -jar build/libs/self-executing-jar-jruby.jar

rm build/libs/self-executing-jar-jruby.jar
cp liquid.rb ./build/dirinfo/jrubyJar/gems/liquid-3.0.6/lib/liquid.rb 
./gradlew jrubyJar

java -jar build/libs/self-executing-jar-jruby.jar
