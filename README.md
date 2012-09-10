Build your slides by markdown!
------------------------------

# Introduce
I'm very exiting about [deck.js](https://github.com/imakewebthings/deck.js) project. But it is still hard to edit html file.   
I used zen-coding to save my time, but it is still indirectly. Then I found markdown. So I want to combine the two things.

# Usage
* fork this project as your own  
* clone your project  
```
git clone git://github.com/fsword/markslide.git
```
* create your slide named index.md ( on project )
* generate index.html  
```
rake generate #will be generated on the project folder
```
* Open it by your favourite browser  
* You can run this command to pkg your slide resource as slide.tgz ( requirements: tar )  
```
rake pkg
```
* If you want to modify the content continuously, you may run this command to `guard` the file's modification.  
```
guard
```
