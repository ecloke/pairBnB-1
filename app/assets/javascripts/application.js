// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
// require jquery.turbolinks
//= require bootstrap-sprockets


//= require jquery_ujs

jQuery(function($) {
    if($(window).width()>769){
        $('.navbar .dropdown').hover(function() {
            $(this).find('.dropdown-menu').first().stop(true, true).delay(10).slideDown();

        }, function() {
            $(this).find('.dropdown-menu').first().stop(true, true).delay(200).slideUp();

        });

        $('.navbar .dropdown > a').click(function(){
            location.href = this.href;
        });

    }
});
$(document).ready(function(){
        $('#new-listing').click(function(){             
            $('.listing-hidden').slideDown('slow');
            $(this).fadeOut('slow');
        }) ;
        $('.click-click').click(function(){             
            $('.listing-hidden').slideUp('slow');
            $('#new-listing').fadeIn('slow');
        }) ;
       
        $('.img-rounded').hover(function(){             
            $('.box-listing').fadeIn('slow');
        }) ;
        $('body').hover(function(){             
            $('.box-listing').fadeOut('slow');
        }) ;
   });





// require turbolinks

//= require_tree .


