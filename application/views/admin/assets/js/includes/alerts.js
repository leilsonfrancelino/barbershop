(function($) {
    "use strict";
        
    $('.delete_post').on('click', function(){
        var id= this.value;
    
        swal({
        title: 'Tem certeza?',
        text: "You won't be able to revert this!",
        type: 'warning',
        buttons:{
            confirm: {
            text : 'Sim, excluir!',
            className : 'btn btn-success'
            },
            cancel: {
            visible: true,
            className: 'btn btn-danger'
            }
        }
        }).then((Delete) => {
        if (Delete) {
            $(location).attr('href', base + adminblog + '/delete_post/' + id + '/true');
        } else {
            swal.close();
        }
        });
    });
    $('.deleteBookings').on('click', function(){
        var id= this.value;
    
        swal({
        title: 'Tem certeza?',
        text: "Você não será capaz de reverter isso!",
        type: 'warning',
        buttons:{
            confirm: {
            text : 'Sim, excluir!',
            className : 'btn btn-success'
            },
            cancel: {
            visible: true,
            className: 'btn btn-danger'
            }
        }
        }).then((Delete) => {
        if (Delete) {
            $(location).attr('href', base + bookings + '/deleteBookings/' + id + '/true');
        } else {
            swal.close();
        }
        });
    });
    $('.deleteService').on('click', function(){
        var id= this.value;
    
        swal({
        title: 'Tem certeza?',
        text: "Você não será capaz de reverter isso!",
        type: 'warning',
        buttons:{
            confirm: {
            text : 'Sim, excluir!',
            className : 'btn btn-success'
            },
            cancel: {
            visible: true,
            className: 'btn btn-danger'
            }
        }
        }).then((Delete) => {
        if (Delete) {
            $(location).attr('href', base + services + '/deleteService/' + id + '/true');
        } else {
            swal.close();
        }
        });
    });
    $('.catDelete').on('click', function(){
        var id= this.value;
    
        swal({
        title: 'Tem certeza?',
        text: "Você não será capaz de reverter isso!",
        type: 'warning',
        buttons:{
            confirm: {
            text : 'Sim, excluir!',
            className : 'btn btn-success'
            },
            cancel: {
            visible: true,
            className: 'btn btn-danger'
            }
        }
        }).then((Delete) => {
        if (Delete) {
            $(location).attr('href', base + gallery + '/catDelete/' + id + '/true');
        } else {
            swal.close();
        }
        });
    });
    $('.deleteImg').on('click', function(){
        var id= this.value;
    
        swal({
        title: 'Tem certeza?',
        text: "Você não será capaz de reverter isso!",
        type: 'warning',
        buttons:{
            confirm: {
            text : 'Sim, excluir!',
            className : 'btn btn-success'
            },
            cancel: {
            visible: true,
            className: 'btn btn-danger'
            }
        }
        }).then((Delete) => {
        if (Delete) {
            $(location).attr('href', base + gallery + '/deleteImg/' + id + '/true');
        } else {
            swal.close();
        }
        });
    });
    $('.deleteclient').on('click', function(){
        var id= this.value;
    
        swal({
        title: 'Tem certeza?',
        text: "Você não será capaz de reverter isso!",
        type: 'warning',
        buttons:{
            confirm: {
            text : 'Sim, excluir!',
            className : 'btn btn-success'
            },
            cancel: {
            visible: true,
            className: 'btn btn-danger'
            }
        }
        }).then((Delete) => {
        if (Delete) {
            $(location).attr('href', base + clients + '/deleteclient/' + id + '/true');
        } else {
            swal.close();
        }
        });
    });

    $('.deleteAgent').on('click', function(){
        var id= this.value;
    
        swal({
        title: 'Tem certeza?',
        text: "Você não será capaz de reverter isso!",
        type: 'warning',
        buttons:{
            confirm: {
            text : 'Sim, excluir!',
            className : 'btn btn-success'
            },
            cancel: {
            visible: true,
            className: 'btn btn-danger'
            }
        }
        }).then((Delete) => {
        if (Delete) {
            $(location).attr('href', base + agents + '/deleteAgent/' + id + '/true');
        } else {
            swal.close();
        }
        });
    });

    
})(jQuery);