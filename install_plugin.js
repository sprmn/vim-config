#!/usr/local/bin/node
const {exec} = require('child_process');

function addSubmodule(module, optOrStart, name) {
  const url = `https://github.com/${module}.git`;
  const location = `pack/${name}/${optOrStart}/${name}`
  return exec(`git submodule add ${url} ${location}`, (error, stdout, stderr) => {
    if (error) throw(error);
    console.log(stdout);
    console.error(stderr);
  });
}

function main() {
  const [,,module, optOrStart = 'start', name = module.split('/')[1]] = process.argv;
  addSubmodule(module, optOrStart, name);
}

main();
