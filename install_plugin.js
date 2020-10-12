#!/usr/local/bin/node
const {exec} = require('child_process');

function addSubmodule(module, optOrStart) {
  const [dir,name]=module.split('/');
  const url = `https://github.com/${module}.git`;
  const location = `pack/${dir}/${optOrStart}/${name}`
  return exec(`git submodule add ${url} ${location}`, (error, stdout, stderr) => {
    if (error) throw(error);
    console.log(stdout);
    console.error(stderr);
  });
}

function main() {
  const [,,module, optOrStart = 'start'] = process.argv;
  addSubmodule(module, optOrStart);
}

main();
