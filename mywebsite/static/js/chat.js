window.onload = function(){
    document.querySelector('#btnMessage').addEventListener('click', sendMessage)
    document.querySelector('#inputMessage').addEventListener('keypress', function(e){
        if (e.keyCode == 13)
            sendMessage()
    })

    function sendMessage(){
        var message = document.querySelector('#inputMessage')
        loadMessageHTML(message.value.trim())
        if (message.value.trim() != '')
            message.value = ''
    }

    function loadMessageHTML(message){
        document.querySelector('#boxMessages').innerHTML += 
        `
        <div class="alert alert-primary" role="alert">
            ${message}
            <div>
                <small class="fst-italic fw-bold">${user}</small>
                <small class="float-end">2024-09-17 15:13</small>
            </div>
        </div>
        `
    }
}