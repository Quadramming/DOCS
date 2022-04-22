#!/bin/nodejs

function main() {
  const args = process.argv.slice(2);
  if ( args.length === 0 ) {
    c('No host in arguments');
  } else if ( args.length === 1 ) {
    showList(...args);
  } else if ( args.length === 2 ) {
    mount(...args);
  }
}

import * as cp from 'child_process';
import * as fs from 'fs';

const me = `quad`;

// Oneliners v2022.04.09
const c = text => console.log(text);
const t = text => {throw Error(text)};
const d = () => {debugger};
const check = (expression, text = `check failed`) => expression || t(text);
const zeroPad = (text, size) => String(text).padStart(size, `0`);
const sleep = seconds => new Promise(resolve => setTimeout(resolve, seconds*1000));
const spawn = command => {command = command.split(` `); cp.spawnSync(command[0], command.splice(1), {stdio: `inherit`})};
const exec = command => {command = command.split(` `); return String(cp.spawnSync(command[0], command.splice(1)).stdout).replace(/(\x0d)?\x0a$/g, ``)};
const kill = name => spawn(`sudo killall -9 ${name}`);
const removeFile = file => {try{ fs.unlinkSync(file) }catch{}};
const removeFolder = folder => {try{ fs.rmSync(folder, { recursive: true, force: true }) }catch{}};
const makeFolder = folder => {try { fs.mkdirSync(folder) } catch {}};
// End oneliners

function showList(host) {
  spawn(`smbclient --list=${host} --user=${me} --workgroup=work`);
}

function mount(host, folder) {
  const localFolder = `/home/hello/MOUNT/${host}_${folder}`;
  makeFolder(localFolder);
  spawn(`sudo mount.cifs //${host}/${folder} ${localFolder} -o user=${me} dom=work`);
}

try {
	main();
} catch ( error ) {
	c(`main() function problem:\n ${error.message}`);
}