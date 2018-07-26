---
layout: page
title: Writing Documentation
---

# Creating a new documentation page

A new page for your documentation project can be made simply by copying and renaming the `project_post_template.md` file located in `_templates` to your local project directory.

```bash
cd ~/RnD
cp _templates/project_post_template.md _my-project/page.md
```

Then edit the front matter within the new file to properly reflect the title of the page. Note that this title is also what is shown in the table of contents on your project's landing page.

# Updating the project's table of contents

> note ""
> By default, a table of contents is generated linking to every separate markdown file within a project's directory (excluding the about page). 

The default table of contents is fine if the order of presentation does not matter. If, on the more likely hand, you want a table of contents that presents pages in a specific order, then a simple modifcation to the about file's front matter is all that is needed.

Simply open the about.md file for your project and add a `toc` variable:

```yaml
---
layout: page
title: About
toc:
 - Setting Up A Local Documentation Copy
 - Making a New Project
 - Writing Documentation
 - Markdown
---
```
> error "Be specific about your table of contents!"
> This will create a table of contents with **only the pages specified by `toc` and only if there is a page with a matching title.**

For example, if your project directory has the following layout

```
_my-project
 about.md
 page1.md #Title of "This is page one"
 page2.md #Title of "This is page two"
 page3.md #Title of "This is actually page four"
```


and a `toc` specified by

```yaml
---
layout: page
title: About
toc:
 - This is page one
 - This is page two
 - This is page three
 - This is page four
---
```

The resulting table of contents that is generated would be 


[This is page one](writing_documentation.md)

[This is page two](writing_documentation.md)


# Adding images and linking to other pages

Since this is markdown, [the usual markdown conventions apply](markdown.md).

A special behavior though is linking to other markdown pages on the site. Since this is hosted by github pages and built by jekyll, [relative linking is in effect](https://blog.github.com/2016-12-05-relative-links-for-github-pages/)

Assuming this structure

~~~
├── _my_collection
│   ├── some_doc.md
│   └── some_subdir
│       └── another_doc.md
├── _config.yml
└── index.md
~~~

the following will work:

From File | Linking To Another...
-|-
`index.md` | `[Some Doc](_my_collection/some_doc.md)`
`index.md` | `[Another Doc](_my_collection/some_subdir/another_doc.md)`
`_my_collection/some_doc.md` | `[Index](../index.md)`
`_my_collection/some_doc.md` | `[Another Doc](some_subdir/another_doc.md)`
`_my_collection/some_subdir/another_doc.md` | `[Index](../../index.md)`
`_my_collection/some_subdir/another_doc.md` | `[Some Doc](../some_doc.md)`


Images can be inserted using standard markdown:

```markdown
 ![Image](src)
```

Where src can be either an online url or another relative path. If you have many images localy, consider creating an `images` or `figures` folder within your project folder to contain them.


# Adding block callouts/alerts

Blocked-styled content is enabled via the (Premonition)[https://github.com/amedia/premonition] plugin.  

Four different alert styles are built in, but custom callouts can be added by following the instructions in the Premonition README

### Note with title

~~~markdown
 > note "My note"
 > Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean interdum, ligula in
 > ultrices sodales, ante enim scelerisque diam, nec molestie lorem nulla sit amet dolor.
 > Aenean id augue ante. Duis ut mi faucibus, pellentesque sem quis, gravida nisi. Nam cursus.
~~~

> note "My note"
> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean interdum, ligula in
> ultrices sodales, ante enim scelerisque diam, nec molestie lorem nulla sit amet dolor.
> Aenean id augue ante. Duis ut mi faucibus, pellentesque sem quis, gravida nisi. Nam cursus.

### Note without title

~~~markdown
 > note ""
 > Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean interdum, ligula in
 > ultrices sodales, ante enim scelerisque diam, nec molestie lorem nulla sit amet dolor.
 > Aenean id augue ante. Duis ut mi faucibus, pellentesque sem quis, gravida nisi. Nam cursus.
~~~

> note ""
> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean interdum, ligula in
> ultrices sodales, ante enim scelerisque diam, nec molestie lorem nulla sit amet dolor.
> Aenean id augue ante. Duis ut mi faucibus, pellentesque sem quis, gravida nisi. Nam cursus.

### Info box

~~~markdown
 > info "The information header"
 > Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean interdum, ligula in
 > ultrices sodales, ante enim scelerisque diam, nec molestie lorem nulla sit amet dolor.
 > Aenean id augue ante. Duis ut mi faucibus, pellentesque sem quis, gravida nisi. Nam cursus.
~~~

> info "The information header"
> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean interdum, ligula in
> ultrices sodales, ante enim scelerisque diam, nec molestie lorem nulla sit amet dolor.
> Aenean id augue ante. Duis ut mi faucibus, pellentesque sem quis, gravida nisi. Nam cursus.

### Warning box

~~~markdown
 > warning "The information header"
 > Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean interdum, ligula in
 > ultrices sodales, ante enim scelerisque diam, nec molestie lorem nulla sit amet dolor.
 > Aenean id augue ante. Duis ut mi faucibus, pellentesque sem quis, gravida nisi. Nam cursus.
~~~

> warning "The information header"
> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean interdum, ligula in
> ultrices sodales, ante enim scelerisque diam, nec molestie lorem nulla sit amet dolor.
> Aenean id augue ante. Duis ut mi faucibus, pellentesque sem quis, gravida nisi. Nam cursus.

### Error box

~~~markdown
 > error "The information header"
 > Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean interdum, ligula in
 > ultrices sodales, ante enim scelerisque diam, nec molestie lorem nulla sit amet dolor.
 > Aenean id augue ante. Duis ut mi faucibus, pellentesque sem quis, gravida nisi. Nam cursus.
~~~

> error "The information header"
> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean interdum, ligula in
> ultrices sodales, ante enim scelerisque diam, nec molestie lorem nulla sit amet dolor.
> Aenean id augue ante. Duis ut mi faucibus, pellentesque sem quis, gravida nisi. Nam cursus.

### Error box with Markdown

~~~markdown
 > error "The information header"
 > [Premonition](https://github.com/amedia/premonition) allows you to add
 >
 > * Lists
 > * like this
 >
 > Use *formatting* and add code blocks.
 >
 > ~~~~
 > Isn't that sweet?
 > ~~~~~
 > Anything you can do in Markdown, you can do here. Expect from embeds Premonition boxes ;)
~~~

> error "The information header"
> [Premonition](https://github.com/amedia/premonition) allows you to add
>
> * Lists
> * like this
>
> Use *formatting* and add code blocks.
>
>```
>Isn't that sweet?
>```
>
> Anything you can do in Markdown, you can do here.
