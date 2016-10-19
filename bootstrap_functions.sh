#!/bin/bash

function log() {
    echo -n "MSG: "
    echo $*
}

function install_prereqs() {

    log "Running ${FUNCNAME[0]}"

    log "${FUNCNAME[0]}: Installing dependencies"
    apt-get update

    apt-get install -y \
        python \
        python-pip \
        git \
        apache2 \
        libapache2-mod-wsgi

    # restart apache
    log "${FUNCNAME[0]}: Restarting apache server"
    service apache2 restart
}

function install_python_nltk() {

    log "Running ${FUNCNAME[0]}"

    # Install python-nltk
    log "${FUNCNAME[0]}: Installing python-nltk module"
    pip install nltk

    # Download and install python-nltk corpora (with bugfix)
    # TODO: Change when dependencies change
    log "${FUNCNAME[0]}: Installing python-nltk resources with panlex fix"
#     python -c "import nltk
# import unicodedata
# packages = []
# col = nltk.downloader.Downloader()
# for package in col.packages():
#     packages.append(package.id.encode('ascii', 'ignore'))
# if 'panlex_lite' in packages: packages.remove('panlex_lite')
# nltk.download(packages)"
    python -c "import nltk
nltk.download(['treebank', 'sentiwordnet', 'wordnet'])"

}

function install_django_server() {

    log "Running ${FUNCNAME[0]}"

    log "${FUNCNAME[0]}: Installing Django 1.7 and freeze from pip"
    pip install Django==1.7 freeze

}