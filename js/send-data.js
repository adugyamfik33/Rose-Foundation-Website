var cts = Number(document.getElementById('cts-code').textContent);
function sndata(){
    document.getElementById('cts-code').style.display ="block";
        // var blogdetails = document.getElementById('blog-details');
        // fetch("php/blog.php")
        // .then(result => result.json())
        // .then((data) => {
        //     if(data.code == "100"){
        //         var article = data.articles;
        //         var articleCard ="";
        //         article.forEach(element => {
        //             var id = `${element.id}`;
        //             if(id === cts){
        //                 articleCard +=`
        //                 <div class="col-md-12">
        //                 <h2 class="mb-3 mt-5">${element.title}</h2>  
        //                 <p>
        //                   <img src="images/blog/${element.file}" alt="img" style="width: 100%;">
        //                 </p>
        //                 <p> ${element.content}</p>
        //                 <p>By: ${element.author}</p>
        //                 <p>${element.date}</p>
        //                 <div class="pt-5 mt-5">
        //                 </div>
        //               </div>
        //                 `;
                        
        //             }
        //             else{
        //                 continue;
        //             }
        //       }
        //       );
        //       location.href = "blog-single.html";
        //         blogdetails.innerHTML = articleCard;
        //     }
        //     } )
         
         
        //     .catch((error)=> {
        //         console.log(error);
        //     })
       
}