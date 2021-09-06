# wanalyze

Ubuntu installation instructions for wanalyze
---------------------------------------------

Some of these commands may require sudo to run.

Install OCAML
- instructions from https://ocaml.org/docs/install.html
- apt install ocaml-nox

Install github desktop for Ubuntu
- instructions: https://gist.github.com/berkorbay/6feda478a00b0432d13f1fc0a50467f1
- sudo wget https://github.com/shiftkey/desktop/releases/download/release-2.6.3-linux1/GitHubDesktop-linux-2.6.3-linux1.deb
- sudo apt-get install gdebi-core
- sudo gdebi /home/your_username/GitHubDesktop-linux-2.6.3-linux1.deb

Clone this repo

Install OPAM
- instructions: https://opam.ocaml.org/doc/Install.html
- add-apt-repository ppa:avsm/ppa
- apt update
- apt install opam
- opam init
- eval $(opam env)
- opam update -uy

Make sure you have the GNU C compiler installed
- apt update
- apt install build-essential

Install common OCAML packages
- instructions: https://github.com/janestreet/install-ocaml
- opam install -y async core js_of_ocaml js_of_ocaml-ppx merlin utop ocp-indent

Build and run wanalyze
- from the directory that you cloned the wanalyze repo to
- build: "corebuild -lib str readBin.native"
- to run wanalyze on a wasm file: "./readBin.native file.wasm >file.out 2>file.err"

(Optional) Install MS Code
- download https://go.microsoft.com/fwlink/?LinkID=760868
- then sudo apt install ./<file downloaded>.deb