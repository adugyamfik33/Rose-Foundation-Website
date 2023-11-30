
$(document).ready(function(){
    import "owl.carousel.min.js";
    let slide = document.getElementById('slide-here')
    //document.getElementsByClassName("owl-stage")[0];
    fetch("php/slider.php")
    .then(result => result.json())
    .then((data) => {
        if(data.code == "100"){
            let sliderImage = data.sliderImages;
            let sliderCard=``;
            sliderImage.forEach(element => {
               // let owlItemDiv = document.createElement('div');
               // owlItemDiv.classList.add("owl-item");
               // owlItemDiv.setAttribute("width", "820px");
              //  let imageDiv = document.createElement("div");
             //   let imageUrl = `background-image: url('images/slider/${element.file}');`;
              //  imageDiv.classList.add("block-30", "no-overlay", "item");
             //   imageDiv.setAttribute("style", imageUrl);
            //    owlItemDiv.appendChild(imageDiv);
               // slide.appendChild(owlItemDiv);
                 sliderCard +=`
                 <div class="block-30 no-overlay item" style="background-image: url('images/slider/${element.file}');"></div>
                    `;
            }
            );
             slide.innerHTML = sliderCard;
        }
    } )
    .catch((error)=> {
        console.log(error);
    })
});