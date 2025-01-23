---
title: Lecture 3
---

# Lecture 3
{:.no_toc}

* 
{:toc}

## Node.js

* Node.js is an open-source and cross-platform JavaScript runtime environment. It allows us to run JS outside of a browser. This provides JS the ability to develop just like other programming languages.

* To use Node.js, we need to install it following the instructions on its [official website](https://nodejs.org/en/download).
  ```bash
  # Download and install fnm:
  curl -o- https://fnm.vercel.app/install | bash

  # Download and install Node.js:
  fnm install 22

  # Verify the Node.js version:
  node -v # Should print "v22.13.1".

  # Verify npm version:
  npm -v # Should print "10.9.2".
  ```

* Let's create our first JS code outside of a browser:
  ```js
  // hello.js
  console.log('Hello, Node.js!');
  ```
  run it using:
  ```bash
  node hello.js
  ```

* Let's try some more complicated code, like the number guessing game:
  ```js
  // guessing.js
  import { createInterface } from 'readline';

  const rl = createInterface({
    input: process.stdin,
    output: process.stdout
  });

  const number = Math.floor(Math.random() * 100) + 1;
  let tries = 0;

  rl.setPrompt('Guess the number: ');
  rl.prompt();

  rl.on('line', (input) => {
    tries++;
    const guess = parseInt(input);
    if (guess === number) {
      console.log(`Congratulations! You guessed the number in ${tries} tries.`);
      rl.close();
    } else if (guess < number) {
      console.log('Too low!');
      rl.prompt();
    } else {
      console.log('Too high!');
      rl.prompt();
    }
  });
  ```
  run it using:
  ```bash
  node guessing.js
  ```


## Node Package Manager (NPM)

* NPM is the default package manager for Node.js. If we want to use a formally published package, we can install it using NPM.

* Let's install a third-party package called `colors`:
  ```bash
  npm install colors
  ```

* Let's use the `colors` package in our code:
  ```js
  // colors.js
  import colors from 'colors';

  console.log('Hello, Node.js!'.green);
  console.log('Hello, Node.js!'.red);
  console.log('Hello, Node.js!'.blue);
  ```
  run it using:
  ```bash
  node colors.js
  ```
* Noticed that, after installing the `colors` package, a `node_modules` directory is created, and a `package-lock.json` file is generated. The `node_modules` directory contains all the dependencies of our project, and the `package-lock.json` file contains the exact version of each dependency. which is useful for reproducibility.

* Let's try to copy `package-lock.json` to another folder and run `npm install` to install the dependencies:
  ```bash
  mkdir ../another
  cp colors.js ../another
  cp package-lock.json ../another
  cd ../another
  npm install
  node colors.js
  ```

## TypeScript (TS)

* Like Python, JavaScript is a dynamically typed language. This means that the type of a variable is determined at runtime. It indeed makes the language more flexible, and more convenient in some cases. But for a large project, dynamic typing prevent the ability to statically check the code, and providing better code completion and refactoring.

  * This JS code has a potential runtime error:
    ```js
    // error.js
    function add(a, b) {
        return a + b;
    }

    const result = add(5, "10"); // Intended to add numbers, but one is a string
    console.log(result); // Outputs "510" (unexpected concatenation)
    ```
    Using TS, we could catch this error at compile time:
    ```ts
    // error.ts
    function add(a: number, b: number): number {
        return a + b;
    }

    const result = add(5, "10"); // Error: Argument of type 'string' is not assignable to parameter of type 'number'.
    console.log(result);
    ```

  * This JS code won't provide code completion:
    ```js
    // user.js
    interface User {
        id: number;
        name: string;
        email: string;
        age?: number; // Optional property
    }

    const user: User = {
        id: 1,
        name: "John Doe",
        email: "john.doe@example.com",
    };

    // Start typing `user.` and see code completion in action
    console.log(user.name); // Code editor suggests `name`, `id`, `email`, and `age`
    console.log(user.age); // Code editor suggests `age` as an optional property
    ```
    Using TS, we could provide code completion:
    ```ts
    // user.ts
    interface User {
        id: number;
        name: string;
        email: string;
        age?: number; // Optional property
    }

    const user: User = {
        id: 1,
        name: "John Doe",
        email: "john.doe@example.com",
    };

    // Start typing `user.` and see code completion in action
    console.log(user.name); // Code editor suggests `name`, `id`, `email`, and `age`
    console.log(user.age); // Code editor suggests `age` as an optional property
    ```

* But TypeScript could not run directly in Node.js. We need to compile it to JavaScript first. To install the TypeScript compiler, run:
  ```bash
  npm install typescript
  ```

* Let's fix and compile the `error.ts` file to `error.js`:
  ```ts
  // error.ts
  function add(a: number, b: number): number {
      return a + b;
  }

  const result = add(5, 10);
  console.log(result);
  ```

  ```bash
  npx tsc error.ts
  node error.js
  ```

## Structural Typing System

* TS actually uses the structural typing system, which is different from the nominal typing system used in languages like Java and C#. In a nominal typing system, two objects are considered to have the same type if they are instances of the same class. In a structural typing system, two objects are considered to have the same type if they have the same structure.
  * In a nominal typing system `A` and `B` are different types because they are instances of different classes:
    ```java
    class A {
        int x;
    }

    class B {
        int x;
    }
    ```

  * In a structural typing system `A` and `B` are the same type because they have the same structure:
    ```ts
    interface A {
        x: number;
    }

    interface B {
        x: number;
    }
    ```


## React

