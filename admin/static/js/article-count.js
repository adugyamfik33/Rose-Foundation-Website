$(document).ready(function(){
    var numArticles = document.getElementById('num-articles');
    var counter = 0;
    fetch("./article-counter.php")
    .then(result => result.json())
    .then((data) => {
        if(data.code == "100"){
            var article = data.count_articles;
            article.forEach(element => {
                counter++;
            }
            );
           console.log(counter);
        }
        } )
     
     
        .catch((error)=> {
            console.log(error);
        })
    });
     