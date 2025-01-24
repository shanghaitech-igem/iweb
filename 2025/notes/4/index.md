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

* After `gatsby-cli` has finished creating the project, we can navigate to the project folder and run the following command to switch to `pnpm`:
  ```bash
  cd gatsby-iweb
  rm -rf node_modules package-lock.json
  pnpm install
  pnpm update
  ```

* To start the development server, we can run the following command:
  ```bash
  gatsby develop
  ```
  The development server will start at `http://localhost:8000/`. We can open this URL in a web browser to see the site:
  ![The screen shot](./images/localhost-new-site.webp)


## Structure of a Gatsby Project

* A Gatsby project has a similar structure to a React project, but with some additional files and folders. The following is the structure of a Gatsby project:
  ```bash
  .
  ├── .cache
  ├── .gitignore
  ├── README.md
  ├── gatsby-config.ts
  ├── node_modules
  │   ├── @babel
  │   ├── @types
  │   ├── @typescript-eslint
  |   ...
  │   └── gatsby
  ├── package.json
  ├── pnpm-lock.yaml
  ├── public
  │   ├── page-data
  │   ├── static
  │   └── ~partytown
  ├── src
  │   ├── images
  │   │   └── icon.png
  │   └── pages
  │       ├── 404.tsx
  │       └── index.tsx
  └── tsconfig.json
  ```

  * The `README.md` file is a markdown file that contains the documentation of the project.
  * The `gatsby-config.ts` file is a TypeScript file that contains the configuration of the Gatsby project, such as the site metadata, plugins, and other settings.
  * The `src/pages` folder contains the pages of the site. Each file in this folder represents a page of the site.
    * For example, the `src/pages/hello.tsx` file represents the home page (`localhost:8000/hello`) of the site.
  * The `public` folder contains the compiled files of the site, such as the HTML, CSS, and JavaScript files.
  * The `package.json` file contains the dependencies and scripts of the project.
  * The `tsconfig.json` file contains the TypeScript configuration of the project.
  
## Creating a About Page

* Let's create a new page called `about.tsx` in the `src/pages` folder. The content of the page will be as follows:
  > It's crucial to export a default component, which will be used Gatsby to render the page.

  ```tsx
  import * as React from 'react'

  const AboutPage: React.FC = () => (
    <div>
      <h1>About</h1>
      <p>This is the about page.</p>
    </div>
  );

  export default AboutPage;
  ```

* Gatsby lets us define a `<title>` and other [document metadata](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/head) with the [Gatsby Head API](https://www.gatsbyjs.com/docs/reference/built-in-components/gatsby-head/). We have to export a component called Head from our page template to apply the metadata. Adding such metadata helps search engines like Google to better understand our site.
  > Don't forget to ex1ort the `Head` component so the external system can use it.

  ```tsx
  import * as React from 'react'

  const AboutPage: React.FC = () => (
    <div>
      <h1>About</h1>
      <p>This is the about page.</p>
    </div>
  );

  export const Head = () => <title>About Me</title>
  export default AboutPage;
  ```