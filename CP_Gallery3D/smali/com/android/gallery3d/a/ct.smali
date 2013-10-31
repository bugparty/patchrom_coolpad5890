.class Lcom/android/gallery3d/a/ct;
.super Lcom/android/gallery3d/a/ci;
.source "SourceFile"


# static fields
.field private static final Hc:I = 0x0

.field private static final TAG:Ljava/lang/String; = "FilterSource"


# instance fields
.field private i:Lcom/android/gallery3d/app/cl;

.field private j:Lcom/android/gallery3d/a/bz;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/cl;)V
    .locals 3
    .parameter

    .prologue
    .line 29
    const-string v0, "filter"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/a/ci;-><init>(Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lcom/android/gallery3d/a/ct;->i:Lcom/android/gallery3d/app/cl;

    .line 31
    new-instance v0, Lcom/android/gallery3d/a/bz;

    invoke-direct {v0}, Lcom/android/gallery3d/a/bz;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/a/ct;->j:Lcom/android/gallery3d/a/bz;

    .line 32
    iget-object v0, p0, Lcom/android/gallery3d/a/ct;->j:Lcom/android/gallery3d/a/bz;

    const-string v1, "/filter/mediatype/*/*"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/a/bz;->i(Ljava/lang/String;I)V

    .line 33
    return-void
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/a/dd;)Lcom/android/gallery3d/a/bj;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 40
    iget-object v0, p0, Lcom/android/gallery3d/a/ct;->j:Lcom/android/gallery3d/a/bz;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/a/bz;->s(Lcom/android/gallery3d/a/dd;)I

    move-result v0

    .line 41
    iget-object v1, p0, Lcom/android/gallery3d/a/ct;->j:Lcom/android/gallery3d/a/bz;

    invoke-virtual {v1, v4}, Lcom/android/gallery3d/a/bz;->aK(I)I

    move-result v1

    .line 42
    iget-object v2, p0, Lcom/android/gallery3d/a/ct;->j:Lcom/android/gallery3d/a/bz;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/a/bz;->aJ(I)Ljava/lang/String;

    move-result-object v2

    .line 43
    iget-object v3, p0, Lcom/android/gallery3d/a/ct;->i:Lcom/android/gallery3d/app/cl;

    invoke-interface {v3}, Lcom/android/gallery3d/app/cl;->du()Lcom/android/gallery3d/a/ao;

    move-result-object v3

    .line 44
    invoke-virtual {v3, v2}, Lcom/android/gallery3d/a/ao;->q(Ljava/lang/String;)[Lcom/android/gallery3d/a/r;

    move-result-object v2

    .line 45
    packed-switch v0, :pswitch_data_0

    .line 49
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

    .line 47
    :pswitch_0
    new-instance v0, Lcom/android/gallery3d/a/bn;

    aget-object v2, v2, v4

    invoke-direct {v0, p1, v3, v2, v1}, Lcom/android/gallery3d/a/bn;-><init>(Lcom/android/gallery3d/a/dd;Lcom/android/gallery3d/a/ao;Lcom/android/gallery3d/a/r;I)V

    return-object v0

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
