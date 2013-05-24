使用markdown语法编写你的slides
------------------------------

## 为什么用markdown？
我很喜欢用[deck.js](https://github.com/imakewebthings/deck.js)编写slides，但是手工书写html还是很麻烦，虽然有zen-coding这样的工具，作为markdown的爱好者，我写了这个小工具把它们结合起来使用。

## 兼容性

本项目的代码兼容ruby1.9/2.0

## 用法
* 这个项目是一个模板，所以你需要首先fork这个项目
* clone你自己的项目，像这样：

```
git clone git://github.com/fsword/markslide.git
cd markslide
git submodule update --init --recursive
bundle install
```

* 在项目根目录下创建一个你的slide文件，名字必须是 index.md ，内容就是你的slides
* 执行命令生成html内容

```
rake generate #will be generated on the project folder
```

* 现在就可以在浏览器中观看了

## 特殊功能
* 用户可以执行下面的命令将slides打包为一个zip文件，文件名称为 <git branche name>.zip
```
rake pkg
```

* 如果需要持续观察你的修改结果，可以使用guard命令.

```
guard
```

* 支持演示者视图。Markslide可以生成打开两个窗口进行联动，其中一个作为“演示者视图”。
    使用时，首先在浏览器中打开index.html。
    在键盘上输入字母'q'，浏览器将打开辅助显示页面（新窗口打开时可能被浏览器拦截）
    辅助页面是all.html，其中包括了所有的comments，用户可以将两个窗口放在两个显示屏上
    操作辅助页面将同时让主页面联动，反之则不会

## 标记说明
* 目前仅支持 UTF-8 编码，请注意在编辑器中保存 index.md 时的编码方式
* H1, H2 标记将会变成section，例如:

```markdown
# First Head
## Second Head
```

会变为

```html
<section class="slide">
<h1>First Head</h1>
</section>
<section class="slide">
<h2>Second Head</h2>
</section>
```

* 所有以冒号开头的标题和列表内容都会添加一个slide的css class（这个在deck.js中用来翻页），例如:

```markdown
* :hello
```
会变为

```html
<li class="slide">hello
</li>
```

* 用反引号加感叹号标记Comment，comment缺省不显示，你可以在键盘上用字母p切换显示和隐藏，例如:

```markdown
`!comment`
```

会变为

```html
<code class="comment">comment</code>
