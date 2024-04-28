namespace DeliverIT.Models
{
    public class Usuario
    {
        public int Id { get; set; }
        public string Nome { get; set; }
        public string Login { get; set; }
        public string Senha { get; set; }
        public bool Bloqueado { get; set; }
        public DateTime DataAcesso { get; set; }
        public Entidade Entidade { get; set; }
        public List<Perfil> Perfis { get; set; }
    }
}
