using System;
using System.Collections.Generic;

namespace FlyBugClub_WebApp.Models;

public partial class User
{
    public string StudentId { get; set; } = null!;

    public string Name { get; set; } = null!;

    public string? Gender { get; set; }

    public string Phone { get; set; } = null!;

    public string? Address { get; set; }

    public string Email { get; set; } = null!;

    public string Major { get; set; } = null!;

    public string Faculty { get; set; } = null!;

    public string PositionId { get; set; } = null!;

    public virtual ICollection<BillBorrow> BillBorrows { get; set; } = new List<BillBorrow>();

    public virtual Position Position { get; set; } = null!;
}
