function md_tut() {
    /* set up ROT library */
    ROT.DEFAULT_WIDTH = 80;
    ROT.DEFAULT_HEIGHT = 15;
    var display = new ROT.Display({
        fontSize: 12
    });
    document.getElementById("canvasContainer").appendChild(display.getContainer());
    
    /* lines are broken at word boundaries; lines are trimmed */
    var quick = ".";
    var avg = "%c{yellow}o%c{}";
    var slow = "%c{green}O%c{}";
    
    var askers = [slow, avg, quick];
    var day = [];
    for (var i = 0; i < ROT.DEFAULT_WIDTH * ROT.DEFAULT_HEIGHT; i++) {
        day.push(askers.random());
    }

    display.drawText(0, 0, day.join(""), ROT.DEFAULT_WIDTH);

    function seek_answers(answerers, answer_odds) {
        for (var i = 0; i < answerers; i++) {
            if (ROT.RNG.getPercentage() <= answer_odds) {
                return askers.random();
            };
        };
    }

    function next_day() {
        for (var i = 0; i < ROT.DEFAULT_WIDTH * ROT.DEFAULT_HEIGHT; i++) {
            switch (day[i]) {
            case slow:
                day[i] = seek_answers(10, 99) || day[i];
                break;
            case avg:
                day[i] = seek_answers(10, 50) || day[i];
                break;
            case quick:
                day[i] = seek_answers(10, 1) || day[i];
                break;
            }
        };
    }

    document.addEventListener("keypress", function (e) {
        var code = e.charCode;
        var ch = String.fromCharCode(code);
        if (ch == 'n') {
            next_day();
            display.drawText(0, 0, day.join(""), ROT.DEFAULT_WIDTH);
        };
    });
}
