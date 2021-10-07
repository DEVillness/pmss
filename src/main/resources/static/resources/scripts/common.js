const darkModeButton = document.getElementById('isDark');
const darkModeLabel = document.querySelector('header > nav > div.links > span > label > nobr');

const prefersColorScheme = window.matchMedia("(prefers-color-scheme: dark)");
darkModeButton.checked = prefersColorScheme.matches;

if (darkModeButton.checked) {
    darkModeLabel.innerText = '라이트 모드';
} else {
    darkModeLabel.innerText = '다크 모드';
}

darkModeButton.addEventListener('change', () => {
    if (darkModeButton.checked) {
        document.documentElement.style.setProperty('--color-dark-level-0', '#ffffff');
        document.documentElement.style.setProperty('--color-dark-level-1', '#dfdfdf');
        document.documentElement.style.setProperty('--color-dark-level-2', '#bfbfbf');
        document.documentElement.style.setProperty('--color-dark-level-3', '#7f7f7f');
        document.documentElement.style.setProperty('--color-dark-level-4', '#3f3f3f');
        document.documentElement.style.setProperty('--color-dark-level-5', '#1f1f1f');
        document.documentElement.style.setProperty('--color-dark-level-6', '#000000');
        darkModeLabel.innerText = '라이트 모드';
    } else {
        document.documentElement.style.setProperty('--color-dark-level-0', '#000000');
        document.documentElement.style.setProperty('--color-dark-level-1', '#1f1f1f');
        document.documentElement.style.setProperty('--color-dark-level-2', '#3f3f3f');
        document.documentElement.style.setProperty('--color-dark-level-3', '#7f7f7f');
        document.documentElement.style.setProperty('--color-dark-level-4', '#bfbfbf');
        document.documentElement.style.setProperty('--color-dark-level-5', '#dfdfdf');
        document.documentElement.style.setProperty('--color-dark-level-6', '#ffffff');
        darkModeLabel.innerText = '다크 모드';
    }
});