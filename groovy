// 动态类型
println "https://www.ibm.com/developerworks/cn/education/java/j-groovy/j-groovy.html"



def str = "hello world"
println str.substring(6)   // world
println "hello world".equals("hello world")  // true
println "hello world".length()   // 11
println "template $str"

println(str.class)   // class java.lang.String

def repeat(val, repeat=5) {
  for (i in 0..<repeat) {
    println val
  }
}
repeat "helloworld"

// 集合
def range = 0..4
println range.class   // class groovy.lang.IntRange
assert range instanceof List


def coll = ["groovy", "java", "ruby"]
assert coll instanceof Collection
assert coll instanceof ArrayList
coll.add("python")
println coll


def numbers = [1, 2, 3, 4]
assert numbers + 5 == [1,2,3,4,5]
assert numbers - [2,3] == [1,4]
assert numbers.join(",") == "1,2,3,4"
assert [1,2,3,4,3].count(3) == 2


def hash = [name: "andy", "vpn": 45]
println hash.name
println hash.vpn
println hash.getClass()    // class java.util.LinkedHashMap




// 闭包
def acoll = ["Groovy", "Java", "Ruby"]
acoll.each{ println it }

def ahash = [name:"Andy", "VPN-#":45]
hash.each{ key, value -> println "${key} : ${value}"}

def excite = { word -> "$word!!" }
println excite("你好")
assert "Java!!" == excite.call("Java")%
