BAT(1)                                                                                     General Commands Manual                                                                                     BAT(1)

NNAAMMEE
       bat - manual page for bat

DDEESSCCRRIIPPTTIIOONN
       bat - a cat(1) clone with syntax highlighting and Git integration.

UUSSAAGGEE
              bat [OPTIONS] [FILE]...

              bat <SUBCOMMAND>

OOPPTTIIOONNSS
       General remarks

              Command-line options like '-l'/'--language' that take values can be specified as either '--language value', '--language=value', '-l value' or '-lvalue'.

       --ll, ----llaanngguuaaggee <language>

              Explicitly  set  the language for syntax highlighting. The language can be specified as a name (like 'C++' or 'LaTeX') or possible file extension (like 'cpp', 'hpp' or 'md'). Use '--list-lan‐
              guages' to show all supported language names and file extensions.

       --LL, ----lliisstt--llaanngguuaaggeess

              Display a list of supported languages for syntax highlighting.

       --mm, ----mmaapp--ssyynnttaaxx <from:to>...

              Map a file extension or file name to an existing syntax. For example, to highlight *.conf files with the INI syntax, use '-m conf:ini'. To highlight files named '.myignore' with the  Git  Ig‐
              nore syntax, use '-m .myignore:gitignore'.

       ----tthheemmee <theme>

              Set  the  theme  for  syntax  highlighting.  Use  '--list-themes'  to  see all available themes. To set a default theme, add the '--theme="..."' option to the configuration file or export the
              BAT_THEME environment variable (e.g.: export BAT_THEME="...").

       ----lliisstt--tthheemmeess

              Display a list of supported themes for syntax highlighting.

       ----ssttyyllee <style-components>

              Configure which elements (line numbers, file headers, grid borders, Git modifications, ..) to display in addition to the file contents. The argument is a comma-separated list of components to
              display  (e.g.   'numbers,changes,grid')  or  a pre-defined style ('full'). To set a default style, add the '--style=".."' option to the configuration file or export the BAT_STYLE environment
              variable (e.g.: export BAT_STYLE=".."). Possible values: *auto*, full, plain, changes, header, grid, numbers, snip.

       --pp, ----ppllaaiinn

              Only show plain style, no decorations. This is an alias for '--style=plain'. When '-p' is used twice ('-pp'), it also disables automatic paging (alias for '--style=plain ----ppaaggeerr=_n_e_v_e_r').

       --nn, ----nnuummbbeerr

              Only show line numbers, no other decorations. This is an alias for '--style=numbers'

       --AA, ----sshhooww--aallll

              Show non-printable characters like space, tab or newline. Use '--tabs' to control the width of the tab-placeholders.

       --rr, ----lliinnee--rraannggee <N:M>...

              Only print the specified range of lines for each file. For example:

              --line-range 30:40
                     prints lines 30 to 40

              --line-range :40
                     prints lines 1 to 40

              --line-range 40:
                     prints lines 40 to the end of the file

       --HH, ----hhiigghhlliigghhtt--lliinnee <N>...

              Highlight the N-th line with a different background color

       ----ccoolloorr <when>

              Specify when to use colored output. The automatic mode only enables colors if an interactive terminal is detected. Possible values: *auto*, never, always.

       ----iittaalliicc--tteexxtt <when>

              Specify when to use ANSI sequences for italic text in the output. Possible values: always, *never*.

       ----ddeeccoorraattiioonnss <when>

              Specify when to use the decorations that have been specified via '--style'. The automatic mode only enables decorations if an interactive terminal is detected. Possible values: *auto*, never,
              always.

       ----ppaaggiinngg <when>

              Specify when to use the pager. To control which pager is used, set the PAGER or BAT_PAGER environment variables (the latter takes precedence) or use the '--pager' option. To disable the pager
              permanently, set BAT_PAGER to an empty string or set '--paging=never' in the configuration file.  Possible values: *auto*, never, always.

       ----ppaaggeerr <command>

              Determine which pager is used. This option will overwrite the PAGER and BAT_PAGER environment variables. The default pager is 'less'. To disable the pager completely, use the  '--paging'  op‐
              tion. Example: '--pager "less --RRFF"'.

       ----wwrraapp <mode>

              Specify the text-wrapping mode (*auto*, never, character). The '--terminal-width' option can be used in addition to control the output width.

       ----ttaabbss <T>

              Set the tab width to T spaces. Use a width of 0 to pass tabs through directly

       --uu, ----uunnbbuuffffeerreedd

              This option exists for POSIX-compliance reasons ('u' is for 'unbuffered').  The output is always unbuffered - this option is simply ignored.

       ----tteerrmmiinnaall--wwiiddtthh <width>

              Explicitly  set  the width of the terminal instead of determining it automatically. If prefixed with '+' or '-', the value will be treated as an offset to the actual terminal width. See also:
              '--wrap'.

       --hh, ----hheellpp

              Print this help message.

       --VV, ----vveerrssiioonn

              Show version information.

AARRGGSS
              <FILE>...

              File(s) to print / concatenate. Use a dash ('-') or no argument at all to read from standard input.

SSUUBBCCOOMMMMAANNDDSS
              cache Modify the syntax-definition and theme cache

                                                                                                                                                                                                       BAT(1)
