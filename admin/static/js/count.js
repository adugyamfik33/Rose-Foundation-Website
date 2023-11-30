const counters = document.querySelectorAll('.counter');
const speed = 300;

counters.forEach(counter=>{
const updateCount = () =>{
    const target = +counter.getAttribute('data-target');
    const count = +counter.innerText;
    const inc = target/speed;

    if(count < target){
        const temp =Math.ceil(count + inc);
        if(temp > target){
            counter.innerText = target;
        }
        else{
            counter.innerText = temp;
        }
        
        setTimeout(updateCount,1);
    }
    else{
        count.innerText =target;
    }
}
updateCount();
});