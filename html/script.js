window.addEventListener('message', (event) => {
    const data = event.data;
    
    if (data.action === 'show') {
        showNotification(data.data);
    }
});

function showNotification(data) {
    const notification = document.getElementById('notification');
    const title = document.getElementById('title');
    const message = document.getElementById('message');
    const typeBadge = document.getElementById('type-badge');
    const progress = document.getElementById('progress');
    
    notification.className = 'notification';
    
    title.textContent = data.title;
    message.textContent = data.message;
    typeBadge.textContent = data.type.toUpperCase();
    
    notification.classList.add(data.type);

    setTimeout(() => {
        notification.classList.add('show');
    }, 10);

    progress.style.animation = `progress ${data.duration}ms linear`;

    setTimeout(() => {
        notification.classList.remove('show');
        notification.classList.add('hide');
    }, data.duration - 400);
    
    setTimeout(() => {
        notification.classList.remove('hide');
        progress.style.animation = '';
    }, data.duration);
}

const style = document.createElement('style');
style.textContent = `
    @keyframes progress {
        from {
            transform: scaleX(1);
        }
        to {
            transform: scaleX(0);
        }
    }
`;
document.head.appendChild(style);