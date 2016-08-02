console.log('hi')

$(document).ready(function(){

  function createStudent(e){

    e.preventDefault();
    let $children = $(e.target).children();
    let data = {
      f_name: $children.eq(0).val(),
      l_name: $children.eq(1).val(),
      age: $children.eq(2).val(),
      email: $children.eq(3).val(),
      slack: $children.eq(4).val()
    }

    $.post('/students',data).done( (response) => {
      console.log(response);
    })


  }

  $('form').submit(createStudent);









  
})