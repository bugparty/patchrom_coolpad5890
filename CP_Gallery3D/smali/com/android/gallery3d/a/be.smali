.class public Lcom/android/gallery3d/a/be;
.super Lcom/android/gallery3d/a/r;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "MtpDevice"


# instance fields
.field private final ae:Lcom/android/gallery3d/a/dd;

.field private final au:Lcom/android/gallery3d/a/ap;

.field private final i:Lcom/android/gallery3d/app/cl;

.field private final ih:Lcom/android/gallery3d/a/ao;

.field private final jx:Lcom/android/gallery3d/a/cb;

.field private final mName:Ljava/lang/String;

.field private final tO:I

.field private final tP:Ljava/lang/String;

.field private tQ:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/a/dd;Lcom/android/gallery3d/app/cl;ILcom/android/gallery3d/a/ap;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-static {p4, p3}, Lcom/android/gallery3d/a/cx;->a(Lcom/android/gallery3d/a/ap;I)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/a/be;-><init>(Lcom/android/gallery3d/a/dd;Lcom/android/gallery3d/app/cl;ILjava/lang/String;Lcom/android/gallery3d/a/ap;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/a/dd;Lcom/android/gallery3d/app/cl;ILjava/lang/String;Lcom/android/gallery3d/a/ap;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-static {}, Lcom/android/gallery3d/a/be;->ex()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/a/r;-><init>(Lcom/android/gallery3d/a/dd;J)V

    .line 47
    iput-object p2, p0, Lcom/android/gallery3d/a/be;->i:Lcom/android/gallery3d/app/cl;

    .line 48
    iput p3, p0, Lcom/android/gallery3d/a/be;->tO:I

    .line 49
    invoke-static {p3}, Landroid/hardware/usb/UsbDevice;->getDeviceName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/a/be;->tP:Ljava/lang/String;

    .line 50
    invoke-interface {p2}, Lcom/android/gallery3d/app/cl;->du()Lcom/android/gallery3d/a/ao;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/a/be;->ih:Lcom/android/gallery3d/a/ao;

    .line 51
    iput-object p5, p0, Lcom/android/gallery3d/a/be;->au:Lcom/android/gallery3d/a/ap;

    .line 52
    iput-object p4, p0, Lcom/android/gallery3d/a/be;->mName:Ljava/lang/String;

    .line 53
    new-instance v0, Lcom/android/gallery3d/a/cb;

    const-string v1, "mtp://"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Lcom/android/gallery3d/a/cb;-><init>(Lcom/android/gallery3d/a/r;Landroid/net/Uri;Lcom/android/gallery3d/app/cl;)V

    iput-object v0, p0, Lcom/android/gallery3d/a/be;->jx:Lcom/android/gallery3d/a/cb;

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/mtp/item/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/a/dd;->B(Ljava/lang/String;)Lcom/android/gallery3d/a/dd;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/a/be;->ae:Lcom/android/gallery3d/a/dd;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/a/be;->tQ:Ljava/util/List;

    .line 56
    return-void
.end method

.method public static a(Lcom/android/gallery3d/a/ap;II)Landroid/mtp/MtpObjectInfo;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 115
    invoke-static {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName(I)Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-virtual {p0}, Lcom/android/gallery3d/a/ap;->dm()Lcom/android/gallery3d/a/bs;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/android/gallery3d/a/bs;->f(Ljava/lang/String;I)Landroid/mtp/MtpObjectInfo;

    move-result-object v0

    return-object v0
.end method

.method private a(IILjava/util/ArrayList;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 82
    invoke-direct {p0, p1, p2, p3, v2}, Lcom/android/gallery3d/a/be;->a(IILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 84
    const/4 v0, 0x0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 85
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpObjectInfo;

    .line 86
    invoke-virtual {v0}, Landroid/mtp/MtpObjectInfo;->getObjectHandle()I

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Lcom/android/gallery3d/a/be;->a(IILjava/util/ArrayList;)V

    .line 84
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 88
    :cond_0
    return-void
.end method

.method private a(IILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/gallery3d/a/be;->au:Lcom/android/gallery3d/a/ap;

    invoke-virtual {v0}, Lcom/android/gallery3d/a/ap;->dm()Lcom/android/gallery3d/a/bs;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/a/be;->tP:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/gallery3d/a/bs;->a(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    .line 94
    if-nez v0, :cond_1

    .line 111
    :cond_0
    return-void

    .line 96
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpObjectInfo;

    .line 97
    invoke-virtual {v0}, Landroid/mtp/MtpObjectInfo;->getFormat()I

    move-result v2

    .line 98
    sparse-switch v2, :sswitch_data_0

    .line 107
    const-string v3, "MtpDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "other type: name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/mtp/MtpObjectInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", format = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 101
    :sswitch_0
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 104
    :sswitch_1
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 98
    nop

    :sswitch_data_0
    .sparse-switch
        0x3001 -> :sswitch_1
        0x3801 -> :sswitch_0
        0x3808 -> :sswitch_0
    .end sparse-switch
.end method

.method private ek()Ljava/util/List;
    .locals 4

    .prologue
    .line 65
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 67
    iget-object v0, p0, Lcom/android/gallery3d/a/be;->au:Lcom/android/gallery3d/a/ap;

    invoke-virtual {v0}, Lcom/android/gallery3d/a/ap;->dm()Lcom/android/gallery3d/a/bs;

    move-result-object v0

    iget-object v2, p0, Lcom/android/gallery3d/a/be;->tP:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/a/bs;->w(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 69
    if-nez v0, :cond_0

    move-object v0, v1

    .line 75
    :goto_0
    return-object v0

    .line 71
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpStorageInfo;

    .line 72
    invoke-virtual {v0}, Landroid/mtp/MtpStorageInfo;->getStorageId()I

    move-result v0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3, v1}, Lcom/android/gallery3d/a/be;->a(IILjava/util/ArrayList;)V

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 75
    goto :goto_0
.end method


# virtual methods
.method public aN()I
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/gallery3d/a/be;->tQ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public aQ()Z
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x1

    return v0
.end method

.method public aT()J
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/gallery3d/a/be;->jx:Lcom/android/gallery3d/a/cb;

    invoke-virtual {v0}, Lcom/android/gallery3d/a/cb;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    invoke-static {}, Lcom/android/gallery3d/a/be;->ex()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/a/bj;->vI:J

    .line 155
    invoke-direct {p0}, Lcom/android/gallery3d/a/be;->ek()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/a/be;->tQ:Ljava/util/List;

    .line 157
    :cond_0
    iget-wide v0, p0, Lcom/android/gallery3d/a/bj;->vI:J

    return-wide v0
.end method

.method public am()I
    .locals 1

    .prologue
    .line 162
    const/16 v0, 0x800

    return v0
.end method

.method public el()Z
    .locals 4

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/gallery3d/a/be;->au:Lcom/android/gallery3d/a/ap;

    iget-object v1, p0, Lcom/android/gallery3d/a/be;->tP:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/gallery3d/a/be;->mName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/gallery3d/a/be;->tQ:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/gallery3d/a/ap;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/gallery3d/a/be;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public j(II)Ljava/util/ArrayList;
    .locals 9
    .parameter
    .parameter

    .prologue
    .line 121
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 123
    add-int v0, p1, p2

    iget-object v1, p0, Lcom/android/gallery3d/a/be;->tQ:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 125
    iget-object v0, p0, Lcom/android/gallery3d/a/be;->i:Lcom/android/gallery3d/app/cl;

    invoke-interface {v0}, Lcom/android/gallery3d/app/cl;->du()Lcom/android/gallery3d/a/ao;

    move-result-object v8

    .line 126
    :goto_0
    if-ge p1, v7, :cond_1

    .line 127
    iget-object v0, p0, Lcom/android/gallery3d/a/be;->tQ:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/mtp/MtpObjectInfo;

    .line 128
    iget-object v0, p0, Lcom/android/gallery3d/a/be;->ae:Lcom/android/gallery3d/a/dd;

    invoke-virtual {v4}, Landroid/mtp/MtpObjectInfo;->getObjectHandle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/a/dd;->bn(I)Lcom/android/gallery3d/a/dd;

    move-result-object v1

    .line 129
    invoke-virtual {v8, v1}, Lcom/android/gallery3d/a/ao;->d(Lcom/android/gallery3d/a/dd;)Lcom/android/gallery3d/a/bj;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/bm;

    .line 130
    if-nez v0, :cond_0

    .line 131
    new-instance v0, Lcom/android/gallery3d/a/bm;

    iget-object v2, p0, Lcom/android/gallery3d/a/be;->i:Lcom/android/gallery3d/app/cl;

    iget v3, p0, Lcom/android/gallery3d/a/be;->tO:I

    iget-object v5, p0, Lcom/android/gallery3d/a/be;->au:Lcom/android/gallery3d/a/ap;

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/a/bm;-><init>(Lcom/android/gallery3d/a/dd;Lcom/android/gallery3d/app/cl;ILandroid/mtp/MtpObjectInfo;Lcom/android/gallery3d/a/ap;)V

    .line 136
    :goto_1
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 134
    :cond_0
    invoke-virtual {v0, v4}, Lcom/android/gallery3d/a/bm;->a(Landroid/mtp/MtpObjectInfo;)V

    goto :goto_1

    .line 138
    :cond_1
    return-object v6
.end method
