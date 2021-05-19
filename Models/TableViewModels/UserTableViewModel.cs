using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TursArg.Models.TableViewModels
{
    public class UserTableViewModel
    {
        public int Id { get; set; }
        public string Email { get; set; }
        public string Nombres { get; set; }
        public string Apellidos { get; set; }
        public int Perfil { get; set; }
        public string Contraseña { get; set; }
        public DateTime Fecha_Alta { get; set; }
        public DateTime Fecha_Baja { get; set; }
    }
}