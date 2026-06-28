# docker-nodejs-app
A simple to-do-list app that utilizes Docker, Node.js, and React.js.

## Running the app

### Option A — Docker (recommended)

1. **Start Docker Desktop** and make sure it's running (green icon in the system tray).

2. **Build the image:**
   ```sh
   docker build -t docker-nodejs-app .
   ```

3. **Run the container:**
   ```sh
   docker run --rm -p 3000:3000 docker-nodejs-app
   ```

4. **Open the app** in your browser: [http://localhost:3000](http://localhost:3000)

To stop the container, press `Ctrl+C` in the terminal.

---

### Option B — Local Node.js (no Docker)

1. **Install dependencies:**
   ```sh
   yarn install
   ```

2. **Start the server:**
   ```sh
   node src/index.js
   ```
   Or, for auto-reload during development:
   ```sh
   yarn dev
   ```

3. **Open the app** in your browser: [http://localhost:3000](http://localhost:3000)

---

> **Note:** The Express server serves both the REST API (`/items`) and the React frontend from the same port (3000), so there is no separate frontend dev server to spin up.

## Running the tests

```sh
yarn test
```

This runs the Jest test suite, which covers the four API route handlers and the SQLite persistence layer.
