// main.js (렌더러 프로세스)
document.addEventListener('DOMContentLoaded', function() {
    const button = document.getElementById('sendMessage');

    button.addEventListener('click', () => {
        window.electron.send('toMain', 'Hello from Renderer Process');
    });

    window.electron.receive('fromMain', (data) => {
        console.log(`Received: ${data}`);
    });
});

