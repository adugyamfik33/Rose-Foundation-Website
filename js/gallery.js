(document).ready(function(){
    var gallery = document.getElementById('images');
    fetch("php/gallery.php")
    .then(result => result.json())
    .then((data) => {
        if(data.code == "100"){
            var image = data.images;
            var imageCard="";
            image.forEach(element => {
                imageCard +=`
                <div class="col-md-4 col-sm-12">
                    <a href="images/gallery/${element.file}" class="img-hover" data-fancybox="gallery">
                        <span class="icon icon-search"></span>
                        <img src="images/gallery/${element.file}" alt="Image placeholder" class="img-gallery">
                    </a>
                </div>
                    `;
            }
            );
            gallery.innerHTML = imageCard;
        }
    } )
    .catch((error)=> {
        console.log(error);
    })
});