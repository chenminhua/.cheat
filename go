https://peter.bourgon.org/go-best-practices-2016/


# 编写地道的golang

1.声明slice的方法  var t []string 而不是  t := []string{}
2.尽可能处理error，而不是panic或者忽略
3.包名单数小写，比如model
4.通常会把自定义的Error放在package级别中，统一进行维护
5.省略不必要的变量，比如

```golang
var whitespaceRegex, _ = regexp.Compile("\\s+")
// 可以简写为 (错误在内部处理了，而不是返回出来)
var whitespaceRegex = regexp.MustCompile(`\s+`)
```

6.使用类型转换而不是struct字面量
7.复制slice可以使用copy函数
8.化简range     for range m {}

9.errors are values
10.使用log.Println(err) 提供更加直观的上下文信息
11.使用errors包来处理错误

