var images=["s1.jpg","s2.jpg","s3.jpg","s4.jpg","s5.jpg"];
var i=0;
function moveSlider()
{
    if(i==images.length)
    {
        i=0;
    }
    document.getElementById("slide").src="images/"+images[i];
    
    i++;
    window.setTimeout("moveSlider()",2000);
}