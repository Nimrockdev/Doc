##Si da error por las dependencias

Step 1: $ npm cache clean --force

Step 2: Delete node_modules by $ rm -rf node_modules folder or delete it manually by going into the directory and right-click > delete. Delete package-lock.json file too.

Step 3: npm install

To start again, $ npm start

This worked for me. Hopes it works for you too.

PS: Still if it is there, kindly check the error it displays in red and act accordingly. This error is specific to node.js environment. Happy Coding!!
