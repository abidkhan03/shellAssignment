# Download and Save Images from a URL

## Description

This shell assignment is based on downloading and saving the images from a given url and then parsing the html file to get the images from the url. The next step, is to save the images in current directory. The images are saved in the current directory with the name of the image. then, apply the command line arguments to download the image and save in a specific folder with given resolution.
At the last, the script works to copy shell script from current folder to home folder and then run the script from home folder to download new image after a specific interval time.


## Usage

```chmod +x ./shell_assignment.sh```
```./shell_assignment.sh```

download an image in a specific given directory with the file name and resolution.

```./shell_assignment.sh -d <directory> -f <filename> -r <resolution>```

```./shell_assignment.sh -p ~/home/Desktop/images -o my-wallpaper -r 1300x720```

or 

download with specific interval time

```./shell_assignment.sh -t <time>```

```./shell_assignment.sh -t 10 ~/home/Desktop/images```

## Author

* **Abdullah Abid**