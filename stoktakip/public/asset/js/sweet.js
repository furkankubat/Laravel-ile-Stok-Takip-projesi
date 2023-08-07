<!-- sweet.js *******************************************-->
$(function(){
    $(document).on('click','#sil',function(e){
        e.preventDefault();
        var link = $(this).attr("href");


        Swal.fire({
            title: 'Emin misin?',
            text: "Kalıcı olarak silinecektir?",
            icon: 'warning',
            showCancelButton: true,
            cancelButtonText: 'Vazgeç',
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Evet, Sil'
        }).then((result) => {
            if (result.isConfirmed) {
                window.location.href = link
                Swal.fire(
                    'Silindi!',
                    'Kalıcı Olarak Silindi.',
                    'success'
                )
            }
        })


    });

});
<!-- sweet.js *******************************************-->
