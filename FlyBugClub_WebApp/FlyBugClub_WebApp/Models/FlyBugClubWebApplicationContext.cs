using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace FlyBugClub_WebApp.Models;

public partial class FlyBugClubWebApplicationContext : DbContext
{
    public FlyBugClubWebApplicationContext()
    {
    }

    public FlyBugClubWebApplicationContext(DbContextOptions<FlyBugClubWebApplicationContext> options)
        : base(options)
    {
    }

    public virtual DbSet<BillBorrow> BillBorrows { get; set; }

    public virtual DbSet<BorrowDetail> BorrowDetails { get; set; }

    public virtual DbSet<CategoryDevice> CategoryDevices { get; set; }

    public virtual DbSet<Device> Devices { get; set; }

    public virtual DbSet<DeviceSheetPrice> DeviceSheetPrices { get; set; }

    public virtual DbSet<DiscountDevice> DiscountDevices { get; set; }

    public virtual DbSet<HoSoTuyenDung> HoSoTuyenDungs { get; set; }

    public virtual DbSet<OrderDevice> OrderDevices { get; set; }

    public virtual DbSet<OrderDeviceDetail> OrderDeviceDetails { get; set; }

    public virtual DbSet<Position> Positions { get; set; }

    public virtual DbSet<Supplier> Suppliers { get; set; }

    public virtual DbSet<User> Users { get; set; }

    public virtual DbSet<YeuCauUngTuyen> YeuCauUngTuyens { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see http://go.microsoft.com/fwlink/?LinkId=723263.
        => optionsBuilder.UseSqlServer("Server=.\\SQLEXPRESS;uid=sa;password=1;database=FlyBugClub_WebApplication;Encrypt=true;TrustServerCertificate=true");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<BillBorrow>(entity =>
        {
            entity.HasKey(e => e.Bid);

            entity.ToTable("BillBorrow");

            entity.Property(e => e.Bid)
                .HasMaxLength(10)
                .IsFixedLength()
                .HasColumnName("BID");
            entity.Property(e => e.BorrowDate).HasColumnType("datetime");
            entity.Property(e => e.Note).HasMaxLength(200);
            entity.Property(e => e.ReceiveDay).HasColumnType("datetime");
            entity.Property(e => e.ReturnDate).HasColumnType("datetime");
            entity.Property(e => e.Sid)
                .HasMaxLength(15)
                .IsFixedLength()
                .HasColumnName("SID");
            entity.Property(e => e.SupplierId).HasColumnName("SupplierID");

            entity.HasOne(d => d.SidNavigation).WithMany(p => p.BillBorrows)
                .HasForeignKey(d => d.Sid)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_BillBorrow_User");

            entity.HasOne(d => d.Supplier).WithMany(p => p.BillBorrows)
                .HasForeignKey(d => d.SupplierId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_BillBorrow_Supplier");
        });

        modelBuilder.Entity<BorrowDetail>(entity =>
        {
            entity.ToTable("BorrowDetail");

            entity.Property(e => e.BorrowDetailId)
                .ValueGeneratedNever()
                .HasColumnName("BorrowDetailID");
            entity.Property(e => e.Bid)
                .HasMaxLength(10)
                .IsFixedLength()
                .HasColumnName("BID");
            entity.Property(e => e.DeviceId)
                .HasMaxLength(10)
                .IsFixedLength()
                .HasColumnName("DeviceID");
            entity.Property(e => e.Price)
                .HasColumnType("money")
                .HasColumnName("price");
            entity.Property(e => e.SubTotal).HasColumnType("money");

            entity.HasOne(d => d.BidNavigation).WithMany(p => p.BorrowDetails)
                .HasForeignKey(d => d.Bid)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_BorrowDetail_BillBorrow");

            entity.HasOne(d => d.Device).WithMany(p => p.BorrowDetails)
                .HasForeignKey(d => d.DeviceId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_BorrowDetail_Device");
        });

        modelBuilder.Entity<CategoryDevice>(entity =>
        {
            entity.HasKey(e => e.CategoryId).HasName("PK_Category");

            entity.ToTable("CategoryDevice");

            entity.Property(e => e.CategoryId)
                .HasMaxLength(10)
                .IsFixedLength()
                .HasColumnName("CategoryID");
            entity.Property(e => e.CategoryName).HasMaxLength(50);
        });

        modelBuilder.Entity<Device>(entity =>
        {
            entity.ToTable("Device");

            entity.Property(e => e.DeviceId)
                .HasMaxLength(10)
                .IsFixedLength()
                .HasColumnName("DeviceID");
            entity.Property(e => e.CategoryId)
                .HasMaxLength(10)
                .IsFixedLength()
                .HasColumnName("CategoryID");
            entity.Property(e => e.Describe).HasMaxLength(200);
            entity.Property(e => e.ImagePath)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.Name).HasMaxLength(50);
            entity.Property(e => e.Price).HasColumnType("money");

            entity.HasOne(d => d.Category).WithMany(p => p.Devices)
                .HasForeignKey(d => d.CategoryId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_Device_CategoryDevice");
        });

        modelBuilder.Entity<DeviceSheetPrice>(entity =>
        {
            entity.HasKey(e => e.SheetPriceId);

            entity.ToTable("Device_SheetPrice");

            entity.Property(e => e.SheetPriceId)
                .HasMaxLength(10)
                .IsFixedLength()
                .HasColumnName("SheetPriceID");
            entity.Property(e => e.DeviceId)
                .HasMaxLength(10)
                .IsFixedLength()
                .HasColumnName("DeviceID");
            entity.Property(e => e.EndDate).HasColumnType("date");
            entity.Property(e => e.StartDate).HasColumnType("date");

            entity.HasOne(d => d.Device).WithMany(p => p.DeviceSheetPrices)
                .HasForeignKey(d => d.DeviceId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_Device_SheetPrice_Device");
        });

        modelBuilder.Entity<DiscountDevice>(entity =>
        {
            entity.ToTable("Discount_Device");

            entity.Property(e => e.DiscountDeviceId)
                .HasMaxLength(10)
                .IsFixedLength()
                .HasColumnName("DiscountDeviceID");
            entity.Property(e => e.DeviceId)
                .HasMaxLength(10)
                .IsFixedLength()
                .HasColumnName("DeviceID");
            entity.Property(e => e.EndDate).HasColumnType("date");
            entity.Property(e => e.StartDate).HasColumnType("date");

            entity.HasOne(d => d.Device).WithMany(p => p.DiscountDevices)
                .HasForeignKey(d => d.DeviceId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_Discount_Device_Device");
        });

        modelBuilder.Entity<HoSoTuyenDung>(entity =>
        {
            entity.HasKey(e => e.MaViTri);

            entity.ToTable("HoSoTuyenDung");

            entity.Property(e => e.TenViTri).HasMaxLength(50);
        });

        modelBuilder.Entity<OrderDevice>(entity =>
        {
            entity.HasKey(e => e.Oid);

            entity.ToTable("OrderDevice");

            entity.Property(e => e.Oid)
                .HasMaxLength(10)
                .IsFixedLength()
                .HasColumnName("OID");
            entity.Property(e => e.DateOrder).HasColumnType("date");
            entity.Property(e => e.SupplierAddress).HasMaxLength(100);
            entity.Property(e => e.SupplierName).HasMaxLength(50);
            entity.Property(e => e.SupplierPhone)
                .HasMaxLength(11)
                .IsFixedLength();
        });

        modelBuilder.Entity<OrderDeviceDetail>(entity =>
        {
            entity.HasKey(e => e.Odid);

            entity.ToTable("OrderDeviceDetail");

            entity.Property(e => e.Odid)
                .HasMaxLength(10)
                .IsFixedLength()
                .HasColumnName("ODID");
            entity.Property(e => e.DeviceId)
                .HasMaxLength(10)
                .IsFixedLength()
                .HasColumnName("DeviceID");
            entity.Property(e => e.Oid)
                .HasMaxLength(10)
                .IsFixedLength()
                .HasColumnName("OID");

            entity.HasOne(d => d.Device).WithMany(p => p.OrderDeviceDetails)
                .HasForeignKey(d => d.DeviceId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_OrderDeviceDetail_Device");

            entity.HasOne(d => d.OidNavigation).WithMany(p => p.OrderDeviceDetails)
                .HasForeignKey(d => d.Oid)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_OrderDeviceDetail_OrderDevice");
        });

        modelBuilder.Entity<Position>(entity =>
        {
            entity.ToTable("Position");

            entity.Property(e => e.PositionId)
                .HasMaxLength(10)
                .IsFixedLength()
                .HasColumnName("PositionID");
            entity.Property(e => e.PositionName).HasMaxLength(50);
        });

        modelBuilder.Entity<Supplier>(entity =>
        {
            entity.HasKey(e => e.SupplierId).HasName("PK_BillInformation");

            entity.ToTable("Supplier");

            entity.Property(e => e.SupplierId).HasColumnName("SupplierID");
            entity.Property(e => e.Room)
                .HasMaxLength(10)
                .IsFixedLength();
            entity.Property(e => e.SupplierAddress).HasMaxLength(100);
            entity.Property(e => e.SupplierName).HasMaxLength(20);
            entity.Property(e => e.SupplierPhone)
                .HasMaxLength(11)
                .IsFixedLength();
        });

        modelBuilder.Entity<User>(entity =>
        {
            entity.HasKey(e => e.StudentId);

            entity.ToTable("User");

            entity.Property(e => e.StudentId)
                .HasMaxLength(15)
                .IsFixedLength()
                .HasColumnName("StudentID");
            entity.Property(e => e.Address).HasMaxLength(100);
            entity.Property(e => e.Email)
                .HasMaxLength(50)
                .IsFixedLength();
            entity.Property(e => e.Faculty).HasMaxLength(50);
            entity.Property(e => e.Gender)
                .HasMaxLength(5)
                .IsFixedLength();
            entity.Property(e => e.Major).HasMaxLength(100);
            entity.Property(e => e.Name).HasMaxLength(50);
            entity.Property(e => e.Phone)
                .HasMaxLength(11)
                .IsFixedLength();
            entity.Property(e => e.PositionId)
                .HasMaxLength(10)
                .IsFixedLength()
                .HasColumnName("PositionID");

            entity.HasOne(d => d.Position).WithMany(p => p.Users)
                .HasForeignKey(d => d.PositionId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_User_Position");
        });

        modelBuilder.Entity<YeuCauUngTuyen>(entity =>
        {
            entity.HasKey(e => e.StudentId).HasName("PK_Member");

            entity.ToTable("YeuCauUngTuyen");

            entity.Property(e => e.StudentId)
                .HasMaxLength(15)
                .IsUnicode(false)
                .HasColumnName("StudentID");
            entity.Property(e => e.Address).HasMaxLength(100);
            entity.Property(e => e.AdvantagesNote).HasMaxLength(100);
            entity.Property(e => e.DisadvantagesNote).HasMaxLength(100);
            entity.Property(e => e.Email)
                .HasMaxLength(100)
                .IsUnicode(false);
            entity.Property(e => e.Faculty).HasMaxLength(100);
            entity.Property(e => e.Gender).HasMaxLength(5);
            entity.Property(e => e.Major).HasMaxLength(100);
            entity.Property(e => e.Name).HasMaxLength(30);
            entity.Property(e => e.Phone)
                .HasMaxLength(12)
                .IsFixedLength();
            entity.Property(e => e.Position).HasMaxLength(50);
            entity.Property(e => e.ReasonNote).HasMaxLength(100);
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
