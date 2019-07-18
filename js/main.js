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

if (typeof MauticSDKLoaded == 'undefined') {
    var MauticSDKLoaded = true;
    var head            = document.getElementsByTagName('head')[0];
    var script          = document.createElement('script');
    script.type         = 'text/javascript';
    script.src          = 'https://ma.moongift.co.jp/media/js/mautic-form.js';
    script.onload       = function() {
        MauticSDK.onLoad();
    };
    head.appendChild(script);
    var MauticDomain = 'https://ma.moongift.co.jp';
    var MauticLang   = {
        'submittingMessage': "お待ちください…"
    }
}
