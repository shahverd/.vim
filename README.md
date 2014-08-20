This is my fantastic vim configurations

# Installation
Simply copy and paste these commands in command line:

	cd ~
	mv .vim vim_backedup
	mv .vimrc vimrc_backedup
	git clone https://github.com/shahverdy/.vim
	mv ~/.vim/.vimrc ~/.vimrc
	~/.vim/install.sh
	vim -c 'PluginInstall'



# Features
This is a set of Plugins+Configurations+SystemSettings. Plusings and configurations are 
OS indipendant, but my SystemSettings are only for Linux (Debian family). Still you can use it
if you are not using a Debian Gnu/Linux. 

## [Vundle](https://github.com/gmarik/Vundle.vim)
Vundle is short for _Vim bundle_ and is a [Vim] plugin manager.

Vundle allows you to...

* keep track of and [configure] your plugins right in the `.vimrc`
* [install] configured plugins (a.k.a. scripts/bundle)
* [update] configured plugins
* [search] by name all available [Vim scripts]
* [clean] unused plugins up
* run the above actions in a *single keypress* with [interactive mode]

Vundle] automatically...

* manages the [runtime path] of your installed scripts
* regenerates [help tags] after installing and updating

Vundle is undergoing an [interface change], please stay up to date to get latest changes.

[![Gitter-chat](https://badges.gitter.im/gmarik/Vundle.vim.png)](https://gitter.im/gmarik/Vundle.vim) for discussion and support.

![Vundle-installer](http://i.imgur.com/Rueh7Cc.png)


## [NerdTree](https://github.com/scrooloose/nerdtree)
The NERD tree allows you to explore your filesystem and to open files and
directories. It presents the filesystem to you in the form of a tree which you
manipulate with the keyboard and/or mouse. It also allows you to perform
simple filesystem operations.

The following features and functionality are provided by the NERD tree:

  * Files and directories are displayed in a hierarchical tree structure
  * Different highlighting is provided for the following types of nodes:
    * files
    * directories
    * sym-links
    * windows .lnk files
    * read-only files
    * executable files
  * Many (customisable) mappings are provided to manipulate the tree:
    * Mappings to open/close/explore directory nodes
    * Mappings to open files in new/existing windows/tabs
    * Mappings to change the current root of the tree
    * Mappings to navigate around the tree
    * ...
  * Directories and files can be bookmarked.
  * Most NERD tree navigation can also be done with the mouse
  * Filtering of tree content (can be toggled at runtime)
    * custom file filters to prevent e.g. vim backup files being displayed
    * optional displaying of hidden files (. files)
    * files can be "turned off" so that only directories are displayed
  * The position and size of the NERD tree window can be customised
  * The order in which the nodes in the tree are listed can be customised.
  * A model of your filesystem is created/maintained as you explore it. This
    has several advantages:
    * All filesystem information is cached and is only re-read on demand
    * If you revisit a part of the tree that you left earlier in your
      session, the directory nodes will be opened/closed as you left them
  * The script remembers the cursor position and window position in the NERD
    tree so you can toggle it off (or just close the tree window) and then
    reopen it (with NERDTreeToggle) the NERD tree window will appear exactly
    as you left it
  * You can have a separate NERD tree for each tab, share trees across tabs,
    or a mix of both.
  * By default the script overrides the default file browser (netrw), so if
    you :edit a directory a (slightly modified) NERD tree will appear in the
    current window
  * A programmable menu system is provided (simulates right clicking on a node)
    * one default menu plugin is provided to perform basic filesystem
      operations (create/delete/move/copy files/directories)
  * There's an API for adding your own keymappings


## [Vim-NerdTree-Tabs](https://github.com/jistr/vim-nerdtree-tabs)
This plugin aims at making NERDTree feel like a true panel, independent of tabs.

* **Just one NERDTree**, always and ever. It will always look the same in
  all tabs, including expanded/collapsed nodes, scroll position etc.

* Open in all tabs / close in all tabs. Do this via `:NERDTreeTabsToggle`

* Meaningful tab captions for inactive tabs. No more captions like 'NERD_tree_1'.

* When you close a file, the tab closes with it. No NERDTree hanging open.

* Autoopen NERDTree on GVim / MacVim startup.

Many of these features can be switched off. See section Configuration.


## [NerdCommenter](https://github.com/scrooloose/nerdcommenter)
The following key mappings are provided by default (there is also a menu 
provided that contains menu items corresponding to all the below mappings): 

Most of the following mappings are for normal/visual mode only. The |NERDComInsertComment| mapping is for insert mode only. 

**[count]\<leader\>cc |NERDComComment|**  
Comment out the current line or text selected in visual mode. 


**[count]\<leader\>cn |NERDComNestedComment|**  
Same as \<leader\>cc but forces nesting. 


**[count]\<leader\>c<space> |NERDComToggleComment|**  
Toggles the comment state of the selected line(s). If the topmost selected 
line is commented, all selected lines are uncommented and vice versa. 


**[count]\<leader\>cm |NERDComMinimalComment|**  
Comments the given lines using only one set of multipart delimiters. 


**[count]\<leader\>ci |NERDComInvertComment|**  
Toggles the comment state of the selected line(s) individually. 


**[count]\<leader\>cs |NERDComSexyComment|**  
Comments out the selected lines ``sexily'' 


**[count]\<leader\>cy |NERDComYankComment|**  
Same as \<leader\>cc except that the commented line(s) are yanked first. 


**\<leader\>c$ |NERDComEOLComment|**  
Comments the current line from the cursor to the end of line. 


**\<leader\>cA |NERDComAppendComment|**  
Adds comment delimiters to the end of line and goes into insert mode between 
them. 


**|NERDComInsertComment|**  
Adds comment delimiters at the current cursor position and inserts between. 
Disabled by default. 


**\<leader\>ca |NERDComAltDelim|**  
Switches to the alternative set of delimiters. 


**[count]\<leader\>cl**  
**[count]\<leader\>cb    |NERDComAlignedComment|**  
Same as |NERDComComment| except that the delimiters are aligned down the 
left side (\<leader\>cl) or both sides (\<leader\>cb). 


**[count]\<leader\>cu |NERDComUncommentLine|**  
Uncomments the selected line(s). 

## [TagBar](https://github.com/majutsushi/tagbar)
Tagbar is a vim plugin for browsing the tags of source code files.
It provides a sidebar that displays the ctags-generated tags of the current file, ordered by their scope. This means that for example methods in C++ are displayed under the class they are defined in.

## [ZoomWin](https://github.com/vim-scripts/ZoomWin)
The idea is to make it easy to zoom into and out of a window.  ZoomWin supports normal windows, and it now also supports scratch-windows, no-name windows, and modified-buffer windows.

 * ZoomWin is a 7.2 plugin (as of v23)

 * Files are made hidden during zoom-in and restored upon zoom-out

 * All windows' file contents will be restored during zoomouts. 

 * ZoomWin will clean up any temporary files it generates upon exit.
 
 * Session files are guaranteed to be unique to each vim session, so multiple vims can use zoom-in/out without interfering with one another

## [Vim-airline](https://github.com/bling/vim-airline)
Lean &amp; mean status/tabline for vim that's light as air.

![img](https://github.com/bling/vim-airline/wiki/screenshots/demo.gif)

*  Tiny core written with extensibility in mind ([open/closed principle][8]).
*  Integrates with a variety of plugins, including: [vim-bufferline][6], [fugitive][4], [unite][9], [ctrlp][10], [minibufexpl][15], [gundo][16], [undotree][17], [nerdtree][18], [tagbar][19], [vim-gitgutter][29], [vim-signify][30], [syntastic][5], [eclim][34], [lawrencium][21], [virtualenv][31], [tmuxline][35].
*  Looks good with regular fonts and provides configuration points so you can use unicode or powerline symbols.
*  Optimized for speed; it loads in under a millisecond.
*  Extensive suite of themes for popular color schemes including [solarized][23] (dark and light), [tomorrow][24] (all variants), [base16][32] (all variants), [molokai][25], [jellybeans][26] and others; have a look at the [screenshots][14] in the wiki.
*  Supports 7.2 as the minimum Vim version.
*  The master branch tries to be as stable as possible, and new features are merged in only after they have gone through a [full regression test][33].
*  Unit testing suite.

## [Vim-Misc](https://github.com/xolox/vim-misc)
The vim-misc plug-in contains Vim scripts that are used by most of the [Vim
plug-ins I've written] [plugins] yet don't really belong with any single one of
the plug-ins. Basically it's an extended standard library of Vim script
functions that I wrote during the development of my Vim profile and plug-ins.

In the past these scripts were bundled with each plug-in, however that turned
out to be a maintenance nightmare for me. That's why the miscellaneous scripts
are now a proper plug-in with their own page on Vim Online.

Because the miscellaneous scripts are no longer bundled with my Vim plug-ins,
users are now required to install the miscellaneous scripts separately. This is
unfortunate for users who are upgrading from a previous release that did bundle
the miscellaneous scripts, but I don't see any way around this. Sorry!

## [Vim-Session](https://github.com/xolox/vim-session)
The vim-session plug-in improves upon [Vim](http://www.vim.org/)'s built-in [:mksession][mksession] command by enabling you to easily and (if you want) automatically persist and restore your Vim editing sessions. It works by generating a [Vim script](http://vimdoc.sourceforge.net/htmldoc/usr_41.html#script) that restores your current settings and the arrangement of tab pages and/or split windows and the files they contain.

It's easiest to explain with examples.  Press `cs"'` inside

    "Hello world!"

to change it to

    'Hello world!'

Now press `cs'<q>` to change it to

    <q>Hello world!</q>

To go full circle, press `cst"` to get

    "Hello world!"

To remove the delimiters entirely, press `ds"`.

    Hello world!

Now with the cursor on "Hello", press `ysiw]` (`iw` is a text object).

    [Hello] world!

Let's make that braces and add some space (use `}` instead of `{` for no
space): `cs]{`

    { Hello } world!

Now wrap the entire line in parentheses with `yssb` or `yss)`.

    ({ Hello } world!)

Revert to the original text: `ds{ds)`

    Hello world!

Emphasize hello: `ysiw<em>`

    <em>Hello</em> world!

Finally, let's try out visual mode. Press a capital V (for linewise
visual mode) followed by `S<p class="important">`.

    <p class="important">
      <em>Hello</em> world!
    </p>

This plugin is very powerful for HTML and XML editing, a niche which
currently seems underfilled in Vim land.  (As opposed to HTML/XML
*inserting*, for which many plugins are available).  Adding, changing,
and removing pairs of tags simultaneously is a breeze.

The `.` command will work with `ds`, `cs`, and `yss` if you install
[repeat.vim](https://github.com/tpope/vim-repeat).

## [Vim-Surround](https://github.com/tpope/vim-surround)
Surround.vim is all about "surroundings": parentheses, brackets, quotes, XML tags, and more. The plugin provides mappings to easily delete, change and add such surroundings in pairs.

## [Vim-AutoFormat](https://github.com/Chiel92/vim-autoformat)
Format your code with only one button press! This plugin makes use of external formatprograms to achieve the best result. Check the list of formatprograms to see which languages are supported by default. You can easily customize or add your own formatprogram. When no formatprogram exists (or no formatprogram is installed) for a certain filetype, vim-autoformat uses vim's indent functionality as a fallback.

## [Conque-Shell](http://code.google.com/p/conque/)
Conque is a Vim plugin which allows you to run interactive programs, such as bash on linux or powershell.exe on Windows, inside a Vim buffer. In other words it is a terminal emulator which uses a Vim buffer to display the program output.

## [AutoComplPop](https://github.com/vim-scripts/AutoComplPop)
With this plugin, your vim comes to automatically opens popup menu for 
completions when you enter characters or move the cursor in Insert mode. It 
won't prevent you continuing entering characters. 

Which completion method is used depends on the text before the cursor. The
default behavior is as follows:

        kind      filetype    text before the cursor ~
        Keyword   *           two keyword characters
        Filename  *           a filename character + a path separator 
                              + 0 or more filename character
        Omni      ruby        ".", "::" or non-word character + ":"
                              (|+ruby| required.)
        Omni      python      "." (|+python| required.)
        Omni      xml         "<", "</" or ("<" + non-">" characters + " ")
        Omni      html/xhtml  "<", "</" or ("<" + non-">" characters + " ")
        Omni      css         (":", ";", "{", "^", "@", or "!")
                              + 0 or 1 space

Also, you can make user-defined completion and snipMate's trigger completion
(|acp-snipMate|) auto-popup if the options are set.

These behavior are customizable.

## [FuzzyFinder](https://github.com/vim-scripts/AutoComplPop)
FuzzyFinder provides convenient ways to quickly reach the 
buffer/file/command/bookmark/tag you want. FuzzyFinder searches with the 
fuzzy/partial pattern to which it converted an entered pattern. 

        Entered pattern  Fuzzy pattern   Partial pattern ~ 
> 
        abc              *a*b*c*         *abc* 
        dir/file         dir/*f*i*l*e*   dir/*file* 
        d*r/file         d*r/*f*i*l*e*   d*r/*file* 
        ../**/s          ../**/*s*       ../**/*s* 
                         (** allows searching a directory tree.) 
< 
You will be happy when: 

        "./AhLongLongLongLongLongFile.txt" 
        "./AhLongLongLongLongLongName.txt" 
        "./OhLongLongLongLongLongFile.txt" 
        "./OhLongLongLongLongLongName.txt" <- you want :O 

Type "ON" and "OhLongLongLongLongLongName.txt" will be selected. :D 

FuzzyFinder can search: 

        - buffers 
        - files 
        - directories 
        - most recently used files 
        - files around most recently used files 
        - most recently used command-lines 
        - bookmarked files 
        - bookmarked directories 
        - tags 
        - files which are included in current tagfiles 
        - jump list 
        - change list 
        - buffer lines 
        - quickfix 
        - help 

FuzzyFinder also provides APIs to use its system of searching files or 
selecting items. 

FuzzyFinder supports multibyte characters. 
