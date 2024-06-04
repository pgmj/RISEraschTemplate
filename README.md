## About this repo

This is a code repository intended for cloning to a local folder to make it simpler and faster to start up a new Rasch analysis project, using R, Rstudio and the [RISEkbmRasch](https://github.com/pgmj/RISEkbmRasch) package.

You can also find a lot of useful information about using the `RISEkbmRasch` package in the [package vignette](https://pgmj.github.io/raschrvignette/RaschRvign.html).

## How to use

The recommended way to use this is by using `git clone` and make a local copy of this repository, then re-initialize git to enable version tracking.

This is done in three steps.

First, navigate a terminal/command prompt to a folder where you want to create a new subfolder containing the R project.

```
git clone https://github.com/pgmj/RISEraschTemplate.git new_folder
```

Second, remove the `.git` folder in your newly created folder. This is a hidden folder on most platforms. If you are using MacOS or any other UNIX-like platform, this is done with

```
rm -rf .git
```

Third, rename the R project file, `RISEraschTemplate.Rproj` to something that makes sense for your project.


## Instructions in Swedish

Öppna terminal/command prompt och navigera till en mapp där du vill skapa en undermapp för analys. Använder du Windows kan du även navigera med Utforskaren och sedan öppna en 

```
git clone https://github.com/pgmj/RISEraschTemplate.git ny_mapp
```

Ersätt `ny_mapp` i raden ovan med vad du vill att din mapp ska heta (använd ej blanksteg). Byt sedan namn på .Rproj-filen och radera .git-mappen ifall du ska skapa ett nytt repo baserat på detta. Du raderar git-mappen genom att använda terminalen och köra kommandot (på MacOS/UNIX)

```
rm -rf .git
```

Om du har Windows som operativsystem kan du använda Utforskaren för att radera mappen. Du behöver aktivera "visa dolda filer" för att den ska visas.
