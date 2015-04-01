function game() {
    /* set up ROT library */
    ROT.DEFAULT_WIDTH = 80;
    ROT.DEFAULT_HEIGHT = 1;
    var echo = new ROT.Display({
        fontSize: 12
    });
    document.getElementById("input_field").appendChild(echo.getContainer());
    
    var input = [];

    echo.drawText(0, 0, input.join(""), ROT.DEFAULT_WIDTH);
            
    document.addEventListener("keypress", function (e) {
        var code = e.charCode;
        var ch = String.fromCharCode(code);

        if (code == 8){
            input.pop();
        } else {
            input.push(ch);
        }
        echo.drawText(0, 0, input.join(""), ROT.DEFAULT_WIDTH);
        output.innerHTML = input.join("");
     });
}
