Use sassc and libsass
===

`libsass` is the C-port of the popular sass compiler.  

I have always liked how sass help me make my css DRY.  Unfortunately, I gave up on using it because the original `ruby` version was simply too slow and disrupts my workflow badly.  We are talking about a 5-13 seconds wait for sass to be compiled into css, if I save my 1,000 to 10,000 line sass file.  That's simply unacceptable for frontend design/development work.

I heard about this C-port from *Zell Liew* today when he gave a talk at **Hackers & Painters** over lunch.

Checked it out immediately and wrote a quick script to compile it on my Mac OS X machine (Mavericks).

Installation
===

wget or git clone this repository, then simply run the included script.

`sudo ./setup.sh`

After successful compilation, the `sassc` command should be available if `/usr/local/bin` is in your `PATH`.

Usage
===

`sass` /path/to/my/included/scss/file/input.scss /any/output/path/output.css

Your `output.css` should match my included `expected_output.css`.  

That's it. Enjoy.

TODO
===

Implement a port file for `Macports` perhaps?
