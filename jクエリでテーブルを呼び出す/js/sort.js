$(function() {
 
  // button�v�f���N���b�N�����甭��
  $('button').click(function() {
    var options = {
        valueNames: ['id', 'name']
    };
    var userList = new List('users', options);

  });
});