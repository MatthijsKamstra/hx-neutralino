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

```
# install dts2hx via npm
npm install dts2hx --save-dev

# copy typescript file to correct folder
mkdir -p node_modules/@types/neutralino
cp -i src/index.d.ts node_modules/@types/neutralino/index.d.ts

# convert typescript files to hx
npx dts2hx neutralino/index.d.ts
```

### Get started (Haxe)

Install dts2hx via npm, we will us that to generate externs for Haxe

```
# install dts2hx via npm
npm install dts2hx --save-dev
```

Copy file to correct folder to convert to externs

Currently dts2hx expects the ts files to be in a repo in `node_modules`,
to get that working we just copy the files to that folder.

```
# copy typescript file to correct folder
mkdir -p node_modules/@types/neutralino
cp -i src/index.d.ts node_modules/@types/neutralino/index.d.ts
```

And convert the typescript files to Haxe externs

```
# convert typescript files to hx
npx dts2hx neutralino/index.d.ts
```

The [Haxe externs](externs/)

## structure

you will end up with a tree structure like this

```
.
├── LICENSE
├── README.md
├── app
│   ├── assets
│   │   ├── app.css
│   │   ├── app.js
│   │   └── neutralino.js
│   ├── index.html
│   ├── settings-browser.json
│   ├── settings-cloud.json
│   └── settings.json
├── externs
│   ├── global
│   │   ├── IndexGlobal.hx
│   │   ├── Neutralino.hx
│   │   └── neutralino
│   │       ├── App.hx
│   │       ├── AppMode.hx
│   │       ├── Computer.hx
│   │       ├── Debug.hx
│   │       ├── DirectoryData.hx
│   │       ├── FileData.hx
│   │       ├── Filesystem.hx
│   │       ├── InitOptions.hx
│   │       ├── LogSuccessData.hx
│   │       ├── LogType.hx
│   │       ├── Os.hx
│   │       ├── RamData.hx
│   │       ├── Settings.hx
│   │       ├── SettingsData.hx
│   │       ├── StdoutData.hx
│   │       ├── Storage.hx
│   │       ├── StoragePutData.hx
│   │       ├── SuccessData.hx
│   │       └── ValueData.hx
│   └── ts
│       └── Tuple1.hx
├── hx-neutralino-linux
├── hx-neutralino-mac
├── hx-neutralino-win.exe
├── neutralino.png
├── neutralinojs.log
├── package-lock.json
├── package.json
├── src
│   ├── app-core
│   │   └── lib.ts
│   ├── app.ts
│   ├── index.d.ts
│   ├── mycss.css
│   └── mycss2.css
├── storage
├── tsconfig.json
└── webpack.config.js
```

### Set up Haxe

- create folder `hx`
- create `Main.hx` and copy this [`Main.hx` content](hx/Main.hx) and [`appcore/Applib.hx`](hx/appcore/Applib.hx)
- create `build.hxml`

For now this will bypass the whole webpacker setup

##### build.hxml

```xml
--class-path hx
--class-path externs
--main Main
--js app/assets/app.js
--dce full
-D js-es=6
```

#### haxe-loader

install haxe-loader (https://github.com/jasononeil/webpack-haxe-loader)

```bash
haxelib install haxe-loader
```

```bash
npm install --save-dev css-loader file-loader haxe-loader
```

and uninstall

```bash
npm uninstall typescript ts-loader
```

example

source: https://github.com/elsassph/webpack-haxe-example/blob/vanilla/package.json

## Improvement

- [ ] remove ts folder structure
- [ ] remove ts webpacker (use js version)
- [ ] use https://github.com/jasononeil/webpack-haxe-loader for Haxe webpack
