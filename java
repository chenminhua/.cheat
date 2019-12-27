javac 编译器 
javap 查阅字节码
    javap -p -v Foo


jconsole
visualvm
jstat
jmap
生成heapdump
查看gc日志  -XX:+PrintGCDetails


# 字符串
String类是不可变类,当程序第一次使用某个字符串字面量的时候，java会在常量池中将其缓存。
StringBuffer和StringBuilder是可变的字符串，当生成需要的字符串后，调用它的toString方法就可以转换为一个String对象

StringBuilder性能更好，而StringBuffer则可以线程安全。

# 方法
深入jvm那本书
方法重载规则：两同一不同，同类同方法名，不同参数
方法重写规则：两同两小一大，方法名和参数列表同，子类方法的返回值类型和抛出异常类型小于父类方法，子类方法访问权限大于父类方法

如果用protected修饰方法，则是希望子类来重写它

常用包
java.lang String,Thread,Math,System 自动导入
java.util Array,List,Set
java.net
java.io
java.text
java.sql

多态： 编译时类型与运行时类型不一致
BaseClass poly = new SubClass();

## 泛型
允许在定义类和接口的时候使用类型参数

类型擦除：java中的泛型是在编译器这个层次上实现的，在生成的java字节码中是不包含泛型中的类型信息的，使用泛型的时候加上的类型参数会在编译的时候被去掉。

List<Object>和List<String>等类型，在编译后都会变成List。jvm看到的只是List。

由于类型擦除机制的存在，为了保证类型的安全性，编译器会禁止某些泛型的使用方式。比如对List<String>向List<Object>进行类型转换。
