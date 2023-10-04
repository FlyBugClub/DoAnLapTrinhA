using System;
using System.Collections.Generic;

namespace FlyBugClub_WebApp.Models;

public partial class BorrowDetail
{
    public int BorrowDetailId { get; set; }

    public string DeviceId { get; set; } = null!;

    public decimal SubTotal { get; set; }

    public string Bid { get; set; } = null!;

    public int Quantity { get; set; }

    public int? ReturnQuantity { get; set; }

    public bool Status { get; set; }

    public decimal? Price { get; set; }

    public virtual BillBorrow BidNavigation { get; set; } = null!;

    public virtual Device Device { get; set; } = null!;
}
