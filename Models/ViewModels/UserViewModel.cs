using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace TursArg.Models.ViewModels
{
    public class UserViewModel
    {
        [Required]
        [EmailAddress]
        [StringLength(100, ErrorMessage = "El {0} debe tener al menos {1} caracteres", MinimumLength = 1)]
        [Display(Name = "Correo Electrónico")]
        public string Email { get; set; }

        [Required]
        [DataType(DataType.Password)]
        [Display(Name = "Contraseña")]
        
        [StringLength(50, ErrorMessage = "El {0} debe tener al menos {1} caracteres", MinimumLength = 1)]
        public string Password { get; set; }

        [Display(Name = "Confirmar contraseña")]
        [DataType(DataType.Password)]
        [Compare("Password", ErrorMessage = "Las contraseñas no son iguales")]
        [StringLength(50, ErrorMessage = "El {0} debe tener al menos {1} caracteres", MinimumLength = 1)]
        public string ConfirmPassword { get; set; }

        [Required]
        [DataType(DataType.Date)]
        [Display(Name = "Fecha Alta Usuario")]
        public int Fecha_Alta { get; set; }
        [Display(Name = "Nombres Usuario")]
        [StringLength(50, ErrorMessage = "El {0} debe tener al menos {1} caracteres", MinimumLength = 1)]
        public string Nombres { get; internal set; }
        [Display(Name = "Apellidos Usuario")]
        [StringLength(50, ErrorMessage = "El {0} debe tener al menos {1} caracteres", MinimumLength = 1)]
        public string Apellidos { get; internal set; }
    }

    public class EditUserViewModel
    {
        public int Id { get; set; }

        [Required]
        [EmailAddress]
        [StringLength(100, ErrorMessage = "El {0} debe tener al menos {1} caracteres", MinimumLength = 1)]
        [Display(Name = "Correo Electrónico")]
        public string Email { get; set; }

        [DataType(DataType.Password)]
        [Display(Name = "Contraseña")]
        public string Password { get; set; }

        [Display(Name = "Confirmar contraseña")]
        [DataType(DataType.Password)]
        [Compare("Password", ErrorMessage = "Las contraseñas no son iguales")]
        public string ConfirmPassword { get; set; }

        [Required]
        [DataType(DataType.Date)]
        [Display(Name = "Fecha Alta Usuario")]
        public int Fecha_Alta { get; set; }
        [Display(Name = "Nombres Usuario")]
        [StringLength(50, ErrorMessage = "El {0} debe tener al menos {1} caracteres", MinimumLength = 1)]
        public string Nombres { get; internal set; }
        [Display(Name = "Apellidos Usuario")]
        [StringLength(50, ErrorMessage = "El {0} debe tener al menos {1} caracteres", MinimumLength = 1)]
        public string Apellidos { get; internal set; }
    }

    public class LoginViewModel
    {
        [Required]
        [Display(Name = "Correo electrónico")]
        [EmailAddress]
        public string Email { get; set; }

        [Required]
        [DataType(DataType.Password)]
        [Display(Name = "Contraseña")]
        public string Password { get; set; }

       
    }
}