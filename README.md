# Pentest & OSCP report

This repository contains the requirements, templates and the script to convert a markdown pentest or OSCP report into a PDF file that can be sent directly to the client or to Offensive Security.

# Requirements

Before executing the `generate.sh` your Kali Linux machine needs some packages that are not installed by default. In order to obtain them, execute the script `requirements.sh`.

# Things you need to know

## Line of code not splitting in code blocks

In might be the case where you execute a long string or you have a long output from a command that doesn't contain any spaces. In those cases, pandoc doesn't know where to split de line so it keeps a huge line that exists the PDF. To avoid this problem the number of character per line must not exceed

## Pandoc image resize

Since Pandoc renders images at page width by default, some images come out really big depending on the aspect ratio of the original image. This could be solved by using something like `![my caption](./figures/myimage.png){ width=250px }` in your original MarkDown file, but I prefer going through to manually resize images to the right size.

## Header 5

The `\leavevmode` and `\newline` are necessary because Pandoc from h5 onwards puts both the header and the following text it on the same line. 

```bash
#####  H5 \leavevmode \newline
```



# Usage

In order to generate your PDF file, just do the following.

```bash
./generate.sh <INPUT MAKRDOWN PATH> <OUTPUT PDF FILE>
```

If the compilation has been successful the PDF file will open.



