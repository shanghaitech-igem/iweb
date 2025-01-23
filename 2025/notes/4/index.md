---
title: Lecture 4
---

# Lecture 4
{:.no_toc}

* 
{:toc}


## Frameworks

* In the previous lectures, we've seen the evolution of the web technologies, from native HTML to CSS and JavaScript to Node.js, TypeScript, and React. But the evolution is still going on, and new technologies are being developed every day.

* Besides React, there are many other popular frameworks, such as [Angular](https://angular.dev/), [Vue.js](https://vuejs.org/), and [Svelte](https://svelte.dev/).
 
* Based on React, there are also many topper frameworks, such as [Next.js](https://nextjs.org/), [Gatsby](https://www.gatsbyjs.com/). Gatsby is specialized in static site generation, which means it will compile the whole project locally into native HTML, CSS, and JavaScript files, and then deploy (upload) them to a server. This is the reason why we choose Gatsby for this course. It just fits the needs of building a iGEM wiki website.

## Getting Started with Gatsby

* The Gatsby command line interface (CLI) is a tool that lets us quickly create new Gatsby-powered sites and run commands for developing Gatsby sites, we can install it using npm.
  ```bash
  pnpm install -g gatsby-cli
  ```

* To create a new Gatsby site, we can run the following command:
  ```bash
  gatsby new
  ```
  We will choose Sass, Typescript and MDX as the options.

* After `gatsby-cli` has finished creating the project, we can navigate to the project folder and run the following command to start the development server:
  ```bash
  cd gatsby-iweb
  gatsby develop
  ```





