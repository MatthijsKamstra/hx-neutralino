# hx-neutralino

POC of using [Haxe](http://www.haxe.org) and [Neutralino](https://neutralino.js.org)

Read more about it in the [README_HAXE.MD](README_HAXE.MD)!

![](icon.png)

## how to get started Neutralinojs

We begin with the installing the Typescript starter project for Neutralinojs

### tl;dr (Neutralinojs)

```bash
# install neutralino cli
$ npm i -g @neutralinojs/neu

# create a typescript neutrolin app
$ neu create myapp --template ts
$ cd myapp

# build project
$ neu build
```

### Get started (Neutralinojs)

Install [neu-cli](https://neutralino.js.org/docs/#/tools/cli)

```bash
$ npm i -g @neutralinojs/neu
```

Create Neutralino app with Typescript template

```bash
$ neu create myapp --template ts
$ cd myapp
```

Bundle source files

```bash
$ neu build
```

Learn more about neu-cli from [docs](https://neutralino.js.org/docs/#/tools/cli)

## Haxe

The haxe part:

### tl;dr (Haxe)

### Get started (Haxe)

```
# install dts2hx via npm
npm install dts2hx --save-dev
```

copy file to correct folder to convert to externs

```
# copy typescript file to correct folder
mkdir -p node_modules/@types/neutralino
cp -i src/index.d.ts node_modules/@types/neutralino/index.d.ts
```

convert the typescript files to Haxe externs

```
# convert typescript files to hx
npx dts2hx neutralino/index.d.ts
```

### Set up Haxe

- create folder `hx`
- create `Main.hx`

creat build.hxml

```xml
--class-path hx
--class-path externs
--main Main
--js app/assets/app.js
--dce full
-D js-es=6
```

## Improvement

- [ ] remove ts folder structure
- [ ] remove ts webpacker (use js version)
- [ ] use https://github.com/jasononeil/webpack-haxe-loader for Haxe webpack
