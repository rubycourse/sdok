/* Simple logging */
$.ajax('/doctors/show/3')
.then(function(data) {
  console.log(data);
});

/* DOM manipulation */
$.ajax('/doctors/show/3')
.then(function(data) {
  var i,
    len = data.length;

  for (i = 0; i < len; i++ ) {
    $("#patients").append(
      "<li>" + data[i].name + "</li>"
    );
  }
});

/* DOM manipulation; use modern forEach */

//    $.ajax('/doctors/show/3')
//    .then(function(data) {
//      var i,
//        len = data.length;
//
//      data.forEach(function(patient) {
//        $("#patients").append(
//          "<li>" + patient.name + "</li>"
//        );
//      });
//    });
//
