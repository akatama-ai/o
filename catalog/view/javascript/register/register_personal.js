$( document ).ready(function() {

    $('#username').keyup(function() {
        var name = $(this).val().replace(/[^A-Z0-9]/gi, '');
         $('#username').val(name)
      });
    $('#register-account').on('submit', function(event) {
        $('#register-account button').attr('disabled', true);
        $.fn.existsWithValue = function() {
            return this.length && this.val().length;
        };
        var self = $(this);
        var isValidEmailAddress = function(email, callback) {
            var pattern = new RegExp(/^(("[\w-+\s]+")|([\w-+]+(?:\.[\w-+]+)*)|("[\w-+\s]+")([\w-+]+(?:\.[\w-+]+)*))(@((?:[\w-+]+\.)*\w[\w-+]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$)|(@\[?((25[0-5]\.|2[0-4][\d]\.|1[\d]{2}\.|[\d]{1,2}\.))((25[0-5]|2[0-4][\d]|1[\d]{2}|[\d]{1,2})\.){2}(25[0-5]|2[0-4][\d]|1[\d]{2}|[\d]{1,2})\]?$)/i);
            callback(pattern.test(email));
        };
        var validate = {
            init: function(self) {
                self.find('#username').parent().removeClass('has-error');
                self.find('#user-error').hide();
                self.find('#BitcoinWalletAddress').parent().removeClass('has-error');
                self.find('#BitcoinWalletAddress-error').hide();
                self.find('#email').parent().removeClass('has-error');
                self.find('#email-error').hide();               

                self.find('#password').parent().removeClass('has-error');
                self.find('#password-error').hide();
                self.find('#password2').parent().removeClass('has-error');
                self.find('#password2-error').hide();
                $('#agreeTerm').is(":checked") && $('#agreeTerm').removeClass('validation-error');
            },

            userName: function(self) {
                if (self.find('#username').existsWithValue() === 0) {
                    $('#register-account button').attr('disabled', false);
                    self.find('#username').parent().addClass('has-error');
                    self.find('#user-error').show();
                    self.find('#user-error span').html('Please enter user name');
                    return false;
                }
                return true;
            },
            BitcoinWalletAddress: function(self) {

                if (self.find('#BitcoinWalletAddress').existsWithValue() === 0) {
                     $('#register-account button').attr('disabled', false);
                    self.find('#BitcoinWalletAddress').parent().addClass('has-error');
                   self.find('#BitcoinWalletAddress-error span').show();
                    self.find('#BitcoinWalletAddress-error span').html('Please enter your bitcoin wallet!');
                    return false;
                }
                return true;
            },
            email: function(self) {
                if (self.find('#email').existsWithValue() === 0) {
                     $('#register-account button').attr('disabled', false);
                    self.find('#email').parent().addClass('has-error');
                    self.find('#email-error').show();
                    self.find('#email-error span').html('Please enter email address');
                    return false;
                }
                return true;
            },

          
            password: function(self) {
                if (self.find('#password').existsWithValue() === 0) {
                     $('#register-account button').attr('disabled', false);
                    self.find('#password').parent().addClass('has-error');
                    self.find('#password-error').show();
                    self.find('#password-error span').html('Please enter password for login');
                    return false;
                }
                return true;
            },
            password_tran: function(self) {
                if (self.find('#password2').existsWithValue() === 0) {
                     $('#register-account button').attr('disabled', false);
                    self.find('#password2').parent().addClass('has-error');
                    self.find('#password2-error').show();
                    self.find('#password2-error span').html('Please enter transaction password');
                    return false;
                }
                return true;
            },

            checkUserExit: function(self, callback) {
                if (self.find('#username').existsWithValue() !== 0) {
                    $.ajax({
                        url: self.find('#username').data('link'),
                        type: 'GET',
                        data: {
                            'username': self.find('#username').val()
                        },
                        async: false,
                        success: function(result) {
                            result = $.parseJSON(result);
                            callback(result.success === 0);
                        }
                    });
                }
            },

            checkEmailExit: function(self, callback) {
                if (self.find('#email').existsWithValue() !== 0) {
                    $.ajax({
                        url: self.find('#email').data('link'),
                        type: 'GET',
                        data: {
                            'email': self.find('#email').val()
                        },
                        async: false,
                        success: function(result) {

                            result = $.parseJSON(result);
            
                            callback(result.success === 0);
                        }
                    });
                }
            },
            check_BitcoinWalletAddress: function(self, callback) {
                if (self.find('#BitcoinWalletAddress').existsWithValue() !== 0) {
                    $.ajax({
                        url: self.find('#BitcoinWalletAddress').data('link'),
                        type: 'GET',
                        data: {
                            'wallet': self.find('#BitcoinWalletAddress').val()
                        },
                        async: false,
                        success: function(result) {
                            result = $.parseJSON(result);
                            callback(result.wallet === 0);
                        }
                    });
                }
            },
        };

        validate.init($(this));
        if (validate.userName($(this)) === false) {
            return false;
        } else {
            validate.init($(this));
            self.find('#username').parent().addClass('has-success');
        }

        if (validate.email($(this)) === false) {
            return false;
        } else {
            var checkEmail = null;
            isValidEmailAddress(self.find('#email').val(), function(callback) {
                checkEmail = !callback ? true : false;
            });
            if (checkEmail) {
                 $('#register-account button').attr('disabled', false);
                self.find('#email').parent().addClass('has-error');
                self.find('#email-error').show();
                self.find('#email-error span').html('Please enter email address');
                return false;
            } else {
                validate.init($(this));
                self.find('#email').parent().addClass('has-success');
            }
        }
      
      
        if (validate.password($(this)) === false) {
             $('#register-account button').attr('disabled', false);
            return false;
        } else {
            validate.init($(this));
            self.find('#password').parent().addClass('has-success');
        }
        
        if (validate.password_tran($(this)) === false) {
             $('#register-account button').attr('disabled', false);
            return false;
        } else {
            validate.init($(this));
            self.find('#password2').parent().addClass('has-success');
        }
        
        if (validate.BitcoinWalletAddress($(this)) === false) {
             $('#register-account button').attr('disabled', false);
            return false;
        } else {
            validate.init($(this));
            self.find('#BitcoinWalletAddress').parent().addClass('has-success');
        }
        var checkUser = null;
        var checkEmail = null;
        var check_BitcoinWalletAddress =null;
        validate.checkUserExit($(this), function(callback) {
            validate.init($(this));
            if (!callback) {
                 $('#register-account button').attr('disabled', false);
                self.find('#username').parent().addClass('has-error');
                self.find('#user-error').show();
                self.find('#user-error span').html('This user name is already exists');
                self.find('#password').val('');
                self.find('#password').parent().removeClass('has-success');

                self.find('#password2').val('');
                self.find('#password2').parent().removeClass('has-success');

                return false;
            } else {
                self.find('#username').parent().removeClass('has-error');
                self.find('#user-error').hide();
                self.find('#email').parent().removeClass('has-error');
                self.find('#email-error').hide();
               
                self.find('#BitcoinWalletAddress').parent().removeClass('has-error');
                self.find('#BitcoinWalletAddress-error').hide();
               
                self.find('#password').parent().removeClass('has-error');
                self.find('#password-error').hide();
                self.find('#password2').parent().removeClass('has-error');
                self.find('#password2-error').hide();
    
                $('#agreeTerm').is(":checked") && $('#agreeTerm').removeClass('validation-error');
                self.find('#username').parent().addClass('has-success');
                checkUser = true;
            }
        });

        if (checkUser) {
            validate.checkEmailExit($(this), function(callback) {
                if (!callback) {
                     $('#register-account button').attr('disabled', false);
                    self.find('#email').parent().addClass('has-error');
                    self.find('#email-error').show();
                    self.find('#email-error span').html('This email is already exists');
                    self.find('#password').val('');
                    self.find('#password').parent().removeClass('has-success');
                 
                    self.find('#password2').val('');
                    self.find('#password2').parent().removeClass('has-success');
                  
                    return false;
                } else {
                    self.find('#username').parent().removeClass('has-error');
                    self.find('#user-error').hide();
                    self.find('#email').parent().removeClass('has-error');
                    self.find('#email-error').hide();
                  
                    self.find('#BitcoinWalletAddress').parent().removeClass('has-error');
                    self.find('#BitcoinWalletAddress-error').hide();
                  
                    self.find('#password').parent().removeClass('has-error');
                    self.find('#password-error').hide();
                    self.find('#password2').parent().removeClass('has-error');
                    self.find('#password2-error').hide();
                   
                    $('#agreeTerm').is(":checked") && $('#agreeTerm').removeClass('validation-error');
                    self.find('#email').parent().addClass('has-success');
                    checkEmail = true;
                }
            });
        };

        if (checkUser && checkEmail) {
            validate.check_BitcoinWalletAddress($(this), function(callback) {
                if (!callback) {
                     $('#register-account button').attr('disabled', false);
                    self.find('#BitcoinWalletAddress').parent().addClass('has-error');
                    self.find('#BitcoinWalletAddress-error').show();
                    self.find('#BitcoinWalletAddress-error span').html('Wrong bitcoin wallet address!!');
                    self.find('#password').val('');
                    self.find('#password').parent().removeClass('has-success');
                  
                    self.find('#password2').val('');
                    self.find('#password2').parent().removeClass('has-success');
                   
                    return false;
                } else {
                    self.find('#username').parent().removeClass('has-error');
                    self.find('#user-error').hide();
                    self.find('#email').parent().removeClass('has-error');
                    self.find('#email-error').hide();
                  
                    self.find('#BitcoinWalletAddress').parent().removeClass('has-error');
                    self.find('#BitcoinWalletAddress-error').hide();
                  
                    self.find('#password').parent().removeClass('has-error');
                    self.find('#password-error').hide();
                    self.find('#password2').parent().removeClass('has-error');
                    self.find('#password2-error').hide();
                   
                    $('#agreeTerm').is(":checked") && $('#agreeTerm').removeClass('validation-error');
                    self.find('#BitcoinWalletAddress').parent().addClass('has-success');
                    check_BitcoinWalletAddress = true;
                }
            });
        }
        if (!self.find('#agreeTerm').is(":checked")) {
             $('#register-account button').attr('disabled', false);
            self.find('#agreeTerm').addClass('validation-error');
            return false;
        } else {
            $('#agreeTerm').is(":checked") && $('#agreeTerm').removeClass('validation-error');
        }
        if(checkUser && checkEmail && check_BitcoinWalletAddress && self.find('#agreeTerm').is(":checked")){

            window.funLazyLoad.start();
            $('.btn-register').hide();
            return true;
        }

        return false;

    });
});