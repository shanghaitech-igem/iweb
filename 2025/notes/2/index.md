---
title: Lecture 2
---

# Lecture 2
{:.no_toc}

* 
{:toc}


## HTML (Hypertext Markup Language)

* HTML is a markup language that defines the structure of a web page. It is interpreted by your web browser (Safari, Google Chrome, Firefox, etc.) in order to display content on your screen.
* Let’s get started by writing a simple HTML file!
  ```html
  <!DOCTYPE html>
  <html lang="en">
      <head>
          <title>Hello!</title>
      </head>
      <body>
          Hello, world!
      </body>
  <html>
  ```

* When we open up this file in our browser, we get:

  ![Hello Page](https://cs50.harvard.edu/web/2020/notes/0/images/hello0.png)

* Now, let’s take some time to talk about the file we just wrote, which seems to be pretty complicated for such a simple page.
    * In the first line, we are declaring (to the web browser) that we are writing the document in the latest version of HTML: HTML5.
    * After that, the page consists of nested **HTML elements** (such as html and body), each with an **opening and closing tag** marked with either `<element>` for an opening and `</element>` for a closing.
    * Notice how each of the inner elements is indented just a bit further than the last. While this is not necessarily required by the browser, it will be very helpful to keep this up in your own code.
    * HTML elements can include **attributes**, which give the browser extra information about the element. For example, when we include `lang="en"` in our initial tag, we are telling the browser that we are using English as our primary language.
    * Inside the HTML element, we typically want to include both a `head` and a `body` tag. The head element will include information about your page that is not necessarily displayed, and the body element will contain what is actually visible to users who visit the site.
    * Within the head, we have included a `title` for our webpage, which you’ll notice is displayed in the tab at the top of our web browser.
    * Finally, we’ve included the text “Hello, world!” in the body, which is the visible part of our page.

### Document Object Model (DOM)

![DOM](https://cs50.harvard.edu/web/2020/notes/0/images/dom.png)

* The DOM is a convenient way of visualizing the way HTML elements relate to each other using a tree-like structure. Above is an example of the DOM layout for the page we just wrote.

### More HTML Elements

* There are many HTML elements you may want to use to customize your page, including headings, lists, and bolded sections. In this next example, we’ll see a few of of these in action.
* One more thing to note: `<!-* -->` gives us a comment in HTML, so we’ll use that below to explain some of the elements.
  ```html
  <!DOCTYPE html>
  <html lang="en">
      <head>
          <title>HTML Elements</title>
      </head>
      <body>
          <!-* We can create headings using h1 through h6 as tags. -->
          <h1>A Large Heading</h1>
          <h2>A Smaller Heading</h2>
          <h6>The Smallest Heading</h6>

          <!-* The strong and i tags give us bold and italics respectively. -->
          A <strong>bold</strong> word and an <i>italicized</i> word!

          <!-* We can link to another page (such as cs50's page) using a. -->
          View the <a href="https://cs50.harvard.edu/">CS50 Website</a>!

          <!-* We used ul for an unordered list and ol for an ordered one. both ordered and unordered lists contain li, or list items. -->
          An unordered list:
          <ul>
              <li>foo</li>
              <li>bar</li>
              <li>baz</li>
          </ul>
          An ordered list:
          <ol>
              <li>foo</li>
              <li>bar</li>
              <li>baz</li>
          </ol>

          <!-* Images require a src attribute, which can be either the path to a file on your computer or the link to an image online. It also includes an alt attribute, which gives a description in case the image can't be loaded. -->
          An image:
          <img src="../../images/duck.jpeg" alt="Rubber Duck Picture">
          <!-* We can also see above that for some elements that don't contain other ones, closing tags are not necessary. -->

          <!-* Here, we use a br tag to add white space to the page. -->
          <br/> <br/>

          <!-* A few different tags are necessary to create a table. -->
          <table>
              <thead>
                  <th>Ocean</th>
                  <th>Average Depth</th>
                  <th>Maximum Depth</th>
              </thead>
              <tbody>
                  <tr>
                      <td>Pacific</td>
                      <td>4280 m</td>
                      <td>10911 m</td>
                  </tr>
                  <tr>
                      <td>Atlantic</td>
                      <td>3646 m</td>
                      <td>8486 m</td>
                  </tr>
              </tbody>
          </table>
      </body>
  <html>
  ```

  This page, when rendered, looks something like this:

  ![Elements](https://cs50.harvard.edu/web/2020/notes/0/images/elements.png)

* In case you’re worried about it, know that you’ll never have to memorize these elements. It’s very easy to simply search something like “image in HTML” to find the `img` tag. One resource that’s especially helpful for learning about these elements is [W3 Schools](https://www.w3schools.com/html/html_elements.asp).

### Forms

* Another set of elements that is really important when creating a website is how to collect information from users. You can allow users to enter information using an HTML form, which can contain several different types of input. Later in the course, we’ll learn about how to handle information once a form has been submitted.
* Just as with other HTML elements, there’s no need to memorize these, and W3 Schools is a great resource for learning about them!
  ```html
  <!DOCTYPE html>
  <html lang="en">
  <head>
      <title>Forms</title>
  </head>
  <body>
      <form>
          <input type="text" placeholder="First Name" name="first">
          <input type="password" placeholder="Password" name="password">
          <div>
              Favorite Color:
              <input name="color" type="radio" value="blue"> Blue
              <input name="color" type="radio" value="green"> Green
              <input name="color" type="radio" value="yellow"> Yellow
              <input name="color" type="radio" value="red"> Red

          </div>
          <input type="submit">
      </form>
  </body>
  </html>
  ```

  ![form](https://cs50.harvard.edu/web/2020/notes/0/images/form.png)

## CSS (Cascading Style Sheets)

* CSS is used to customize the appearance of a website.
* While we’re just getting, started, we can add a style attribute to any HTML element in order to apply some CSS to it.
* We change style by altering the CSS properties of an element, writing something like `color: blue` or `text-align: center`
* In this example below, we make a slight change to our very first file to give it a colorful heading:
  ```html
  <!DOCTYPE html>
  <html lang="en">
      <head>
          <title>Hello!</title>
      </head>
      <body>
          <h1 style="color: blue; text-align: center;">A Colorful Heading!</h1>
          Hello, world!
      </body>
  <html>
  ```

  ![blue heading](https://cs50.harvard.edu/web/2020/notes/0/images/style0.png)

* If we style an outer element, all of the inner elements automatically take on that style. We can see this if we move the styling we just applied from the header tag to the body tag:

  ```html
  <!DOCTYPE html>
  <html lang="en">
      <head>
          <title>Hello!</title>
      </head>
      <body style="color: blue; text-align: center;">
          <h1 >A Colorful Heading!</h1>
          Hello, world!
      </body>
  <html>
  ```

  ![blue everywhere](https://cs50.harvard.edu/web/2020/notes/0/images/style1.png)

* While we can style our web page as we’ve done above, to achieve better design, we should be able to move our styling away from the individual lines.
    
    * One way of doing this is to add your styling between `<style>` tags in the `head`. Inside these tags, we write which types of elements we want to be style, and the styling we wish to apply to them. For example:
      ```html
        <html lang="en">
        <!DOCTYPE html>
        <head>
            <title>Hello!</title>
            <style>
                h1 {
                    color: blue;
                    text-align: center;
                }
            </style>
        </head>
        <body>
            <h1 >A Colorful Heading!</h1>
            Hello, world!
        </body>
        </html>
      ```
    
    * Another way is to include in a `<link>` element in your `head` with a link to a styles.css file that contains some styling. This means the HTML file would look like:
      ```html
        <html lang="en">
        <!DOCTYPE html>
        <head>
            <title>Hello!</title>
            <link rel="stylesheet" href="styles.css">
        </head>
        <body>
            <h1 >A Colorful Heading!</h1>
            Hello, world!
        </body>
        </html>
      ```
    
    And our file called `styles.css` would look like:
      ```css
        h1 {
            color: blue;
            text-align: center;
        }
      ```
    
* There are far too many CSS properties to go over here, but just like HTML elements, it’s typically easy to Google something along the lines of “change font to blue CSS” to get the result. Some of the most common ones though are:
    * `color`: the color of text
    * `text-align`: where elements are placed on the page
    * `background-color`: can be set to any color
    * `width`: in pixels or percent of a page
    * `height`: in pixels or percent of a page
    * `padding`: how much space should be left inside an element
    * `margin`: how much space should be left outside an element
    * `font-family`: type of font for text on page
    * `font-size`: in pixels
    * `border`: size type (solid, dashed, etc) color
* Let’s use some of what we just learned to improve upon our oceans table from above. Here’s some HTML to start us off:
  ```html
  <!DOCTYPE html>
  <html lang="en">
      <head>
          <title>Nicer Table</title>
      </head>
      <body>
          <table>
              <thead>
                  <th>Ocean</th>
                  <th>Average Depth</th>
                  <th>Maximum Depth</th>
              </thead>
              <tbody>
                  <tr>
                      <td>Pacific</td>
                      <td>4280 m</td>
                      <td>10911 m</td>
                  </tr>
                  <tr>
                      <td>Atlantic</td>
                      <td>3646 m</td>
                      <td>8486 m</td>
                  </tr>
              </tbody>
          </table>
      </body>
  <html>
  ```

  ![table bad](https://cs50.harvard.edu/web/2020/notes/0/images/table0.png)

* The above looks a lot like what we had before, but now, either by including a `style` tag or a `link` to a stylesheet in the head element, we add the following css:
  ```css
  table {
      border: 1px solid black;
      border-collapse: collapse;
  }

  td {
      border: 1px solid black;
      padding: 2px;
  }

  th {
      border: 1px solid black;
      padding: 2px;
  }
  ```
  Which leaves us with this nicer-looking table:  

  ![table good](https://cs50.harvard.edu/web/2020/notes/0/images/table1.png)

* You may already be thinking that there’s some needless repetition in our CSS at the moment, as `td` and `th` have the same styling. We can (and should) condense this down to the following code, using a comma to show the styling should apply to more than one element type.
  ```css
  table {
      border: 1px solid black;
      border-collapse: collapse;
  }

  td, th {
      border: 1px solid black;
      padding: 2px;
  }
  ```

* This is a good introduction into what are known as [CSS selectors](https://www.w3schools.com/cssref/css_selectors.asp). There are many ways to determine which HTML elements you are styling, some of which we’ll mention here:
    * **element type**: this is what we’ve been doing so far: styling all elements of the same type.
    * **id**: Another option is to give our HTML elements an id like so: `<h1 id="first-header">Hello!</h1>` and then applying styling using `#first-header{...}` using the hashtag to show that we’re searching by id. Importantly, no two elements can have the same id, and no element can have more than one id.
    * **class**: This is similar to id, but a class can be shared by more than one element, and a single element can have more than one class. We add classes to an HTML element like this: `<h1 class="page-text muted">Hello!</h1>` (note that we just added two classes to the element: `page-text` and `muted`). We then style based on class using a period instead of a hashtag: `.muted {...}`
* Now, we also have to deal with the problem of potentially conflicting CSS. What happens when a header should be red based on its class but blue based on its id? CSS has a specificity order that goes:
    1. In-line styling
    2. id
    3. class
    4. element type
* In addition to the comma for multiple selectors, there are several other ways to specify which elements you would like to style. This table from lecture provides a few, and we’ll go through a few examples below:

![selectors](https://cs50.harvard.edu/web/2020/notes/0/images/selectors.png)

**Descendant Selector**: Here, we use the descendant selector to only apply styling to list items found within an unordered list:
```html
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Using Selectors</title>
        <style>
            ul li {
                color: blue;
            }
        </style>
    </head>
    <body>
        <ol>
            <li>foo</li>
            <li> bar
                <ul>
                    <li>hello</li>
                    <li>goodbye</li>
                    <li>hello</li>
                </ul>
            </li>
            <li>baz</li>
        </ol>

    </body>
<html>
```

![list selector](https://cs50.harvard.edu/web/2020/notes/0/images/selectors0.png)

**Attributes as Selectors**: We can also narrow down our selection based on the attributes we assign to HTML elements using brackets. For example, in the following list of links, we choose to only make the link to Amazon red:
```html
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Using Selectors</title>
        <style>
            a[href="https://www.amazon.com/"] {
                color: red;
            }
        </style>
    </head>
    <body>
        <ol>
            <li><a href="https://www.google.com/">Google</a></li>
            <li><a href="https://www.amazon.com/">Amazon</a> </li>
            <li><a href="https://www.facebook.com/">Facebook</a></li>
        </ol>

    </body>
<html>
```

![link selectors](https://cs50.harvard.edu/web/2020/notes/0/images/selectors2.png)

* Not only can we use CSS to change what an element looks like permanently, but also what it looks like under certain conditions. For example, what if we wanted a button to change color when we hover over it? We can acheive this using a [CSS pseudoclass](https://www.w3schools.com/css/css_pseudo_classes.asp), which provides additional styling during special circumstances. We write this by adding a colon after our selector, and then adding the circumstance after that colon.
* In the case of the button, we would add `:hover` to the button selector to specify the design only when hovering:
  ```html
  <!DOCTYPE html>
  <html lang="en">
      <head>
          <title>Pseudoclasses</title>
          <style>
              button {
                  background-color: red;
                  width: 200px;
                  height: 50px;
                  font-size: 24px;
              }

              button:hover {
                  background-color: green;
              }
          </style>
      </head>
      <body>
          <button>Button 1</button>
          <button>Button 2</button>
          <button>Button 3</button>

      </body>
  <html>
  ```
  ![buttons](https://cs50.harvard.edu/web/2020/notes/0/images/buttons.gif)

## Responsive Design

* Today, many people view websites on devices other than computers, such as smartphones and tablets. It’s important to make sure your website is readable to people on all devices.
* One way we can achieve this is through knowledge of the **viewport**. The viewport is the part of the screen that is actually visible to the user at any given time. By default, many webpages assume that the viewport is the same on any device, which is what leads to many sites (especially older ones) being difficult to interact with on mobile devices.
* One simple way to improve the appearance of a site on a mobile device is to add the following line in the head of our HTML files. This line tells the mobile device to use a viewport that is the same width as that of the device you’re using rather than a much larger one.
  ```html
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  ```

* Another way we can deal with different devices is through [media queries](https://www.w3schools.com/cssref/css3_pr_mediaquery.asp). Media queries are ways of changing the style of a page based on how the page is being viewed.
* For an example of a media query, let’s try to simply change the color of the screen when it shrinks down to a certain size. We signal a media query by typing `@media` followed by the type of query in parentheses:
  ```html
  <!DOCTYPE html>
  <html lang="en">
      <head>
          <title>Screen Size</title>
          <style>
              @media (min-width: 600px) {
                  body {
                      background-color: red;
                  }
              }

              @media (max-width: 599px) {
                  body {
                      background-color: blue;
                  }
              }
          </style>
      </head>
      <body>
          <h1>Welcome to the page!</h1>
      </body>
  </html>
  ```
  ![screen size](https://cs50.harvard.edu/web/2020/notes/0/images/responsive0.gif)

* Another way to deal with differing screen size is using a new CSS attribute known as a [flexbox](https://www.w3schools.com/css/css3_flexbox.asp). This allows us to easily have elements wrap around to the next line if they don’t fit horizontally. We do this by putting all of our elements in a `div` that we’ll call our container. We then add some styling to that div specifying that we want to use a flexbox display for the elements inside of it. We’ve also added some additional styling to the inner divs to better illustrate the wrapping that’s occuring here.
  ```html
  <!DOCTYPE html>
  <html lang="en">
      <head>
          <title>Screen Size</title>
          <style>
              #container {
                  display: flex;
                  flex-wrap: wrap;
              }

              #container > div {
                  background-color: green;
                  font-size: 20px;
                  margin: 20px;
                  padding: 20px;
                  width: 200px;
              }
          </style>
      </head>
      <body>
          <div id="container">
              <div>Some text 1!</div>
              <div>Some text 2!</div>
              <div>Some text 3!</div>
              <div>Some text 4!</div>
              <div>Some text 5!</div>
              <div>Some text 6!</div>
              <div>Some text 7!</div>
              <div>Some text 8!</div>
              <div>Some text 9!</div>
              <div>Some text 10!</div>
              <div>Some text 11!</div>
              <div>Some text 12!</div>
          </div>
      </body>
  </html>
  ```
  ![flexbox](https://cs50.harvard.edu/web/2020/notes/0/images/flexbox.gif)

* Another popular way of styling a page is using an HTML [grid](https://www.w3schools.com/css/css_grid.asp). In this grid, we can specify style attributes such as column widths and gaps between columns and rows, as demonstrated below. Note that when we specify column widths, we say the third one is `auto`, meaning it should fill the rest of the page.
  ```html
  <!DOCTYPE html>
  <html lang="en">
      <head>
          <title>My Web Page!</title>
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <style>
              .grid {
                  background-color: green;
                  display: grid;
                  padding: 20px;
                  grid-column-gap: 20px;
                  grid-row-gap: 10px;
                  grid-template-columns: 200px 200px auto;
              }

              .grid-item {
                  background-color: white;
                  font-size: 20px;
                  padding: 20px;
                  text-align: center;
              }
          </style>
      </head>
      <body>
          <div class="grid">
              <div class="grid-item">1</div>
              <div class="grid-item">2</div>
              <div class="grid-item">3</div>
              <div class="grid-item">4</div>
              <div class="grid-item">5</div>
              <div class="grid-item">6</div>
              <div class="grid-item">7</div>
              <div class="grid-item">8</div>
              <div class="grid-item">9</div>
              <div class="grid-item">10</div>
              <div class="grid-item">11</div>
              <div class="grid-item">12</div>
          </div>
      </body>
  </html>
  ```

  ![grid](https://cs50.harvard.edu/web/2020/notes/0/images/grid.gif)

## Bootstrap

* It turns out that there are many libraries that other people have already written that can make the styling of a webpage even simpler. One popular library that we’ll use throughout the course is known as [bootstrap](https://getbootstrap.com/).
* We can include bootstrap in our code by adding a single line to the head of our HTML file:
  ```html
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
  ```

* Next, we can look at some of bootstrap’s features by navigating to the [documentation](https://getbootstrap.com/docs/4.5/components/) portion of their website. On this page, you’ll find many examples of classes you can add to elements that allow them to be styled with bootstrap.
* One popular bootstrap feature is their [grid system](https://getbootstrap.com/docs/4.0/layout/grid/). Bootstrap automatically splits a page into 12 columns, and we can decide how many columns an element takes up by adding the class `col-x` where `x` is a number between 1 and 12. For example, in the following page, we have a row of columns of equal width, and then a row where the center column is larger:
  ```html
  <!DOCTYPE html>
  <html lang="en">
      <head>
          <title>My Web Page!</title>
          <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
          <style>
              .row > div {
                  padding: 20px;
                  background-color: teal;
                  border: 2px solid black;
              }
          </style>
      </head>
      <body>
          <div class="container">
              <div class="row">
                  <div class="col-4">
                      This is a section.
                  </div>
                  <div class="col-4">
                      This is another section.
                  </div>
                  <div class="col-4">
                      This is a third section.
                  </div>
              </div>
          </div>
          <br/>
          <div class="container">
              <div class="row">
                  <div class="col-3">
                      This is a section.
                  </div>
                  <div class="col-6">
                      This is another section.
                  </div>
                  <div class="col-3">
                      This is a third section.
                  </div>
              </div>
          </div>
      </body>
  </html>
  ```

  ![columns](https://cs50.harvard.edu/web/2020/notes/0/images/cols1.gif)

* To improve mobile-responsiveness, bootstrap also allows us to specify column sizes that differ depending on the screen size. In the following example, we use `col-lg-3` to show that an element should take up 3 columns on a large screen, and `col-sm-6` to show an element should take up 6 columns when the screen is small:
  ```html
  <!DOCTYPE html>
  <html lang="en">
      <head>
          <title>My Web Page!</title>
          <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
          <style>
              .row > div {
                  padding: 20px;
                  background-color: teal;
                  border: 2px solid black;
              }
          </style>
      </head>
      <body>
          <div class="container">
              <div class="row">
                  <div class="col-lg-3 col-sm-6">
                      This is a section.
                  </div>
                  <div class="col-lg-3 col-sm-6">
                      This is another section.
                  </div>
                  <div class="col-lg-3 col-sm-6">
                      This is a third section.
                  </div>
                  <div class="col-lg-3 col-sm-6">
                      This is a fourth section.
                  </div>
              </div>
          </div>
      </body>
  </html>
  ```

  ![wrap columns](https://cs50.harvard.edu/web/2020/notes/0/images/cols2.gif)

## Sass (Syntactically Awesome Style Sheets)

* So far, we’ve found a few ways to eliminate redundancy in CSS such as moving it to separate files or using bootstrap, but there are still quite a few places where we can still make improvements. For example, what if we want several elements to have different styles, but for all of them to be the same color? If we decide later we want to change the color, then we would have to change it within several different elements.
* [Sass](https://sass-lang.com/) is a language that allows us to write CSS more efficiently in several ways, one of which is by allowing us to have variables, as in the following example.
* When writing in Sass, we create a new file with the extension `filename.scss`. In this file, we can create a new variable by adding a `$` before a name, then a colon, then a value. For example, we would write `$color: red` to set the variable color to the value red. We then access that variable using `$color`. Here’s an example of our variables.scss file:
  ```scss
  $color: red;

  ul {
      font-size: 14px;
      color: $color;
  }

  ol {
      font-size: 18px;
      color: $color;
  }
  ```

* Now, in order to link this styling to our HTML file, we can’t just link to the `.scss` file because most web browsers only recognize `.css` files. To deal with this problem, we have to [download a program called Sass](https://sass-lang.com/install) onto our computers. Then, in our terminal, we write `sass variables.scss:variables.css` This command will compile a .scss file named `variables.scss` into a .css file named `variables.css`, to which you can add a link in your HTML page.
* To speed up this process, we can use the command `sass --watch variables.scss:variables.css` which automatically changes the `.css` file every time a change is detected in the `.scss` file.
* While using Sass, we can also physically nest our styling rather than use the CSS selectors we talked about earlier. For example, if we want to apply some styling only to paragraphs and unordered lists within a div, we can write the following:
  ```scss
  div {
      font-size: 18px;

      p {
          color: blue;
      }

      ul {
          color: green;
      }
  }
  ```
  Once compiled into CSS, we would get a file that looks like:
  ```css
  div {
      font-size: 18px;
  }

  div p {
      color: blue;
  }

  div ul {
      color: green;
  }
  ```

* One more feature that Sass gives us is known as [inheritance](https://sass-lang.com/guide). This allows us to create a basic set of styling that can be shared by several different elements. We do this by adding a `%` before a name of a class, adding some styling, and then later adding the line `@extend %classname` to the beginning of some styling. For example, the following code applies the styling within the `message` class to each of the different classes below, resulting in a webpage that looks like the one below.
  ```scss
  %message {
      font-family: sans-serif;
      font-size: 18px;
      font-weight: bold;
      border: 1px solid black;
      padding: 20px;
      margin: 20px;
  }

  .success {
      @extend %message;
      background-color: green;
  }

  .warning {
      @extend %message;
      background-color: orange;
  }

  .error {
      @extend %message;
      background-color: red;
  }
  ```

  ![inheritance](https://cs50.harvard.edu/web/2020/notes/0/images/inherit.png)

## JavaScript

Let’s begin by revisiting a diagram from a couple of lectures ago:

![Client Server Diagram](https://cs50.harvard.edu/web/2020/notes/5/images/client_server.png)

Recall that in most online interactions, we have a client/user that sends an HTTP Request to a server, which sends back an HTTP Response. All of the Python code we’ve written so far using Django has been running on a server. JavaScript will allow us to run code on the client side, meaning no interaction with the server is necessary while it’s running, allowing our websites to become much more interactive.

In order to add some JavaScript to our page, we can add a pair of `<script>` tags somewhere in our HTML page. We use `<script>` tags to signal to the browser that anything we write in between the two tags is JavaScript code we wish to execute when a user visits our site. Our first program might look something like this:

```js
alert('Hello, world!');
```

The `alert` function in JavaScript displays a message to the user which they can then dismiss. To show where this would fit into an actual HTML document, here’s an example of a simple page with some JavaScript:

```html
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Hello</title>
        <script>
            alert('Hello, world!');
        </script>
    </head>
    <body>
        <h1>Hello!</h1>
    </body>
</html>
```

![alert](https://cs50.harvard.edu/web/2020/notes/5/images/alert0.png)

## Events

One feature of JavaScript that makes it helpful for web programming is that it supports [Event-Driven Programming](https://medium.com/@vsvaibhav2016/introduction-to-event-driven-programming-28161b79c223).

Event-Driven Programming is a programming paradigm that centers around the detection of events, and actions that should be taken when an event is detected.

An event can be almost anything including a button being clicked, the cursor being moved, a response being typed, or a page being loaded. Just about everything a user does to interact with a web page can be thought of as an event. In JavaScript, we use [Event Listeners](https://www.w3schools.com/js/js_htmldom_eventlistener.asp) that wait for certain events to occur, and then execute some code.

Let’s begin by turning our JavaScript from above into a [function](https://www.w3schools.com/js/js_functions.asp) called `hello`:

```js
function hello() {
    alert('Hello, world!')
}
```

Now, let’s work on running this function whenever a button is clicked. To do this, we’ll create an HTML button in our page with an `onclick` attribute, which gives the browser instructions for what should happen when the button is clicked:

```html
<button onclick="hello()">Click Here</button>
```

These changes allow us to wait to run parts of our JavaScript code until a certain event occurs.

## Variables

JavaScript is a programming language just like Python, C, or any other language you’ve worked with before, meaning it has many of the same features as other languages including variables. There are three keywords we can use to assign values in JavaScript:

* `var`: used to define a variable globally

```js
var age = 20;
```

* `let`: used to define a variable that is limited in scope to the current block such as a function or loop

```js
let counter = 1;
```

* `const`: used to define a value that will not change

```js
const PI = 3.14;
```

For an example of how we can use a variable, let’s take a look at a page that keeps track of a counter:

```html
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Count</title>
        <script>
            let counter = 0;
            function count() {
                counter++;
                alert(counter);
            }
        </script>
    </head>
    <body>
        <h1>Hello!</h1>
        <button onclick="count()">Count</button>
    </body>
</html>
```

![counting](https://cs50.harvard.edu/web/2020/notes/5/images/count.gif)

## `querySelector`

In addition to allowing us to display messages through alerts, JavaScript also allows us to change elements on the page. In order to do this, we must first introduce a function called `document.querySelector`. This function searches for and returns elements of the DOM. For example, we would use:

```js
let heading = document.querySelector('h1');
```

to extract a heading. Then, to manipulate the element we’ve recently found, we can change its `innerHTML` property:

```js
heading.innerHTML = `Goodbye!`;
```

Just as in Python, we can also take advantage of [conditions](https://www.w3schools.com/js/js_if_else.asp) in JavaScript. For example, let’s say rather than always changing our header to `Goodbye!`, we wish to toggle back and forth between `Hello!` and `Goodbye!`. Our page might then look something like the one below. Notice that in JavaScript, we use `===` as a stronger comparison between two items which also checks that the objects are of the same type. We typically want to use `===` whenever possible.

```html
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Count</title>
        <script>
            function hello() {
                const header = document.querySelector('h1');
                if (header.innerHTML === 'Hello!') {
                    header.innerHTML = 'Goodbye!';
                }
                else {
                    header.innerHTML = 'Hello!';
                }
            }
        </script>
    </head>
    <body>
        <h1>Hello!</h1>
        <button onclick="hello()">Click Here</button>
    </body>
</html>
```

![toggle](https://cs50.harvard.edu/web/2020/notes/5/images/toggle.gif)

## DOM Manipulation

Let’s use this idea of DOM manipulation to improve our counter page:

```html
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Count</title>
        <script>
            let counter = 0;
            function count() {
                counter++;
                document.querySelector('h1').innerHTML = counter;
            }
        </script>
    </head>
    <body>
        <h1>0</h1>
        <button onclick="count()">Count</button>
    </body>
</html>
```

![count 2](https://cs50.harvard.edu/web/2020/notes/5/images/count2.gif)

We can make this page even more interesting by displaying an alert every time the counter gets to a multiple of ten. In this alert, we’ll want to format a string to customize the message, which in JavaScript we can do using [template literals](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Template_literals). Template literals requre that there are backticks (`` ` ``) around the entire expression and a $ and curly braces around any substitutions. For example, let’s change our count function

```js
function count() {
    counter++;
    document.querySelector('h1').innerHTML = counter;
    
    if (counter % 10 === 0) {
        alert(`Count is now ${counter}`)
    }
}
```

![count with alert](https://cs50.harvard.edu/web/2020/notes/5/images/count3.gif)

Now, let’s look at some ways in which we can improve the design of this page. First, just as we try to avoid in-line styling with CSS, we want to avoid in-line JavaScript as much as possible. We can do this in our counter example by adding a line of script that changes the `onclick` attribute of a button on the page, and removing the `onclick` attribute from within the `button` tag.

```js
document.querySelector('button').onclick = count;
```

One thing to notice about what we’ve just done is that we’re not calling the `count` function by adding parentheses afterward, but instead just naming the function. This specifies that we only wish to call this function when the button is clicked. This works because, like Python, JavaScript supports functional programming, so functions can be treated as values themselves.

The above change alone is not enough though, as we can see by inspecting the page and looking at our browser’s console:

![error console](https://cs50.harvard.edu/web/2020/notes/5/images/error0.png)

This error came up because when JavaScript searched for an element using `document.querySelector('button')`, it didn’t find anything. This is because it takes a small bit of time for the page to load, and our JavaScript code ran before the button had been rendered. To account for this, we can specify that code will run only after the page has loaded using the [addEventListener](https://www.w3schools.com/jsref/met_document_addeventlistener.asp) function. This function takes in two arguments:

1. An event to listen for (eg: `'click'`)
2. A function to run when the event is detected (eg: `hello` from above)

We can use the function to only run the code once all content has loaded:

```js
document.addEventListener('DOMContentLoaded', function() {
    // Some code here
});
```

In the example above, we’ve used an [anonymous](https://www.w3schools.com/js/js_function_definition.asp) function, which is a function that is never given a name. Putting all of this together, our JavaScript now looks like this:

```js
let counter = 0;

function count() {
    counter++;
    document.querySelector('h1').innerHTML = counter;
    
    if (counter % 10 === 0) {
        alert(`Count is now ${counter}`)
    }
}

document.addEventListener('DOMContentLoaded', function() {
    document.querySelector('button').onclick = count;
});
```

Another way that we can improve our design is by moving our JavaScript into a separate file. The way we do this is very similar to how we put our CSS in a separate file for styling:

1. Write all of your JavaScript code in a separate file ending in `.js`, maybe `index.js`.
2. Add a `src` attribute to the `<script>` tag that points to this new file.

For our counter page, we could have a file called `counter.html` that looks like this:

```html
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Count</title>
        <script src="counter.js"></script>
    </head>
    <body>
        <h1>0</h1>
        <button>Count</button>
    </body>
</html>
```

And a file called `counter.js` that looks like this:

```js
let counter = 0;
            
function count() {
    counter++;
    document.querySelector('h1').innerHTML = counter;
    
    if (counter % 10 === 0) {
        alert(`Count is now ${counter}`)
    }
}

document.addEventListener('DOMContentLoaded', function() {
    document.querySelector('button').onclick = count;
});
```

Having JavaScript in a separate file is useful for a number of reasons:

* Visual appeal: Our individual HTML and JavaScript files become more readable.
* Access among HTML files: Now we can have multiple HTML files that all share the same JavaScript.
* Collaboration: We can now easily have one person work on the JavaScript while another works on HTML.
* Importing: We are able to import JavaScript libraries that other people have already written. For example [Bootstrap](https://getbootstrap.com/docs/4.5/getting-started/introduction/#js) has their own JavaScript library you can include to make your site more interactive.

Let’s get started on another example of a page that can be a bit more interactive. Below, we’ll create a page where a user can type in their name to get a custom greeting.

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Hello</title>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            document.querySelector('form').onsubmit = function() {
                const name = document.querySelector('#name').value;
                alert(`Hello, ${name}`);
            };
        });
    </script>
</head>
<body>
    <form>
        <input autofocus id="name" placeholder="Name" type="text">
        <input type="submit">
    </form>
</body>
</html>
```

![Greeting Demo](https://cs50.harvard.edu/web/2020/notes/5/images/greet.gif)

Some notes about the page above:

* We use the `autofocus` field in the `name` input to indicate that the cursor should be set inside that input as soon as the page is loaded.
* We use `#name` inside of `document.querySelector` to find an element with an `id` of `name`. We can use all the same selectors in this function as we could in CSS.
* We use the `value` attribute of an input field to find what is currently typed in.

We can do more than just add HTML to our page using JavaScript, we can also change the styling of a page! In the page below, we use buttons to change the color of our heading.

```html
<!DOCTYPE html>
<html lang="en">
<head>
     <title>Colors</title>
     <script>
         document.addEventListener('DOMContentLoaded', function() {
            document.querySelectorAll('button').forEach(function(button) {
                button.onclick = function() {
                    document.querySelector("#hello").style.color = button.dataset.color;
                }
            });
         });
     </script>
</head>
<body>
    <h1 id="hello">Hello</h1>
    <button data-color="red">Red</button>
    <button data-color="blue">Blue</button>
    <button data-color="green">Green</button>
</body>
</html>
```

![Color demo](https://cs50.harvard.edu/web/2020/notes/5/images/colors.gif)

Some notes on the page above:

* We change the style of an element using the `style.SOMETHING` attribute.
* We use the `data-SOMETHING` attribute to assign data to an HTML element. We can later access that data in JavaScript using the element’s `dataset` property.
* We use the `querySelectorAll` function to get an [Node List](https://www.w3schools.com/js/js_htmldom_nodelist.asp) (similar to a Python list or a JavaScript [array](https://www.w3schools.com/js/js_arrays.asp)) with all elements that match the query.
* The [forEach](https://www.w3schools.com/jsref/jsref_foreach.asp) function in JavaScript takes in another function, and applies that function to each element in a list or array.

### JavaScript Console

The console is a useful tool for testing out small bits of code and debugging. You can write and run JavaScript code in the console, which can be found by inspecting element in your web browser and then clicking `console`. (The exact process may change frome browser to browser.) One useful tool for debugging is printing to the console, which you can do using the `console.log` function. For example, in the `colors.html` page above, I can add the following line:

```
console.log(document.querySelectorAll('button'));
```

Which gives us this in the console:

![node list](https://cs50.harvard.edu/web/2020/notes/5/images/consoleList.png)

### Arrow Functions

In addition to the traditional function notation we’ve seen already, JavaScript now gives us the ability to use [Arrow Functions](https://www.w3schools.com/js/js_arrow_function.asp) where we have an input (or parentheses when there’s no input) followed by `=>` followed by some code to be run. For example, we can alter our script above to use an anonymous arrow function:

```js
document.addEventListener('DOMContentLoaded', () => {
    document.querySelectorAll('button').forEach(button => {
        button.onclick = () => {
            document.querySelector("#hello").style.color = button.dataset.color;
        }
    });
});
```

We can also have named functions that use arrows, as in this rewriting of the count function:

```js
count = () => {
    counter++;
    document.querySelector('h1').innerHTML = counter;
    
    if (counter % 10 === 0) {
        alert(`Count is now ${counter}`)
    }
}
```

To get an idea about some other events we can use, let’s see how we can implement our color switcher using a dropdown menu instead of three separate buttons. We can detect changes in a `select` element using the `onchange` attribute. In JavaScript, [this](https://www.w3schools.com/js/js_this.asp) is a keyword that changes based on the context in which it’s used. In the case of an event handler, `this` refers to the object that triggered the event.

```html
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Colors</title>
        <script>
            document.addEventListener('DOMContentLoaded', function() {
                document.querySelector('select').onchange = function() {
                    document.querySelector('#hello').style.color = this.value;
                }
            });
        </script>
    </head>
    <body>
        <h1 id="hello">Hello</h1>
        <select>
            <option value="black">Black</option>
            <option value="red">Red</option>
            <option value="blue">Blue</option>
            <option value="green">Green</option>
        </select>

    </body>
</html>
```

![colors with dropdown](https://cs50.harvard.edu/web/2020/notes/5/images/colors2.gif)

There are many other [events](https://www.w3schools.com/js/js_events.asp) we can detect in JavaScript including the common ones below:

* `onclick`
* `onmouseover`
* `onkeydown`
* `onkeyup`
* `onload`
* `onblur`
* …

### TODO List

To put together a few of the things we’ve learned in this lecture, let’s work on making a TODO list entirely in JavaScript. We’ll start by writing the HTML layout of the page. Notice below how we leave space for an unorderd list, but we dont yet add anything to it. Also notice that we add a link to `tasks.js` where we’ll write our JavaScript.

```html
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Tasks</title>
        <script src="tasks.js"></script>
    </head>
    <body>
        <h1>Tasks</h1>
        <ul id="tasks"></ul>
        <form>
            <input id="task" placeholder = "New Task" type="text">
            <input id="submit" type="submit">
        </form>
    </body>
</html>
```

Now, here’s our code which we can keep in `tasks.js`. A few notes on what you’ll see below:

* This code is slightly different from the code in lecture. Here, we only query for our submit button and input task field once in the beginning and store those two values in the variables `submit` and `newTask`.
* We can enable/disable a button by setting its `disabled` attribute to `false`/`true`.
* In JavaScript, we use `.length` to find the length of objects such as strings and arrays.
* At the end of the script, we add the line `return false`. This prevents the default submission of the form which involves either reloading the current page or redirecting to a new one.
* In JavaScript, we can create HTML elements using the [createElement](https://www.w3schools.com/jsref/met_document_createelement.asp) function. We can then add those elements to the DOM using the `append` function.

```js
// Wait for page to load
document.addEventListener('DOMContentLoaded', function() {

    // Select the submit button and input to be used later
    const submit = document.querySelector('#submit');
    const newTask = document.querySelector('#task');

    // Disable submit button by default:
    submit.disabled = true;

    // Listen for input to be typed into the input field
    newTask.onkeyup = () => {
        if (newTask.value.length > 0) {
            submit.disabled = false;
        }
        else {
            submit.disabled = true;
        }
    }

    // Listen for submission of form
    document.querySelector('form').onsubmit = () => {

        // Find the task the user just submitted
        const task = newTask.value;

        // Create a list item for the new task and add the task to it
        const li = document.createElement('li');
        li.innerHTML = task;

        // Add new element to our unordered list:
        document.querySelector('#tasks').append(li);

        // Clear out input field:
        newTask.value = '';

        // Disable the submit button again:
        submit.disabled = true;

        // Stop form from submitting
        return false;
    }
});
```

![Tasks demo](https://cs50.harvard.edu/web/2020/notes/5/images/tasks.gif)

## Intervals

In addition to specifying that functions run when an event is triggered, we can also set functions to run after a set amount of time. For example, let’s return to our counter page’s script, and add an interval so even if the user doesn’t click anything, the counter increments every second. To do this, we use the [setInterval](https://www.w3schools.com/jsref/met_win_setinterval.asp) function, which takes as argument a function to be run, and a time (in milliseconds) between function runs.

```js
let counter = 0;
            
function count() {
    counter++;
    document.querySelector('h1').innerHTML = counter;
}

document.addEventListener('DOMContentLoaded', function() {
    document.querySelector('button').onclick = count;

    setInterval(count, 1000);
});
```

![count auto](https://cs50.harvard.edu/web/2020/notes/5/images/count4.gif)

## Local Storage

One thing to notice about all of our sites so far is that every time we reload the page, all of our information is lost. The heading color goes back to black, the counter goes back to 0, and all of the tasks are erased. Sometimes this is what we intend, but other time’s we’ll want to be able to store information that we can use when a user returns to the site.

One way we can do this is by using [Local Storage](https://www.w3schools.com/jsref/prop_win_localstorage.asp), or storing information on the user’s web browser that we can access later. This information is stored as a set of key-value pairs, almost like a Python dictionary. In order to use local storage, we’ll employ two key functions:

* `localStorage.getItem(key)`: This function searches for an entry in local storage with a given key, and returns the value associated with that key.
* `localStorage.setItem(key, value)`: This function sets and entry in local storage, associating the key with a new value.

Let’s look at how we can use these new functions to update our counter! In the code below,

```js
// Check if there is already a value in local storage
if (!localStorage.getItem('counter')) {

    // If not, set the counter to 0 in local storage
    localStorage.setItem('counter', 0);
}
            
function count() {
    // Retrieve counter value from local storage
    let counter = localStorage.getItem('counter');

    // update counter
    counter++;
    document.querySelector('h1').innerHTML = counter;

    // Store counter in local storage
    localStorage.setItem('counter', counter);
}

document.addEventListener('DOMContentLoaded', function() {
    // Set heading to the current value inside local storage
    document.querySelector('h1').innerHTML = localStorage.getItem('counter');
    document.querySelector('button').onclick = count;
});
```

## APIs

### JavaScript Objects

A [JavaScript Object](https://www.w3schools.com/js/js_objects.asp) is very similar to a Python dictionary, as it allows us to store key-value pairs. For example, I could create a JavaScript Object representing Harry Potter:

```js
let person = {
    first: 'Harry',
    last: 'Potter'
};
```

I can then access or change parts of this object using either bracket or dot notation:

![Harry Potter](https://cs50.harvard.edu/web/2020/notes/5/images/console.png)

One way in which JavaScript Objects are really useful is in transferring data from one site to another, particularly when using [APIs](https://www.mulesoft.com/resources/api/what-is-an-api)

An API, or Application Programming Interface, is a structured form communication between two different applications.

For example, we may want our application to get information from Google Maps, Amazon, or some weather service. We can do this by making calls to a service’s API, which will return structured data to us, often in [JSON](https://www.w3schools.com/js/js_json_intro.asp) (JavaScript Object Notation) form. For example, a flight in JSON form might look like this:

```json
{
    "origin": "New York",
    "destination": "London",
    "duration": 415
}
```

The values within a JSON do not have to just be strings and numbers as in the example above. We can also store lists, or even other JavaScript Objects:

```json
{
    "origin": {
        "city": "New York",
        "code": "JFK"
    },
    "destination": {
        "city": "London",
        "code": "LHR"
    },
    "duration": 415
}
```

### Currency Exchange

To show how we can use APIs in our applications, let’s work on building an application where we can find exchange rates between two currencies. Throughout the exercise, we’ll be using the [European Central Bank’s Exchange Rate API](https://exchangeratesapi.io). By visiting their website, you’ll see the API’s documentation, which is generally a good place to start when you wish to use an API. We can test this api by visiting the URL: [https://api.exchangeratesapi.io/latest?base=USD](https://api.exchangeratesapi.io/latest?base=USD). When you visit this page, you’ll see the exchange rate between the U.S. Dollar and many other currencies, written in JSON form. You can also change the GET parameter in the URL from `USD` to any other currency code to change the rates you get.

Let’s take a look at how to implement this API into an application by creating a new HTML file called `currency.html` and link it to a JavaScript file but leave the body empty:

```html
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Currency Exchange</title>
        <script src="currency.js"></script>
    </head>
    <body></body>
</html>
```

Now, we’ll use something called [AJAX](https://www.w3schools.com/js/js_ajax_intro.asp), or Asynchronous JavaScript And XML, which allows us to access information from external pages even after our page has loaded. In order to do this, we’ll use the [fetch](https://javascript.info/fetch) function which will allow us to send an HTTP request. The `fetch` function returns a [promise](https://web.dev/promises/). We won’t talk about the details of what a promise is here, but we can think of it as a value that will come through at some point, but not necessarily right away. We deal with promises by giving them a `.then` attribute describing what should be done when we get a `response`. The code snippet below will log our response to the console.

```js
document.addEventListener('DOMContentLoaded', function() {
    // Send a GET request to the URL
    fetch('https://api.exchangeratesapi.io/latest?base=USD')
    // Put response into json form
    .then(response => response.json())
    .then(data => {
        // Log data to the console
        console.log(data);
    });
});
```

![Currency log](https://cs50.harvard.edu/web/2020/notes/5/images/curr_log.png)

One important point about the above code is that the argument of `.then` is always a function. Although it seems we are creating the variables `response` and and `data`, those variables are just the parameters of two anonymous functions.

Rather than simply logging this data, we can use JavaScript to display a message to the screen, as in the code below:

```js
document.addEventListener('DOMContentLoaded', function() {
    // Send a GET request to the URL
    fetch('https://api.exchangeratesapi.io/latest?base=USD')
    // Put response into json form
    .then(response => response.json())
    .then(data => {

        // Get rate from data
        const rate = data.rates.EUR;

        // Display message on the screen
        document.querySelector('body').innerHTML = `1 USD is equal to ${rate.toFixed(3)} EUR.`;
    });
});
```

![Currency](https://cs50.harvard.edu/web/2020/notes/5/images/exhange.png)

Now, let’s make the site a bit more interactive by allowing the user to choose which currency they would like to see. We’ll start by altering our HTML to allow the user to input a currency:

```html
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Currency Exchange</title>
        <script src="currency.js"></script>
    </head>
    <body>
        <form>
            <input id="currency" placeholder="Currency" type="text">
            <input type="submit" value="Convert">
        </form>
        <div id="result"></div>
    </body>
</html>
```

Now, we’ll make some changes to our JavaScript so it only changes when the form is submitted, and so it takes into account the user’s input. We’ll also add some error checking here:

```js
document.addEventListener('DOMContentLoaded', function() {
    document.querySelector('form').onsubmit = function() {

        // Send a GET request to the URL
        fetch('https://api.exchangeratesapi.io/latest?base=USD')
        // Put response into json form
        .then(response => response.json())
        .then(data => {
            // Get currency from user input and convert to upper case
            const currency = document.querySelector('#currency').value.toUpperCase();

            // Get rate from data
            const rate = data.rates[currency];

            // Check if currency is valid:
            if (rate !== undefined) {
                // Display exchange on the screen
                document.querySelector('#result').innerHTML = `1 USD is equal to ${rate.toFixed(3)} ${currency}.`;
            }
            else {
                // Display error on the screen
                document.querySelector('#result').innerHTML = 'Invalid Currency.';
            }
        })
        // Catch any errors and log them to the console
        .catch(error => {
            console.log('Error:', error);
        });
        // Prevent default submission
        return false;
    }
});
```

![Echange demo](https://cs50.harvard.edu/web/2020/notes/5/images/exchange.gif)

That’s all for this lecture! Next time, we’ll work on using JavaScript to create even more engaging user interfaces!