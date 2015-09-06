function lg() {
    git add .
    git commit -a -m "$1"
    git push
    git push heroku master
}