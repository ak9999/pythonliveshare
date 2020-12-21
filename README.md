# Portable Python Workspace for VS Code Live Share

## Requirements
 * Docker, most recent version
 * docker-compose, most recent version

## What is this?

This is a Docker image based off of the official [Python](https://hub.docker.com/_/python/) container.

Visual Studio Code has a powerful feature called "[Live Share](https://docs.microsoft.com/en-us/visualstudio/liveshare/use/vscode)".
This feature allows one to collaborate and share their editor with others over the internet.
Great for pair programming or teaching, as only the host needs to install all the dependencies, everyone else just needs
VS Code with the Live Share extension installed.

VS Code also has a feature allowing you to do development inside a container which you can read about here:
[Developing inside a Container](https://code.visualstudio.com/docs/remote/containers)

## Benefits
* You don't have to install any dependencies other than Docker on your host machine.
* The people you are sharing this with only have access to the container, not your host machine.
  Feel free to share your terminal.
* Quicker than setting up a virtual machine and works cross-platform.

## How to use
1. Clone this repo
2. Move any project files you want to work on during the Live Share session into the `src` directory.
3. Open the root directory in your terminal and type: `docker-compose up -d`
4. Open VS Code and follow the instructions in the "Developing inside a Container" link mentioned above.
5. Begin your Live Share session!