$(document).ready(function(){
    var blogdetails = document.getElementById('blog-details');
    var queryString = window.location.search;
    var urlParams = new URLSearchParams(queryString);
    var id = urlParams.get("id");
    var formData = new FormData();
    formData.append('id',id);
    fetch("php/blog-details.php",
    {
      method:'POST',
      body: formData
    })
    .then(result => result.json())
    .then((data) => {
        if(data.code == "100"){
            var article = data.articles;
            var articleDetails =`
            <div class="col-md-12">
            <h2 class="mb-3 mt-5">${article.title}</h2>  
            <p><img src="images/blog/${article.file}" alt="img" style="width: 100%;"></p>
            <p>${article.content}</p>  
            <p>By: ${article.author}</p>
            <p>${article.date}</p>
            <div class="pt-5 mt-5">
            </div>
          </div>
            `
            blogdetails.innerHTML = articleDetails;
        }
        } )
     
     
        .catch((error)=> {
            console.log(error);
        })
    });