namespace db
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ThongTinNhanVien")]
    public partial class ThongTinNhanVien
    {
        [Key]
        [StringLength(10)]
        public string MaNhanVien { get; set; }

        [StringLength(50)]
        public string HoTen { get; set; }

        [Column(TypeName = "date")]
        public DateTime? NgaySinh { get; set; }

        [StringLength(20)]
        public string TenChucVu { get; set; }

        [StringLength(10)]
        public string SDT { get; set; }
    }
}
