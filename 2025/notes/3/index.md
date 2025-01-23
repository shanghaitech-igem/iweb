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
  curl -o* https://fnm.vercel.app/install | bash

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

React is a popular JavaScript library for building user interfaces, particularly for single-page applications (SPAs). It allows developers to create reusable UI components and manage the state of their applications efficiently. React is maintained by Meta (formerly Facebook) and a community of individual developers and companies.

## Why React?

React simplifies the process of building complex UIs by breaking them down into smaller, reusable components. Here are some key features of React:

1. **Component-Based Architecture**: React applications are built using components, which are self-contained pieces of code that manage their own state and rendering. This makes the code modular and easier to maintain.
2. **Declarative Syntax**: React uses a declarative approach to define how the UI should look based on the current state. This makes the code more predictable and easier to debug.
3. **Virtual DOM**: React uses a virtual DOM to optimize rendering performance. Instead of directly manipulating the browser's DOM, React creates a lightweight copy (virtual DOM) and updates it efficiently before applying the changes to the actual DOM.
4. **Strong Ecosystem**: React has a rich ecosystem of tools, libraries, and community support, making it easier to build modern web applications.

## Setting Up a React Project

To start using React, you need to set up a development environment. The easiest way to do this is by using **Create React App**, a tool that sets up a new React project with a sensible default configuration.

1. **Install Node.js and npm**: Ensure you have Node.js and npm installed. You can verify this by running:
   ```bash
   node -v
   npm -v
   ```

2. **Create a New React Project**: Use the following command to create a new React project:
   ```bash
   npx create-react-app my-react-app
   ```
   Replace `my-react-app` with the name of your project.

3. **Navigate to the Project Directory**: Move into the newly created project directory:
   ```bash
   cd my-react-app
   ```

4. **Start the Development Server**: Run the development server to see your React app in action:
   ```bash
   npm start
   ```
   This will open your default web browser and load the React app at `http://localhost:3000`.


## Components: The Building Blocks of React

Components are the foundation of every React application. They allow you to break down your UI into reusable, self-contained pieces. Think of them like Lego blocks—you can use them over and over to build complex structures.

* **What is a Component?**  
  A React component is a JavaScript function that returns **JSX** (JavaScript XML), which looks like HTML but is actually JavaScript in disguise. For example:
  ```jsx
  function Greeting() {
    return <h1>Hello, React!</h1>;
  }
  ```

* **JSX vs. HTML**  
  JSX is optional, but it’s the preferred way to write React components because it’s more readable than using `React.createElement`. However, JSX has some differences from HTML:
  * Attributes are written in **camelCase** (e.g., `className` instead of `class`).
  * You can embed dynamic JavaScript values using curly braces `{}`.

  Example:
  ```jsx
  function Greeting({ name }) {
    return <h1 className="greeting">Hello, {name}!</h1>;
  }
  ```

* **Returning a Single Parent Element**  
  React components can only return **one parent element**. If you need to return multiple elements, wrap them in a `div` or use a **React Fragment** (`<>...</>`):
  ```jsx
  function App() {
    return (
      <>
        <Greeting name="Alice" />
        <Greeting name="Bob" />
      </>
    );
  }
  ```


## Key Concepts in React

React has a lots of concepts that you need to understand to build a React application. 

### Props: Passing Data to Components

Props (short for "properties") are how you pass data from one component to another. They are read-only and make components reusable and dynamic.

* **Using Props**  
  To pass data to a component, you add custom attributes to it. For example:
  ```jsx
  function Greeting({ name }) {
    return <h1>Hello, {name}!</h1>;
  }

  function App() {
    return <Greeting name="Alice" />;
  }
  ```

* **The `children` Prop**  
  If you want to pass components or content between the opening and closing tags of a component, you can use the `children` prop:
  ```jsx
  function Card({ children }) {
    return <div className="card">{children}</div>;
  }

  function App() {
    return (
      <Card>
        <h1>Title</h1>
        <p>Content goes here.</p>
      </Card>
    );
  }
  ```

* **The `key` Prop**  
  When rendering lists, React needs a way to uniquely identify each item. Use the `key` prop to provide a unique identifier:
  ```jsx
  function TodoList({ todos }) {
    return (
      <ul>
        {todos.map((todo, index) => (
          <li key={todo.id}>{todo.text}</li>
        ))}
      </ul>
    );
  }
  ```


### State: Managing Dynamic Data

State is how React manages data that changes over time. Unlike regular variables, state triggers re-renders when it changes.

* **Using `useState`**  
  The `useState` hook is the most common way to manage state in functional components:
  ```jsx
  function Counter() {
    const [count, setCount] = useState(0);

    return (
      <div>
        <p>You clicked {count} times</p>
        <button onClick={() => setCount(count + 1)}>Click me</button>
      </div>
    );
  }
  ```

* **Controlled Components**  
  Controlled components use state to manage form inputs. For example:
  ```jsx
  function InputField() {
    const [value, setValue] = useState('');

    return (
      <input
        type="text"
        value={value}
        onChange={(e) => setValue(e.target.value)}
      />
    );
  }
  ```


### Rendering and the Virtual DOM

React uses a **Virtual DOM** to optimize rendering performance. Here’s how it works:

1. When state changes, React updates the Virtual DOM (a lightweight copy of the real DOM).
2. React compares the updated Virtual DOM with the previous version using a process called **Diffing**.
3. React applies only the necessary changes to the real DOM through **Reconciliation**.

This process ensures that updates are fast and efficient.


### Event Handling

React provides built-in event handlers like `onClick`, `onChange`, and `onSubmit` to respond to user interactions.

* Example:
  ```jsx
  function Button() {
    const handleClick = () => {
      alert('Button clicked!');
    };

    return <button onClick={handleClick}>Click me</button>;
  }
  ```


### Hooks: Extending Component Functionality

Hooks are functions that let you "hook into" React features like state and lifecycle methods.

* **Common Hooks**:
  * `useState`: Manages state.
  * `useEffect`: Handles side effects (e.g., fetching data).
  * `useRef`: References DOM elements or persists values across renders.

* Example of `useEffect`:
  ```jsx
  function DataFetcher() {
    const [data, setData] = useState(null);

    useEffect(() => {
      fetch('https://api.example.com/data')
        .then((response) => response.json())
        .then((data) => setData(data));
    }, []);

    return <div>{data ? data.message : 'Loading...'}</div>;
  }
  ```


### Context: Sharing Data Across Components

Context allows you to pass data through the component tree without manually passing props at every level.

* Example:
  ```jsx
  const ThemeContext = React.createContext('light');

  function App() {
    return (
      <ThemeContext.Provider value="dark">
        <Toolbar />
      </ThemeContext.Provider>
    );
  }

  function Toolbar() {
    const theme = useContext(ThemeContext);
    return <div>Current theme: {theme}</div>;
  }
  ```


### Error Boundaries and Suspense

* **Error Boundaries**: Catch errors in components and display fallback UI:
  ```jsx
  class ErrorBoundary extends React.Component {
    state = { hasError: false };

    static getDerivedStateFromError(error) {
      return { hasError: true };
    }

    render() {
      if (this.state.hasError) {
        return <h1>Something went wrong.</h1>;
      }
      return this.props.children;
    }
  }
  ```

* **Suspense**: Handle loading states for lazy-loaded components or data fetching:
  ```jsx
  const LazyComponent = React.lazy(() => import('./LazyComponent'));

  function App() {
    return (
      <React.Suspense fallback={<div>Loading...</div>}>
        <LazyComponent />
      </React.Suspense>
    );
  }
  ```


### Portals: Rendering Outside the Component Tree

Portals let you render a component outside its parent DOM hierarchy, which is useful for modals, tooltips, and dropdowns.

* Example:
  ```jsx
  import { createPortal } from 'react-dom';

  function MyComponent() {
    return (
      <div style="{% raw %}{{ border: '2px solid black' }}{% endraw %}">
        <p>This child is placed in the parent div.</p>
        {createPortal(
          <p>This child is placed in the document body.</p>,
          document.body
        )}
      </div>
    );
  }
  ```

