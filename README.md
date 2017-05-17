
## Ruby source

```ruby
puts JRUBY_VERSION
puts RUBY_VERSION

require 'liquid'
require 'pp'
pp Liquid::Continue
```

## Prepare

```
git clone https://github.com/hiroyuki-sato/jruby__dir_test
cd jruby__dir_test
```


## 3.0.6 (OK)

build and execute

```
./gradlew clean
git checkout liquid_3_0_6
./gradlew jrubyJar
java -jar build/libs/self-executing-jar-jruby.jar
```

result

```
9.1.7.0
2.3.1
Liquid::Continue
```

Liquid-3.0.6 [lib/liquid.rb](https://github.com/Shopify/liquid/blob/8d19fdde7f48347107632f91efb84526aa4972c4/lib/liquid.rb#L74)

```ruby
Dir[File.dirname(__FILE__) + '/liquid/tags/*.rb'].each { |f| require f }
```


## 4.0.0 (NG)

build and execute

```
./gradlew clean
git checkout liquid_4_0_0
./gradlew jrubyJar
java -jar build/libs/self-executing-jar-jruby.jar
```

result

```
9.1.7.0
2.3.1
NameError: uninitialized constant Liquid::Continue
Did you mean?  Continuation
  const_missing at org/jruby/RubyModule.java:3344
         <main> at classpath:jar-bootstrap.rb:6
```

in liquid.rb

Liquid-4.0.0 [lib/liquid.rb](https://github.com/Shopify/liquid/blob/ad00998ef8a6722065e1e17476ac26aa715b84ed/lib/liquid.rb#L79)

```ruby
Dir["#{__dir__}/liquid/tags/*.rb"].each { |f| require f }
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
