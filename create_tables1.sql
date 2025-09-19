CREATE TABLE public."NhomTT" (
	"NhomTTID" varchar(255) NOT NULL,
	"TenNhomTT" varchar(255) NULL,
	"NgayCapNhat" timestamp(6) NULL,
	"NgayTao" timestamp(6) NULL,
	CONSTRAINT "NhomTT_pkey2" PRIMARY KEY ("NhomTTID")
);


CREATE TABLE public."TruongTT" (
	"TruongTTID" varchar(255) DEFAULT nextval('"TruongTT_ID_seq"'::regclass) NOT NULL,
	"MoTa" varchar(255) NULL,
	"PhuongThuc" varchar(255) NULL,
	"TenTruongTT" varchar(255) NULL,
	"NgayCapNhat" timestamp(6) NULL,
	"NgayTao" timestamp(6) NULL,
	"MaDanhMuc" varchar(255) NULL,
	CONSTRAINT "TruongTT_pkey2" PRIMARY KEY ("TruongTTID")
);


-- public."NhomTT_TruongTT" definition

-- Drop table

-- DROP TABLE public."NhomTT_TruongTT";

CREATE TABLE public."NhomTT_TruongTT" (
	"NhomTruongID" varchar(255) DEFAULT nextval('"NhomTT_TruongTT_NhomTruongID_seq"'::regclass) NOT NULL,
	"LoaiAnID" varchar(255) NULL,
	"NhomTT" varchar(255) NULL,
	"NhomTTID" varchar(255) NULL,
	"TruongTT" varchar(255) NULL,
	"TruongTTID" varchar(255) NULL,
	"MaDanhMuc" varchar(255) NULL,
	"NgayTao" timestamp(6) NULL,
	"ExcelMapping" varchar(255) NULL,
	CONSTRAINT "NhomTT_TruongTT_pkey" PRIMARY KEY ("NhomTruongID")
);