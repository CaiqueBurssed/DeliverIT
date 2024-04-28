using DeliverIT.Models;
using Microsoft.AspNetCore.Mvc;
using System.Xml.Serialization;

namespace DeliverIT.Controllers
{
    public class UsersController : Controller
    {
        private readonly ILogger<UsersController> _logger;

        public UsersController(ILogger<UsersController> logger)
        {
            _logger = logger;
        }

        public IActionResult Index()
        {
            List<Usuario> usuarios = DeserializarXML();

            return View(usuarios);
        }

        private List<Usuario> DeserializarXML()
        {
            List<Usuario> usuarios = new List<Usuario>();

            try
            {
                var xml = System.IO.File.ReadAllText(@"EstruturaXML.xml");
                var serializer = new XmlSerializer(typeof(XML));

                using (var reader = new StringReader(xml))
                {
                    XML xmlObject = (XML)serializer.Deserialize(reader);

                    foreach (var usuario in xmlObject.Usuarios)
                    {
                        usuarios.Add(usuario);
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }
            
            return usuarios;
        }
    }
}
