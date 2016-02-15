function loadCity()
{
    var citySelector = document.getElementById("city");
    var option;
    var city = ["กรุงเทพมหานคร"];
    var i=0;
    for(;i < city.length ; i++){
        option = document.createElement("option");
        option.text = city[i];
        citySelector.add(option);
    }
}

