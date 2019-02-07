#!/usr/bin/env node
// Run the simualtor from command prompt.
// This is for npm package.

var shell = require("shelljs");
var os = require('os');
var path = require("path");
if(os.platform() === "win32"){
    shell.exec(`node ${path.join(__dirname, "app.js")}`);
}
else if(os.platform() === "darwin"){
    shell.exec(`node ${path.join(__dirname, "app.js")}`);
}
else if(os.platform() === "linux"){
    shell.exec(`node ${path.join(__dirname, "app.js")}`);
}
