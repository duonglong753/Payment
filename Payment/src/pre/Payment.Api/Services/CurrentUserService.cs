using Payment.Application.Interface;
using System.Security.Claims;

namespace Payment.Api.Services
{
    public class CurrentUserService : ICurrentUserService
    {
        private readonly IHttpContextAccessor _contextAccessor;
        public CurrentUserService(IHttpContextAccessor httpContextAccessor)
        {
            this._contextAccessor = httpContextAccessor;
        }
        string? ICurrentUserService.UserId => _contextAccessor?.HttpContext.User.FindFirstValue(ClaimTypes.NameIdentifier);
    }
}
