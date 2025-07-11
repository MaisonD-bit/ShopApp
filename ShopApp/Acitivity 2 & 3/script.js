const wrapper = document.querySelector('.wrapper');
const registerLink = document.querySelector('.register-link'); 
const loginLink = document.querySelector('.login-link'); 
const btnPopup = document.querySelector('.btnLoginPopup');
const btnRegisterPopup = document.querySelector('.btnRegisterPopup'); 
const iconClose = document.querySelector('.icon-close');
const aboutUsBtn = document.getElementById('aboutUsBtn');
const aboutUsSection = document.getElementById('about-us');
const iconCloseAbout = document.querySelector('.icon-close-about'); 

aboutUsBtn.addEventListener('click', function() {
    aboutUsSection.classList.toggle('active');
});

iconCloseAbout.onclick = () => {
    aboutUsSection.classList.remove('active');
};

btnPopup.onclick = () => {
    wrapper.classList.add('active-popup'); 
    wrapper.classList.remove('active');
};

btnRegisterPopup.onclick = () => {
    wrapper.classList.add('active-popup'); 
    wrapper.classList.add('active');
};

registerLink.onclick = () => {
    wrapper.classList.add('active'); 
};

loginLink.onclick = () => {
    wrapper.classList.remove('active'); 
};

iconClose.onclick = () => {
    wrapper.classList.remove('active-popup');
    wrapper.classList.remove('active'); 
};
