library(plumber)

#* @apiTitle Simple API

#* Echo provided text
#* @get /echo
function() {
    return("Hello World!!!!")
}