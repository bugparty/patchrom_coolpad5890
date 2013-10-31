.class public Lcom/android/gallery3d/a/bg;
.super Lcom/android/gallery3d/a/ci;
.source "SourceFile"


# static fields
.field static final ua:I = 0x1

.field static final ub:I = 0x101


# instance fields
.field i:Lcom/android/gallery3d/app/cl;

.field j:Lcom/android/gallery3d/a/bz;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/cl;)V
    .locals 3
    .parameter

    .prologue
    .line 14
    const-string v0, "map"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/a/ci;-><init>(Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lcom/android/gallery3d/a/bg;->i:Lcom/android/gallery3d/app/cl;

    .line 16
    new-instance v0, Lcom/android/gallery3d/a/bz;

    invoke-direct {v0}, Lcom/android/gallery3d/a/bz;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/a/bg;->j:Lcom/android/gallery3d/a/bz;

    .line 17
    iget-object v0, p0, Lcom/android/gallery3d/a/bg;->j:Lcom/android/gallery3d/a/bz;

    const-string v1, "/map/*/maplocation"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/a/bz;->i(Ljava/lang/String;I)V

    .line 18
    iget-object v0, p0, Lcom/android/gallery3d/a/bg;->j:Lcom/android/gallery3d/a/bz;

    const-string v1, "/map/*/maplocation/*"

    const/16 v2, 0x101

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/a/bz;->i(Ljava/lang/String;I)V

    .line 20
    return-void
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/a/dd;)Lcom/android/gallery3d/a/bj;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 24
    iget-object v0, p0, Lcom/android/gallery3d/a/bg;->j:Lcom/android/gallery3d/a/bz;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/a/bz;->s(Lcom/android/gallery3d/a/dd;)I

    move-result v0

    .line 25
    iget-object v1, p0, Lcom/android/gallery3d/a/bg;->j:Lcom/android/gallery3d/a/bz;

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/a/bz;->aJ(I)Ljava/lang/String;

    move-result-object v1

    .line 26
    iget-object v2, p0, Lcom/android/gallery3d/a/bg;->i:Lcom/android/gallery3d/app/cl;

    invoke-interface {v2}, Lcom/android/gallery3d/app/cl;->du()Lcom/android/gallery3d/a/ao;

    move-result-object v2

    .line 27
    invoke-virtual {v2, v1}, Lcom/android/gallery3d/a/ao;->q(Ljava/lang/String;)[Lcom/android/gallery3d/a/r;

    move-result-object v1

    .line 28
    sparse-switch v0, :sswitch_data_0

    .line 36
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

    .line 30
    :sswitch_0
    new-instance v0, Lcom/android/gallery3d/a/ac;

    iget-object v2, p0, Lcom/android/gallery3d/a/bg;->i:Lcom/android/gallery3d/app/cl;

    aget-object v1, v1, v3

    const/4 v3, 0x1

    invoke-direct {v0, p1, v2, v1, v3}, Lcom/android/gallery3d/a/ac;-><init>(Lcom/android/gallery3d/a/dd;Lcom/android/gallery3d/app/cl;Lcom/android/gallery3d/a/r;Z)V

    .line 33
    :goto_0
    return-object v0

    .line 32
    :sswitch_1
    invoke-virtual {p1}, Lcom/android/gallery3d/a/dd;->gv()Lcom/android/gallery3d/a/dd;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/a/ao;->g(Lcom/android/gallery3d/a/dd;)Lcom/android/gallery3d/a/r;

    move-result-object v1

    .line 33
    new-instance v0, Lcom/android/gallery3d/a/z;

    invoke-direct {v0, p1, v2, v1}, Lcom/android/gallery3d/a/z;-><init>(Lcom/android/gallery3d/a/dd;Lcom/android/gallery3d/a/ao;Lcom/android/gallery3d/a/r;)V

    goto :goto_0

    .line 28
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x101 -> :sswitch_1
    .end sparse-switch
.end method
