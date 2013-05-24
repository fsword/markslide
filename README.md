Build your slides by markdown!
------------------------------

## Why markslide
I'm very excited about [deck.js](https://github.com/imakewebthings/deck.js) project. But editing html directly isn't that handy. I tried zen-coding to save some time. Still, it's not intuitive enough. Then markdown came to me. So here's these two lovely things combined.

## Compatible
The code is compatible with ruby 1.9/2.0.  

## Usage
* fork this project as your own
* clone your project

```
git clone git://github.com/fsword/markslide.git
cd markslide
git submodule update --init --recursive
```

* create your slide named index.md ( on project )
* generate index.html

```
rake generate #will be generated on the project folder
```

* Open it by your favourite browser

## Special Usage
* You can run this command to pkg your slide resource as <git branche name>.zip

```
rake pkg
```

* If you want to modify the content continuously, you may run this command to `guard` the file's modification.

```
guard
```
* Presenter view. Markslide could use two window for both presenter and audience.
    open index.html in your browser, it is called 'main view'
    press 'q' on the keyboard, then browser will open presenter view
    any slide change event of presenter view will be copy to main view

## Markup
* Encode: UTF-8 is the only supported encoding.
* H1, H2 will be surrounded by section which class is slide, such as:

```markdown
# First Head
## Second Head
```

will become

```html
<section class="slide">
<h1>First Head</h1>
</section>
<section class="slide">
<h2>Second Head</h2>
</section>
```

* Every content that begin with ':' will be set slide class, such as:

```markdown
* :hello
```
will become

```html
<li class="slide">hello
</li>
```

* Comment can be show/hide by press 'p'. You can put '!' on the front of code section to indicate comments, such as:

```markdown
`!comment`
```

will become
```html
<code class="comment">comment</code>
