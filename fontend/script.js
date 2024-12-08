let searchBtn = document.querySelector('#search-btn');
let searchBar = document.querySelector('.search-bar-container');
let formBtn = document.querySelector('#login-btn');
let loginForm = document.querySelector('.login-form-container');
let formClose = document.querySelector('#form-close');
let menu = document.querySelector('#menu-bar');
let navbar = document.querySelector('.navbar');
let videoBtn = document.querySelectorAll('.vid-btn');

window.onscroll = () => {
 searchBtn.classList.remove('fa-times');
 searchBar.classList.remove('active');
 menu.classList.remove('fa-times');
 navbar.classList.remove('active');
 loginForm.classList.remove('active');
}


menu.addEventListener('click', () => {
 menu.classList.toggle('fa-times');
 navbar.classList.toggle('active');
 });


searchBtn.addEventListener('click', () => {
 searchBtn.classList.toggle('fa-times');
 searchBar.classList.toggle('active');
 });

 formBtn.addEventListener('click', () => {
 loginForm.classList.add('active');
 });

 formClose.addEventListener('click', () => {
 loginForm.classList.remove('active');
 });

videoBtn.forEach(btn =>{
 btn.addEventListener('click', ()=>{
  document.querySelector('.controls .active').classList.remove('active');
  btn.classList.add('active'); 
  let src = btn.getAttribute('data-src');
  document.querySelector('#video-slider').src= src;
 });
});

var swiper = new Swiper(".review-slider", {
 spaceBetween: 20,
 loop:true,
 autoplay: {
  delay: 2500,
  disableOnInteraction: false,
 },
 breakpoints: {
  640: {
   slidesPerView: 1,
  },
  768: {
   slidesPerView: 2,
  },
  1024: {
   slidesPerView: 3,
  },
 },
});



var swiper = new Swiper(".brand-slider", {
 spaceBetween: 20,
 loop:true,
 autoplay: {
  delay: 2500,
  disableOnInteraction: false,
 },
 breakpoints: {
  450: {
   slidesPerView: 2,
  },
  768: {
   slidesPerView: 3,
  },
  991: {
   slidesPerView: 4,
  },
  1200: {
   slidesPerView: 5,
  },
 },
});


// Confirming Order 
/*
document.getElementById('bookingForm').addEventListener('submit', function(event) {
    event.preventDefault(); // Prevent the default form submission
  
    const formData = new FormData(event.target);
    const data = Object.fromEntries(formData.entries());
  
    fetch('http://localhost:3000/api/orders', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json'
      },
      body: JSON.stringify(data)
    })
    .then(response => {
      if (!response.ok) {
        return response.text().then(text => { throw new Error(text) });
      }
      return response.json();
    })
    .then(data => {
      console.log('Success:', data);
      alert('Booking successful!');
    })
    .catch((error) => {
      console.error('Error:', error);
      alert('Booking failed!');
    });
  });

*/








