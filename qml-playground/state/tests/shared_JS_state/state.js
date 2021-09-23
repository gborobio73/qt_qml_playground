.pragma library

var text = "default"

function setText (txt) {
    console.log('setText')
    text = txt
}

function getText() {
    console.log('getText')
    return text
}

// export { setText, getText }