function idleLogout() {
    var t;
    // window.onmousemove = resetTimer;
    // window.onmousedown = resetTimer;  // catches touchscreen presses as well      
    // window.ontouchstart = resetTimer; // catches touchscreen swipes as well 
    window.onclick = resetTimer;      // catches touchpad clicks as well
    window.onkeypress = resetTimer;   
    window.addEventListener('scroll', resetTimer, true); // improved; see comments

    function yourFunction() {
        // your function for too long inactivity goes here
        window.location.href = '../../logout.html';
    }

    function resetTimer() {
        clearTimeout(t);
        t = setTimeout(yourFunction, 120000);  // time is in milliseconds
    }
}
idleLogout();