const darkModeButton = document.getElementById('isDark');
const darkModeLabel = document.querySelector('header > nav > div.links > span > label > nobr');

let userTheme = window.localStorage.getItem('theme');
const themeDark = userTheme != null ? userTheme : window.matchMedia("(prefers-color-scheme: dark)").matches ? 'dark' : 'light';
darkModeButton.checked = themeDark === 'dark';
darkMode();

darkModeButton.addEventListener('change', () => {
    darkMode();
});

function darkMode() {
    if (darkModeButton.checked) {
        document.documentElement.style.setProperty('--color-dark-level-0', '#ffffff');
        document.documentElement.style.setProperty('--color-dark-level-1', '#dfdfdf');
        document.documentElement.style.setProperty('--color-dark-level-2', '#bfbfbf');
        document.documentElement.style.setProperty('--color-dark-level-3', '#7f7f7f');
        document.documentElement.style.setProperty('--color-dark-level-4', '#3f3f3f');
        document.documentElement.style.setProperty('--color-dark-level-5', '#1f1f1f');
        document.documentElement.style.setProperty('--color-dark-level-6', '#000000');
        window.localStorage.setItem('theme', 'dark');
        darkModeLabel.innerText = '라이트 모드';
    } else {
        document.documentElement.style.setProperty('--color-dark-level-0', '#000000');
        document.documentElement.style.setProperty('--color-dark-level-1', '#1f1f1f');
        document.documentElement.style.setProperty('--color-dark-level-2', '#3f3f3f');
        document.documentElement.style.setProperty('--color-dark-level-3', '#7f7f7f');
        document.documentElement.style.setProperty('--color-dark-level-4', '#bfbfbf');
        document.documentElement.style.setProperty('--color-dark-level-5', '#dfdfdf');
        document.documentElement.style.setProperty('--color-dark-level-6', '#ffffff');
        window.localStorage.setItem('theme', 'light');
        darkModeLabel.innerText = '다크 모드';
    }
}