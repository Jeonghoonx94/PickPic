# Welcome to PickPic

>### [픽픽 (PickPic)](http://i4a305.p.ssafy.io/)

<br>

## 🚩 Table of Contents
* [Team Member Introduction](#team-member-introduction)
* [Project Outline](#project-outline)
* [Tech Stack](#tech-stack)
* [Prerequisites](#prerequisites)
* [Launch](#launch)

## Team Member Introduction

*팀장*
<br>
**👦김영록**


*팀원*
<br>
**👦곽지원**

**👩윤현수**

**👦이석원**

**👦주정훈**

<br>

## Project Outline

- **진행 기간**: 2021.01.11 ~ 2021.02.19
- **목표**
  - 연인에게 사진 못 찍는다고 구박 받는 사람,
  - 프로필용 사진을 찍었는데 어떤게 제일 나은지 모르는 사람,
  - 찍은 사진을 다른 사람들과 공유하고 싶은 사람, <br>
  :star: 이 모든 사람들을 위한 웹사이트 :star:

<br>

## Tech Stack
<img src="/uploads/fddbf3c3d4e179810be2e2653dfe4364/image.png" width="800px">

<details>
    <summary>Front 자세히 살펴보기</summary>
    <ul>
        <li>Vue: 2.6.11</li>
        <li>Vue CLI: 4.3.1</li>
        <li>Vuex: 3.2.0</li>
        <li>Vue-router: 3.1.6</li>
        <li>Vuetify: 2.2.23</li>
        <li>axios: 0.21.1</li>
        <li>vue-infinite-loading: 2.4.5</li>
        <li>vuex-persistedstate: 4.0.0-beta.3</li>
        <li>bootstrap: 4.6.0</li>
        <li>bootstrap-vue: 2.21.2</li>
        <li>jodit: 3.5.4</li>
        <li>tiptap: 1.32.0</li>
        <li>tiptap-extensions: 1.35.0</li>
        <li>@fortawesome/free-regular-svg-icons: 5.15.2</li>
        <li>@fortawesome/free-solid-svg-icons: 5.15.2</li>
        <li>@toast-ui/vue-image-editor": 1.3.0</li>
    </ul>
</details>

<details>
    <summary>Back 자세히 살펴보기</summary>
    <ul>
        <li>Java: 1.8</li>
        <li>Spring Boot</li>
        <li>MyBatis: 2.1.3</li>
        <li>Tomcat</li>
        <li>Spring Boot Starter Mail</li>
        <li>Apache Commons Lang</li>
        <li>Apache Commons IO: 2.6</li>
        <li>Apache Commons FileUpload: 1.3.2</li>
        <li>Spring Boot Starter Security</li>
        <li>Thumbnailator: 0.4.13</li>
        <li>AWS</li>
        <li>Swagger: 2.9.2</li>
        <li>MySQL: 8.0.22</li>
    </ul>
</details>

<br>

## Prerequisites
- [Vue.js 2](https://vuejs.org/)
- [Node.js LTS](https://nodejs.org/en/)
- [Java 1.8](https://www.oracle.com/kr/java/technologies/javase/javase-jdk8-downloads.html)
- [Spring Tool Suite 3](https://github.com/spring-projects/toolsuite-distribution/wiki/spring-tool-suite-3) (for Windows)
- [Visual Studio Code](https://code.visualstudio.com/) (for Windows)

## Launch

### 1. Install this code on your local system

### 2. Change Directory
```bash
$ cd /path/to/install/location
```

### 3. Backend

#### Linux

- Change directory to backend
```bash
$ cd /path/to/install/location/backend
```

- Maven Update
```bash
$ mvn clean package
```

- Edit Code

- Run
```bash
$ cd target
$ java -jar [jarFileName].jar
```

#### Windows
- Change directory to backend
```
Open STS
Add backend project into workspace
```

- In STS, auto maven update.
- If not auto maven update, you should Maven Update
```
Right click on added project
Go 'Maven', and click 'update Project...'  or  press key 'Alt+F5' 
Select added project
Check 'Force Update of Snapshots/Releases'
Click 'OK'
```

- Edit Code

- Run
```
Right click on added project
Go 'Run As', and click 'Spring Boot App'  or  press key 'Alt+Shift+X,B' 
```

### 4. FrontEnd

#### Linux

- Change directory to frontend
```bash
$ cd /path/to/install/location/frontend
```

- Install dependencies
```bash
$ npm install
```

- Edit

- Run
```bash
$ npm run serve
```

#### Windows

- Change directory to frontend
```bash
Run Visual Studio Code
Add frontend project into workspace
open Terminal or Bash (ctrl + `)
$ cd /path/to/install/location/frontend
```

- Install dependencies on Terminal or Bash
```bash
$ npm install
```

- Edit

- Run on Terminal or Bash
```bash
$ npm run serve
```
