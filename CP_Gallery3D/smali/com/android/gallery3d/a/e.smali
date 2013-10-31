.class Lcom/android/gallery3d/a/e;
.super Lcom/android/gallery3d/a/ci;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "MtpSource"

.field private static final ar:I = 0x0

.field private static final as:I = 0x1

.field private static final at:I = 0x2


# instance fields
.field au:Lcom/android/gallery3d/a/ap;

.field i:Lcom/android/gallery3d/app/cl;

.field j:Lcom/android/gallery3d/a/bz;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/cl;)V
    .locals 3
    .parameter

    .prologue
    .line 33
    const-string v0, "mtp"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/a/ci;-><init>(Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lcom/android/gallery3d/a/e;->i:Lcom/android/gallery3d/app/cl;

    .line 35
    new-instance v0, Lcom/android/gallery3d/a/bz;

    invoke-direct {v0}, Lcom/android/gallery3d/a/bz;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/a/e;->j:Lcom/android/gallery3d/a/bz;

    .line 36
    iget-object v0, p0, Lcom/android/gallery3d/a/e;->j:Lcom/android/gallery3d/a/bz;

    const-string v1, "/mtp"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/a/bz;->i(Ljava/lang/String;I)V

    .line 37
    iget-object v0, p0, Lcom/android/gallery3d/a/e;->j:Lcom/android/gallery3d/a/bz;

    const-string v1, "/mtp/*"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/a/bz;->i(Ljava/lang/String;I)V

    .line 38
    iget-object v0, p0, Lcom/android/gallery3d/a/e;->j:Lcom/android/gallery3d/a/bz;

    const-string v1, "/mtp/item/*/*"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/a/bz;->i(Ljava/lang/String;I)V

    .line 39
    new-instance v0, Lcom/android/gallery3d/a/ap;

    iget-object v1, p0, Lcom/android/gallery3d/a/e;->i:Lcom/android/gallery3d/app/cl;

    invoke-interface {v1}, Lcom/android/gallery3d/app/cl;->dv()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/gallery3d/a/ap;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/a/e;->au:Lcom/android/gallery3d/a/ap;

    .line 40
    return-void
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/a/dd;)Lcom/android/gallery3d/a/bj;
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 44
    iget-object v0, p0, Lcom/android/gallery3d/a/e;->j:Lcom/android/gallery3d/a/bz;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/a/bz;->s(Lcom/android/gallery3d/a/dd;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 58
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

    .line 46
    :pswitch_0
    new-instance v0, Lcom/android/gallery3d/a/cx;

    iget-object v1, p0, Lcom/android/gallery3d/a/e;->i:Lcom/android/gallery3d/app/cl;

    iget-object v2, p0, Lcom/android/gallery3d/a/e;->au:Lcom/android/gallery3d/a/ap;

    invoke-direct {v0, p1, v1, v2}, Lcom/android/gallery3d/a/cx;-><init>(Lcom/android/gallery3d/a/dd;Lcom/android/gallery3d/app/cl;Lcom/android/gallery3d/a/ap;)V

    .line 55
    :goto_0
    return-object v0

    .line 49
    :pswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/a/e;->j:Lcom/android/gallery3d/a/bz;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/a/bz;->aK(I)I

    move-result v1

    .line 50
    new-instance v0, Lcom/android/gallery3d/a/be;

    iget-object v2, p0, Lcom/android/gallery3d/a/e;->i:Lcom/android/gallery3d/app/cl;

    iget-object v3, p0, Lcom/android/gallery3d/a/e;->au:Lcom/android/gallery3d/a/ap;

    invoke-direct {v0, p1, v2, v1, v3}, Lcom/android/gallery3d/a/be;-><init>(Lcom/android/gallery3d/a/dd;Lcom/android/gallery3d/app/cl;ILcom/android/gallery3d/a/ap;)V

    goto :goto_0

    .line 53
    :pswitch_2
    iget-object v0, p0, Lcom/android/gallery3d/a/e;->j:Lcom/android/gallery3d/a/bz;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/a/bz;->aK(I)I

    move-result v3

    .line 54
    iget-object v0, p0, Lcom/android/gallery3d/a/e;->j:Lcom/android/gallery3d/a/bz;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/a/bz;->aK(I)I

    move-result v4

    .line 55
    new-instance v0, Lcom/android/gallery3d/a/bm;

    iget-object v2, p0, Lcom/android/gallery3d/a/e;->i:Lcom/android/gallery3d/app/cl;

    iget-object v5, p0, Lcom/android/gallery3d/a/e;->au:Lcom/android/gallery3d/a/ap;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/a/bm;-><init>(Lcom/android/gallery3d/a/dd;Lcom/android/gallery3d/app/cl;IILcom/android/gallery3d/a/ap;)V

    goto :goto_0

    .line 44
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/gallery3d/a/e;->au:Lcom/android/gallery3d/a/ap;

    invoke-virtual {v0}, Lcom/android/gallery3d/a/ap;->pause()V

    .line 65
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/gallery3d/a/e;->au:Lcom/android/gallery3d/a/ap;

    invoke-virtual {v0}, Lcom/android/gallery3d/a/ap;->resume()V

    .line 70
    return-void
.end method
