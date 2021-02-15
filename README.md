# Installing Postgres

Time to start putting our data into the machine...

![](https://media.giphy.com/media/10zxDv7Hv5RF9C/giphy.gif)

There are two scripts in this repo: `install.sh` and `linux_install.sh`.

#### If you have a Mac computer:
- `cd` into this directory once you have forked and cloned it.
  - (When typing `ls` you should see `README.md  install.sh  linux_install.sh`)
- Type `${SHELL} install.sh`
- It will ask for your password a couple of times. This is your computer password. You won't see it as you type but it is being typed.
- Some of these things take a while to run. Don't quit your terminal while things are still running!
- If you get errors, post screenshots in the debugging channel and we will fix them together.

If you don't get errors, once everything is done, type `psql`. You should have something that looks about like this:

```
psql (13.2)
Type "help" for help

[yourusername]=#
```

(You can exit by typing `\q` then hitting enter)

If you do, everything went smoothly! If you didn't, there was a problem somewhere. Paste what you see in your terminal into your pull request.

#### If you have a Linux computer:
- Your instructions are about the same except you will run `${SHELL} linux_install.sh`.
- If you don't get errors, type `psql` on the command line, and you should see the same thing as in the Mac instructions.

#### If you have a Windows computer:
- Our windows experts will guide you!
- If you need something to fall back on, this link provides a good guide: https://www.postgresqltutorial.com/install-postgresql/.
