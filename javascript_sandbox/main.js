function run() {
  document.write("JS loaded.\n");
  var stroong = "Iterate String!";
  counter = 0;
  StringLength = stroong.length;
  document.write("<br>");
  document.write("String length is: " + StringLength);
  document.write("<br>");
  for (counter; counter < stroong.length; counter++) {
    document.write(stroong[counter]);
  }
  document.write("<br>");
  document.write("<br>");
}

function show_image(src, width, height, alt) {
  var img = document.createElement("img");
  img.src = src;
  img.width = width;
  img.height = height;
  img.alt = alt;

  // This next line will just add it to the <body> tag
  document.body.appendChild(img);
}
