$(function() {
 
  // button要素をクリックしたら発動
  $('button').click(function() {
    var options = {
        valueNames: ['id', 'name']
    };
    var userList = new List('users', options);

  });
});