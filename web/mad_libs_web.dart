import 'dart:html';

void main() {
  querySelector("#button") // the # means "ID", so we're looking for something in the html page
  ..onClick.listen(generateMadlib);// with the ID of "button".
 
  querySelector("#form").onSubmit.listen((Event event) => event.preventDefault());
  
}

void generateMadlib(MouseEvent event)
{
  // If you're ever gonna use a querySelector more than use, just do this!
  InputElement nameInput = querySelector("#name-box");
  InputElement nounInput = querySelector("#noun-box");
  InputElement verbInput = querySelector("#verb-box");
  InputElement adverbInput = querySelector("#adv-box");
  InputElement adjInput = querySelector("#adj-box");
  
  querySelector("#name").innerHtml = "<u>${nameInput.value}</u>";   
  querySelector("#noun").innerHtml = "<u>${nounInput.value}</u>";  
  querySelector("#verb").innerHtml = "<u>${verbInput.value}</u>"; 
  querySelector("#adv").innerHtml = "<u>${adverbInput.value}</u>";  
  querySelector("#adj").innerHtml = "<u>${adjInput.value}</u>";
  
  nameInput.value = "";
  nounInput.value = "";
  verbInput.value = "";
  adverbInput.value = "";
  adjInput.value = "";  
  
  querySelector("#madlib").classes.remove("hide");
}