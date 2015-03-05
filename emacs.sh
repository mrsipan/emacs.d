#!/bin/bash

update_git() {
  local pkgname=$1
  local here=`pwd`

  if [ -d $pkgname ]; then
    cd $pkgname
    git pull
    ls -1 [Mm]akefile.in > /dev/null 2>&1 && {
      autoconf
      ./configure
    }
    ls -1 [Mm]akefile > /dev/null 2>&1 && {
      make clean
      make
    }
    cd $here
    return 0
  fi
}

get_pkgname() {
  local giturl=$1
  printf "%s" $giturl | sed 's/git:\/\/.*\/\([^/]*\)\.git/\1/'
}

use_branch_or_tag() {
  local projname=$1
  local use=$2
  local here=`pwd`

  printf "using tag/branch $use in project $projname\n"

  cd $projname
  git pull
  git checkout $2
  git branch -v
  cd $here
  update_git $projname
}

download() {
  local giturl=$1
  local pkgname=`get_pkgname $giturl`

  if [ -d $pkgname ]; then
    update_git $pkgname
  else
    [ -f $pkgname ] && rm -rf $pkgname
    git clone $giturl
    update_git $pkgname
  fi
  return 0
}

check_availability() {
  for toolname in "${@}"; do
    which $toolname > /dev/null 2>&1 || { printf "Missing \"%s\". Exiting.\n" "$toolname"; exit 5; }
  done
  return 0
}

check_availability emacs autoconf make git

declare -a giturl
giturls=(
  git://github.com/emacsmirror/ace-jump-mode.git
  git://github.com/emacsmirror/evil.git
  git://github.com/emacsmirror/autopair.git
  git://github.com/emacsmirror/undo-tree.git
  git://github.com/clojure-emacs/clojure-mode.git
  git://github.com/emacsmirror/dictionary.git
  git://github.com/emacsmirror/text-translator.git
  git://github.com/emacsmirror/rainbow-mode.git
  git://github.com/emacsmirror/yasnippet.git
  git://github.com/emacsmirror/magit.git
  git://github.com/emacsmirror/jinja2.git
  git://github.com/emacsmirror/dired-plus.git
  git://github.com/emacsmirror/babel.git
  git://github.com/emacsmirror/apel.git
  git://github.com/emacsmirror/elscreen.git
  git://github.com/emacsmirror/haskell-mode.git
  git://github.com/emacsmirror/android-mode.git
  git://github.com/emacsmirror/bookmark-plus.git
  git://git.savannah.gnu.org/tramp.git
  git://github.com/emacsmirror/cl-lib.git
  git://github.com/emacsmirror/ido.git
  git://github.com/emacsmirror/ido-ubiquitous.git
  git://github.com/emacsmirror/vc.git
  git://github.com/emacsmirror/dictem.git
  git://github.com/emacsmirror/shell.git
  git://github.com/emacsmirror/auto-pep8.git
  git://github.com/emacsmirror/ibuffer-vc.git
  git://github.com/emacsmirror/caml.git
  git://github.com/emacsmirror/groovy-mode.git
  git://github.com/emacsmirror/lua-mode.git
  git://github.com/emacsmirror/erlang.git
  git://github.com/emacsmirror/coffee-mode.git
  git://github.com/emacsmirror/css-mode.git
  git://github.com/emacsmirror/haml-mode.git
  git://github.com/emacsmirror/markdown-mode.git
  git://github.com/emacsmirror/cperl-mode.git
  git://github.com/emacsmirror/php-mode.git
  git://github.com/emacsmirror/sass-mode.git
  git://github.com/emacsmirror/yaml-mode.git
  git://github.com/emacsmirror/ruby-mode.git
  git://github.com/emacsmirror/htmlize.git
  #git://github.com/emacsmirror/ruby-end.git
  git://github.com/emacsmirror/smex.git
  git://github.com/emacsmirror/expand-region.git
  git://github.com/emacsmirror/browse-kill-ring.git
  git://github.com/emacsmirror/find-file-in-project.git
  git://github.com/emacsmirror/w3m.git
  git://github.com/emacsmirror/wgrep.git
  git://github.com/emacsmirror/exec-path-from-shell.git
  git://github.com/emacsmirror/flyspell-lazy.git
  git://github.com/emacsmirror/el-get.git
  git://github.com/emacsmirror/multiple-cursors.git
  git://github.com/emacsmirror/lilypond.git
  git://github.com/emacsmirror/pandoc-mode.git
  git://github.com/clojure-emacs/cider.git
  git://github.com/emacsmirror/evil-leader.git
  git://github.com/emacsmirror/ant-mode.git
  git://github.com/emacsmirror/evil-plugins.git
  git://github.com/emacsmirror/rainbow-delimiters.git
  git://github.com/emacsmirror/pylookup.git
  git://github.com/timcharper/evil-surround.git
  git://github.com/cofi/evil-leader.git
  git://github.com/cofi/evil-numbers.git
  git@github.com:mrsipan/python.el.git
  git@github.com:mrsipan/emacs-rust.git
  git://github.com/mooz/js2-mode.git
  git://github.com/ananthakumaran/monky.git
  git://github.com/hvesalai/scala-mode2.git
  git://github.com/puppetlabs/puppet-syntax-emacs.git
  git://orgmode.org/org-mode.git
  git://github.com/auto-complete/auto-complete.git
  git://github.com/redguardtoo/evil-nerd-commenter.git
  git://github.com/emacsmirror/zenburn-theme.git
  git://github.com/jwiegley/regex-tool.git
  git://github.com/emacsmirror/elisp-lint.git
  git://github.com/emacsmirror/evil-paredit.git
  git://github.com/emacsmirror/pyregexp.git
  git://github.com/jwiegley/color-theme.git
  git://github.com/edwtjo/evil-org-mode.git
  git://github.com/emacsmirror/google-this.git
  git://github.com/manzyuk/google-translate.git
  git://jblevins.org/git/deft.git
  git@github.com:magnars/dash.el.git
  git://github.com/defunkt/gist.el.git
  git://github.com/sigma/gh.el.git
  git://github.com/sigma/pcache.git
  git://github.com/sigma/logito.git
  git://github.com/magit/git-modes.git
  git://github.com/lunaryorn/pkg-info.el.git
  git://github.com/magnars/s.el.git
  git://github.com/mrsipan/vala-mode.git
  git://github.com/mrsipan/sipan-theme.git
  git://github.com/cask/epl.git
  git://github.com/ocaml/tuareg.git
  git://github.com/Fuco1/smartparens.git
  git://github.com/expez/evil-smartparens.git
)

# make directories
test -d tmp/backups || mkdir -p tmp/backups
test -d tmp/auto-saves || mkdir -p tmp/auto-saves
test -d tmp/desktop || mkdir -p tmp/desktop
test -d snippets || mkdir  snippets

for giturl in "${giturls[@]}"; do
  printf "Working on: %s\n\n" $giturl
  download "$giturl"
done

## one-offs
# python
cd python.el
git pull
git checkout emacs-24
git branch
cd ..

use_branch_or_tag python.el emacs-24
use_branch_or_tag magit 1.2.2
use_branch_or_tag evil 1.0.9
use_branch_or_tag cider v0.8.2
use_branch_or_tag clojure-mode 4.0.1
use_branch_or_tag tramp v-2-2-10
use_branch_or_tag org-mode release_8.2.10
use_branch_or_tag smartparens 1.6.3

# ugly
[ -d queue ] || mkdir queue
[ -f queue/queue.el ] || \
  wget http://www.dr-qubit.org/predictive/queue.el -P queue
