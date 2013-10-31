.class Lcom/android/gallery3d/a/bv;
.super Lcom/android/gallery3d/a/ci;
.source "SourceFile"


# static fields
.field static final Aa:I = 0x104

.field static final zR:I = 0x0

.field static final zS:I = 0x1

.field static final zT:I = 0x2

.field static final zU:I = 0x3

.field static final zV:I = 0x4

.field static final zW:I = 0x100

.field static final zX:I = 0x101

.field static final zY:I = 0x102

.field static final zZ:I = 0x103


# instance fields
.field i:Lcom/android/gallery3d/app/cl;

.field j:Lcom/android/gallery3d/a/bz;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/cl;)V
    .locals 3
    .parameter

    .prologue
    .line 38
    const-string v0, "cluster"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/a/ci;-><init>(Ljava/lang/String;)V

    .line 39
    iput-object p1, p0, Lcom/android/gallery3d/a/bv;->i:Lcom/android/gallery3d/app/cl;

    .line 40
    new-instance v0, Lcom/android/gallery3d/a/bz;

    invoke-direct {v0}, Lcom/android/gallery3d/a/bz;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/a/bv;->j:Lcom/android/gallery3d/a/bz;

    .line 41
    iget-object v0, p0, Lcom/android/gallery3d/a/bv;->j:Lcom/android/gallery3d/a/bz;

    const-string v1, "/cluster/*/time"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/a/bz;->i(Ljava/lang/String;I)V

    .line 42
    iget-object v0, p0, Lcom/android/gallery3d/a/bv;->j:Lcom/android/gallery3d/a/bz;

    const-string v1, "/cluster/*/location"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/a/bz;->i(Ljava/lang/String;I)V

    .line 43
    iget-object v0, p0, Lcom/android/gallery3d/a/bv;->j:Lcom/android/gallery3d/a/bz;

    const-string v1, "/cluster/*/tag"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/a/bz;->i(Ljava/lang/String;I)V

    .line 44
    iget-object v0, p0, Lcom/android/gallery3d/a/bv;->j:Lcom/android/gallery3d/a/bz;

    const-string v1, "/cluster/*/size"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/a/bz;->i(Ljava/lang/String;I)V

    .line 45
    iget-object v0, p0, Lcom/android/gallery3d/a/bv;->j:Lcom/android/gallery3d/a/bz;

    const-string v1, "/cluster/*/face"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/a/bz;->i(Ljava/lang/String;I)V

    .line 47
    iget-object v0, p0, Lcom/android/gallery3d/a/bv;->j:Lcom/android/gallery3d/a/bz;

    const-string v1, "/cluster/*/time/*"

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/a/bz;->i(Ljava/lang/String;I)V

    .line 48
    iget-object v0, p0, Lcom/android/gallery3d/a/bv;->j:Lcom/android/gallery3d/a/bz;

    const-string v1, "/cluster/*/location/*"

    const/16 v2, 0x101

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/a/bz;->i(Ljava/lang/String;I)V

    .line 49
    iget-object v0, p0, Lcom/android/gallery3d/a/bv;->j:Lcom/android/gallery3d/a/bz;

    const-string v1, "/cluster/*/tag/*"

    const/16 v2, 0x102

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/a/bz;->i(Ljava/lang/String;I)V

    .line 50
    iget-object v0, p0, Lcom/android/gallery3d/a/bv;->j:Lcom/android/gallery3d/a/bz;

    const-string v1, "/cluster/*/size/*"

    const/16 v2, 0x103

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/a/bz;->i(Ljava/lang/String;I)V

    .line 51
    iget-object v0, p0, Lcom/android/gallery3d/a/bv;->j:Lcom/android/gallery3d/a/bz;

    const-string v1, "/cluster/*/face/*"

    const/16 v2, 0x104

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/a/bz;->i(Ljava/lang/String;I)V

    .line 52
    return-void
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/a/dd;)Lcom/android/gallery3d/a/bj;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 61
    iget-object v0, p0, Lcom/android/gallery3d/a/bv;->j:Lcom/android/gallery3d/a/bz;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/a/bz;->s(Lcom/android/gallery3d/a/dd;)I

    move-result v1

    .line 62
    iget-object v0, p0, Lcom/android/gallery3d/a/bv;->j:Lcom/android/gallery3d/a/bz;

    invoke-virtual {v0, v5}, Lcom/android/gallery3d/a/bz;->aJ(I)Ljava/lang/String;

    move-result-object v0

    .line 63
    iget-object v2, p0, Lcom/android/gallery3d/a/bv;->i:Lcom/android/gallery3d/app/cl;

    invoke-interface {v2}, Lcom/android/gallery3d/app/cl;->du()Lcom/android/gallery3d/a/ao;

    move-result-object v2

    .line 65
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_0

    .line 66
    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "/combo/{/mtp,/local/image,/picasa/image}"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 68
    const-string v0, "{/combo/{/mtp,/local/image,/local/image/more,/picasa/image}}"

    .line 72
    :cond_0
    invoke-virtual {v2, v0}, Lcom/android/gallery3d/a/ao;->q(Ljava/lang/String;)[Lcom/android/gallery3d/a/r;

    move-result-object v3

    .line 73
    sparse-switch v1, :sswitch_data_0

    .line 91
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :sswitch_0
    new-instance v0, Lcom/android/gallery3d/a/cj;

    iget-object v2, p0, Lcom/android/gallery3d/a/bv;->i:Lcom/android/gallery3d/app/cl;

    aget-object v3, v3, v5

    invoke-direct {v0, p1, v2, v3, v1}, Lcom/android/gallery3d/a/cj;-><init>(Lcom/android/gallery3d/a/dd;Lcom/android/gallery3d/app/cl;Lcom/android/gallery3d/a/r;I)V

    .line 88
    :goto_0
    return-object v0

    .line 85
    :sswitch_1
    invoke-virtual {p1}, Lcom/android/gallery3d/a/dd;->gv()Lcom/android/gallery3d/a/dd;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/a/ao;->g(Lcom/android/gallery3d/a/dd;)Lcom/android/gallery3d/a/r;

    move-result-object v1

    .line 88
    new-instance v0, Lcom/android/gallery3d/a/az;

    invoke-direct {v0, p1, v2, v1}, Lcom/android/gallery3d/a/az;-><init>(Lcom/android/gallery3d/a/dd;Lcom/android/gallery3d/a/ao;Lcom/android/gallery3d/a/r;)V

    goto :goto_0

    .line 73
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x100 -> :sswitch_1
        0x101 -> :sswitch_1
        0x102 -> :sswitch_1
        0x103 -> :sswitch_1
        0x104 -> :sswitch_1
    .end sparse-switch
.end method
