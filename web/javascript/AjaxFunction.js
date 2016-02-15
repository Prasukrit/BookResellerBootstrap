/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function loadCategory()
{
    var xmlhttp;
    if (window.XMLHttpRequest)
      {// code for IE7+, Firefox, Chrome, Opera, Safari
      xmlhttp=new XMLHttpRequest();
      }
    else
      {// code for IE6, IE5
      xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
      }
    xmlhttp.onreadystatechange=function()
      {
      if (xmlhttp.readyState === 4 && xmlhttp.status ===200)
        {
            document.getElementById("category").innerHTML = xmlhttp.responseText;
        }
      };
    xmlhttp.open("GET","BuildCategory",true);
    xmlhttp.send();
}

function loadBook()
{
    var xmlhttp;
    if (window.XMLHttpRequest)
      {// code for IE7+, Firefox, Chrome, Opera, Safari
      xmlhttp=new XMLHttpRequest();
      }
    else
      {// code for IE6, IE5
      xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
      }
    xmlhttp.onreadystatechange=function()
      {
      if (xmlhttp.readyState === 4 && xmlhttp.status ===200)
        {
            document.getElementById("content").innerHTML = xmlhttp.responseText;
        }
      };
    xmlhttp.open("GET","LoadBook",true);
    xmlhttp.send();
}

function loadBook(category)
{
    var xmlhttp;
    if (window.XMLHttpRequest)
      {// code for IE7+, Firefox, Chrome, Opera, Safari
      xmlhttp=new XMLHttpRequest();
      }
    else
      {// code for IE6, IE5
      xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
      }
    xmlhttp.onreadystatechange=function()
      {
      if (xmlhttp.readyState === 4 && xmlhttp.status ===200)
        {
            document.getElementById("content").innerHTML = xmlhttp.responseText;
        }
      };
    if(category == undefined){
        category = "all";
    }
    xmlhttp.open("GET","LoadBook?category="+category,true);
    xmlhttp.send();
}

function loadBookDescription(ISBN){
    var xmlhttp;
    if (window.XMLHttpRequest)
      {// code for IE7+, Firefox, Chrome, Opera, Safari
      xmlhttp=new XMLHttpRequest();
      }
    else
      {// code for IE6, IE5
      xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
      }
    xmlhttp.onreadystatechange=function()
      {
      if (xmlhttp.readyState === 4 && xmlhttp.status === 200)
        {
            document.getElementById("content").innerHTML = xmlhttp.responseText;
        }
      };
    var link = "Book/"+ISBN;
    xmlhttp.open("POST",link,true);
    xmlhttp.send();
}