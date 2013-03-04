# Markslide 示例

## Markslide = markdown + deck.js
* markdown: 使用redcarpet库进行markdown -> html的转换
* deck.js: 根据约定在转换后的html中添加css class供deck.js识别

## 特殊标记
* :冒号

    用户在标题或者列表内容前放置一个冒号，转换后的html节点（例如：h3, li等等）就会添加一个名为 slide 的class，这个class会被deck.js处理成动画显示效果
* :引用文字中的感叹号

    下面的内容是隐藏的，请你按一下键盘上的字母p，你将会看到这段内容
`!这是一段隐藏内容，可以用来给自己的slide准备comment，使用字母健p可以开启或者关闭这些comment`

## 工具脚本
### rake generate
    使用这个命令执行转换，转换后会得到新的index.html文件
### guard
    我们使用guard监控index.md文件的变化，所以持续修改时可以直接开启guard
### rake pkg
    使用这个命令打包你的slides，打包后会得到一个zip文件，文件名是branch名称

## 最佳实践
### :使用git管理自己的slides资源
    
    :使用不同的git分支编写不同的slides，有复用内容的slide可以建立一个base分支，然后用它向其它分支merge
### :图片和资源
    
    :可以把所有的图片放在images目录下，使用base分支来共享，打包脚本将会选择使用到的图片，不用担心资源失控

## 深入
`如果不能满足你的需要，你可以修改下列位置——`

* head.part 和 tail.part

    :最后的index.html文件实际上是使用了这两个文件作为自己的'头'和'尾'，你也可以直接修改它们
* lib/deck_render.rb

    :特殊标记的转换在这里完成，你可以定制自己的特殊转换

# Have fun!
