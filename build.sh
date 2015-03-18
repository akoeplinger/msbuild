#!/bin/bash

if [ ! -f ./packages/NuGet.exe ]; then
    curl -sSL https://www.nuget.org/nuget.exe --create-dirs -o ./packages/NuGet.exe
fi

xbuild /p:UseMonoToolchain=true build.proj 
