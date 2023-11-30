$(document).ready(function(){

var latestNews = document.getElementById('latest-news');
fetch("php/index.php")
.then(result => result.json())
.then((data) => {
    if(data.code == "100"){
        var article = data.articles;
        var articleCard="";
        article.forEach(element => {
            articleCard +=`
                <div class="col-12 col-sm-6 col-md-6 col-lg-4 mb-4 mb-lg-0">
                    <div class="post-entry">
                    <a href="#" class="mb-3 img-wrap">
                        <img src="images/blog/${element.file}" alt="Image placeholder" class="img-latest-news">
                    </a>
                    <h3><a href="#">${element.title}</a></h3>
                    <span class="date mb-4 d-block text-muted">By: ${element.author}</span><span id="date-published">${element.date}</span>
                    <p>${element.content.substr(0,150)}...</p>
                    <a class="link-underline" href="blog-single.html?id=${element.id}">Read More</a>
                    <h5 id="cts-code" style="display:none;">${element.id}</h5>
                    </div>
                </div> 
                `;
        }
        );
        latestNews.innerHTML = articleCard;

    }
    } )
 
 
    .catch((error)=> {
        console.log(error);
    })
});
 