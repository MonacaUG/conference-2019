$(function(){

    //スマホナビ　サブメニューの挙動
    var spSubNav = function(){
        $('.header__spnav').on({
            'click': function(){
                $('.gnavi').fadeToggle();
                $(this).find('i').toggleClass('fa-bars fa-times');
                return false;
            }
        });
    };
    spSubNav();
    
});//end jquery