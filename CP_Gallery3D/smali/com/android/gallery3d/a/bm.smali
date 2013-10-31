.class public Lcom/android/gallery3d/a/bm;
.super Lcom/android/gallery3d/a/ax;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "MtpImage"


# instance fields
.field private final Z:Lcom/android/gallery3d/b/n;

.field private final au:Lcom/android/gallery3d/a/ap;

.field private final fx:I

.field private final fy:I

.field private final mContext:Landroid/content/Context;

.field private final tO:I

.field private xQ:I

.field private xR:I

.field private xS:J

.field private xT:Ljava/lang/String;

.field private final xU:Landroid/mtp/MtpObjectInfo;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/a/dd;Lcom/android/gallery3d/app/cl;IILcom/android/gallery3d/a/ap;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-static {p5, p3, p4}, Lcom/android/gallery3d/a/be;->a(Lcom/android/gallery3d/a/ap;II)Landroid/mtp/MtpObjectInfo;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/a/bm;-><init>(Lcom/android/gallery3d/a/dd;Lcom/android/gallery3d/app/cl;ILandroid/mtp/MtpObjectInfo;Lcom/android/gallery3d/a/ap;)V

    .line 70
    return-void
.end method

.method constructor <init>(Lcom/android/gallery3d/a/dd;Lcom/android/gallery3d/app/cl;ILandroid/mtp/MtpObjectInfo;Lcom/android/gallery3d/a/ap;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-static {}, Lcom/android/gallery3d/a/bm;->ex()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/a/ax;-><init>(Lcom/android/gallery3d/a/dd;J)V

    .line 54
    invoke-interface {p2}, Lcom/android/gallery3d/app/cl;->dv()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/a/bm;->mContext:Landroid/content/Context;

    .line 55
    iput p3, p0, Lcom/android/gallery3d/a/bm;->tO:I

    .line 56
    iput-object p4, p0, Lcom/android/gallery3d/a/bm;->xU:Landroid/mtp/MtpObjectInfo;

    .line 57
    invoke-virtual {p4}, Landroid/mtp/MtpObjectInfo;->getObjectHandle()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/a/bm;->xQ:I

    .line 58
    invoke-virtual {p4}, Landroid/mtp/MtpObjectInfo;->getCompressedSize()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/a/bm;->xR:I

    .line 59
    invoke-virtual {p4}, Landroid/mtp/MtpObjectInfo;->getDateCreated()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/a/bm;->xS:J

    .line 60
    invoke-virtual {p4}, Landroid/mtp/MtpObjectInfo;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/a/bm;->xT:Ljava/lang/String;

    .line 61
    invoke-virtual {p4}, Landroid/mtp/MtpObjectInfo;->getImagePixWidth()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/a/bm;->fx:I

    .line 62
    invoke-virtual {p4}, Landroid/mtp/MtpObjectInfo;->getImagePixHeight()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/a/bm;->fy:I

    .line 63
    invoke-interface {p2}, Lcom/android/gallery3d/app/cl;->dw()Lcom/android/gallery3d/b/n;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/a/bm;->Z:Lcom/android/gallery3d/b/n;

    .line 64
    iput-object p5, p0, Lcom/android/gallery3d/a/bm;->au:Lcom/android/gallery3d/a/ap;

    .line 65
    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/a/bm;)I
    .locals 1
    .parameter

    .prologue
    .line 36
    iget v0, p0, Lcom/android/gallery3d/a/bm;->tO:I

    return v0
.end method

.method static synthetic b(Lcom/android/gallery3d/a/bm;)I
    .locals 1
    .parameter

    .prologue
    .line 36
    iget v0, p0, Lcom/android/gallery3d/a/bm;->xQ:I

    return v0
.end method

.method static synthetic c(Lcom/android/gallery3d/a/bm;)Lcom/android/gallery3d/a/ap;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/gallery3d/a/bm;->au:Lcom/android/gallery3d/a/ap;

    return-object v0
.end method

.method static synthetic d(Lcom/android/gallery3d/a/bm;)I
    .locals 1
    .parameter

    .prologue
    .line 36
    iget v0, p0, Lcom/android/gallery3d/a/bm;->xR:I

    return v0
.end method


# virtual methods
.method public a(Landroid/mtp/MtpObjectInfo;)V
    .locals 4
    .parameter

    .prologue
    .line 120
    iget v0, p0, Lcom/android/gallery3d/a/bm;->xQ:I

    invoke-virtual {p1}, Landroid/mtp/MtpObjectInfo;->getObjectHandle()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/android/gallery3d/a/bm;->xS:J

    invoke-virtual {p1}, Landroid/mtp/MtpObjectInfo;->getDateCreated()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 121
    :cond_0
    invoke-virtual {p1}, Landroid/mtp/MtpObjectInfo;->getObjectHandle()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/a/bm;->xQ:I

    .line 122
    invoke-virtual {p1}, Landroid/mtp/MtpObjectInfo;->getDateCreated()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/a/bm;->xS:J

    .line 123
    invoke-static {}, Lcom/android/gallery3d/a/bm;->ex()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/a/bj;->vI:J

    .line 125
    :cond_1
    return-void
.end method

.method public al()Lcom/android/gallery3d/b/ab;
    .locals 1

    .prologue
    .line 94
    new-instance v0, Lcom/android/gallery3d/a/cl;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/a/cl;-><init>(Lcom/android/gallery3d/a/bm;)V

    return-object v0
.end method

.method public am()I
    .locals 1

    .prologue
    .line 116
    const/16 v0, 0x840

    return v0
.end method

.method public ao()I
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x2

    return v0
.end method

.method public ap()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/gallery3d/a/bm;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/gallery3d/a/bj;->uj:Lcom/android/gallery3d/a/dd;

    invoke-static {v0, v1}, Lcom/android/gallery3d/provider/GalleryProvider;->a(Landroid/content/Context;Lcom/android/gallery3d/a/dd;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public aq()Lcom/android/gallery3d/a/cw;
    .locals 6

    .prologue
    .line 150
    invoke-super {p0}, Lcom/android/gallery3d/a/ax;->aq()Lcom/android/gallery3d/a/cw;

    move-result-object v0

    .line 151
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v1

    .line 152
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/gallery3d/a/bm;->xT:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/android/gallery3d/a/cw;->a(ILjava/lang/Object;)V

    .line 153
    const/4 v2, 0x3

    new-instance v3, Ljava/util/Date;

    iget-wide v4, p0, Lcom/android/gallery3d/a/bm;->xS:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/android/gallery3d/a/cw;->a(ILjava/lang/Object;)V

    .line 154
    const/4 v1, 0x5

    iget v2, p0, Lcom/android/gallery3d/a/bm;->fx:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/a/cw;->a(ILjava/lang/Object;)V

    .line 155
    const/4 v1, 0x6

    iget v2, p0, Lcom/android/gallery3d/a/bm;->fy:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/a/cw;->a(ILjava/lang/Object;)V

    .line 156
    const/16 v1, 0xa

    iget v2, p0, Lcom/android/gallery3d/a/bm;->xR:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/a/cw;->a(ILjava/lang/Object;)V

    .line 157
    return-object v0
.end method

.method public dx()J
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/android/gallery3d/a/bm;->xS:J

    return-wide v0
.end method

.method public eU()[B
    .locals 4

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/gallery3d/a/bm;->au:Lcom/android/gallery3d/a/ap;

    invoke-virtual {v0}, Lcom/android/gallery3d/a/ap;->dm()Lcom/android/gallery3d/a/bs;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/a/bm;->tO:I

    invoke-static {v1}, Landroid/hardware/usb/UsbDevice;->getDeviceName(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/a/bm;->xQ:I

    iget v3, p0, Lcom/android/gallery3d/a/bm;->xR:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/gallery3d/a/bs;->b(Ljava/lang/String;II)[B

    move-result-object v0

    return-object v0
.end method

.method public el()Z
    .locals 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/gallery3d/a/bm;->au:Lcom/android/gallery3d/a/ap;

    iget v1, p0, Lcom/android/gallery3d/a/bm;->tO:I

    invoke-static {v1}, Landroid/hardware/usb/UsbDevice;->getDeviceName(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/a/bm;->xU:Landroid/mtp/MtpObjectInfo;

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/a/ap;->a(Ljava/lang/String;Landroid/mtp/MtpObjectInfo;)Z

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/android/gallery3d/a/bm;->fy:I

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    const-string v0, "image/jpeg"

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 140
    iget v0, p0, Lcom/android/gallery3d/a/bm;->xR:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/android/gallery3d/a/bm;->fx:I

    return v0
.end method

.method public r(I)Lcom/android/gallery3d/b/ab;
    .locals 1
    .parameter

    .prologue
    .line 79
    new-instance v0, Lcom/android/gallery3d/a/cm;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/a/cm;-><init>(Lcom/android/gallery3d/a/bm;)V

    return-object v0
.end method
