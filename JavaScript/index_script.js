let i=0;
const slides=document.querySelectorAll('.slide');
const dots=document.querySelectorAll('.dot');
const total=slides.length;

const update = ()=>{
    document.querySelector('.slides').style.transform=`translateX(-${i * 100}%)`;
    dots.forEach(dot => dot.classList.toggle('active', dot === dots[i]));
    dots[i].classList.add('active');
};

document.querySelector('.next').onclick = () => {
    i=(i+1)%total;
    update();
};

document.querySelector('.prev').onclick = () => {
    i=(i-1+total)%total;
    update();
};

dots.forEach((dot,index)=>dot.onclick=()=>{
    i=index;
    update();
});

//setInterval(()=>{
//    i=(i+1)%total;
//    update();
//},8000);
update();