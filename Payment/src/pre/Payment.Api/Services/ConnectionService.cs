using Payment.Application.Interface;

namespace Payment.Api.Services
{
    public class ConnectionService : IConnectionService
    {
        private readonly IConfiguration _configuration;
        public ConnectionService(IConfiguration configuration)
        {
            this._configuration = configuration;
        }
        public string? Database => _configuration.GetConnectionString("Database");
    }
}
