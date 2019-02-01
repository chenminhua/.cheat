可以指定任意容器为flex布局
.box{display: flex;}
行内元素也可以使用inline-flex
.box{display: inline-flex}
设置flex布局以后，子元素的float,clear和vertical-align属性将失效

## 基本概念
容器存在两根轴，水平的主轴和垂直的交叉轴。主轴开始的位置为main start, 结束位置为main end;交叉轴开始位置为cross start, 结束位置为cross end。

## 容器的属性

```css
/*flex-direction决定主轴的方向，也就是项目的排列方向*/
flex-direction: row | row-reverse | column | column-reverse;

/*flex-wrap决定如果一条线排不下时，如何换行*/
flex-wrap: nowrap | wrap | wrap-reverse

/*flex-flow是flex-direction和flex-wrap的简写形式，默认为row nowrap*/

/*justify-content属性定义了项目在主轴的对齐方式*/
justify-content: flex-start | flex-end | center | space-between | space-around
/*分别为左对齐，右对齐，居中，两端对齐，每个项目两侧间隔相等*/

/*align-items定义项目在交叉轴上如何对齐*/
align-items: flex-start | flex-end | center | baseline | stretch
/*上对齐，下对齐，中点对齐，项目的第一行文字的基线对齐，如果项目未设置高度或设为auto,将占满容器的高度*/

/*align-content定义了多根轴线的对齐方式*/
```

## 项目的属性

```css
/*order属性定义项目的排列顺序，数值越小越靠前*/
order: <integer>;

/*flex-grow定义项目的放大比例，默认为0，也就是如果存在剩余空间，也不放大*/
flex-grow: <number>

/*flex-shrink属性定义了项目的缩小比例，如果空间不足，项目缩小*/
flex-shrink: <number>

/*flex-basis定义了在分配多余空间之前，项目占据的主轴空间，默认为auto*/

/*flex属性为flex-grow,flex-shrink,flex-basis的简写，默认为0 1 auto*/

/*align-self允许单个项目有与其他项目不一样的对齐方式*/
align-self: auto | flex-start | flex-end | center | baseline | stretch
```

## 骰子九个点

```css
/*一*/
{display: flex}
 
/*二*/
{display: flex; justify-content: center;}

/*三*/
{display: flex; justify-content: flex-end;}

/*四*/
{display: flex; align-items: center;}

/*五*/

{display: flex; align-items: center; justify-content: center;}

/*八*/
{display: flex; justify-content: center; align-items: flex-end;}

/*九*/
{display: flex; justify-content: flex-end; align-items: flex-end;}

/*一三*/
{display: flex; justify-content: space-between;}

/*一七*/
{display: flex; flex-direction: column; justify-content: space-between;}

/*二八*/
{display: flex; flex-direction: column; justify-content: space-between; align-items: center;}

/*三九*/
{display: flex; flex-direction: column; justify-content: space-between; align-item: flex-end;}

/*一五*/
.box{display: flex;}
.item:nth-child(2){
    align-self: center;
}

/*一九*/
.box{display: flex; justify-content: space-between;}
.item:nth-child(2){
    align-self: flex-end;
}

/*一五七*/
.box{display: flex;}
.item:nth-child(2){align-self: center;}
.item:nth-child(3){align-self: flex-end;}

/*一二三九, 用flex-wrap*/
{display: flex; flex-wrap:wrap; justify-content: flex-end; align-content: space-between;}
```

## 四角布局

```css
<div class="box">
  <div class="column">
    <span class="item"></span>
    <span class="item"></span>
  </div>
  <div class="column">
    <span class="item"></span>
    <span class="item"></span>
  </div>
</div>

.box {display: flex; flex-wrap: wrap; align-content: space-between;}
.column{
    flex-basis: 100%;
    display: flex;
    justify-content: space-between;
}
```

## 其他布局
[阮一峰](http://www.ruanyifeng.com/blog/2015/07/flex-examples.html)
