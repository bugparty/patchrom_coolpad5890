.class Lcom/android/gallery3d/a/b;
.super Lcom/android/gallery3d/a/ci;
.source "SourceFile"


# static fields
.field private static final f:I = 0x0

.field private static final g:I = 0x1

.field private static final h:I = 0x2


# instance fields
.field private i:Lcom/android/gallery3d/app/cl;

.field private j:Lcom/android/gallery3d/a/bz;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/cl;)V
    .locals 3
    .parameter

    .prologue
    .line 29
    const-string v0, "combo"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/a/ci;-><init>(Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lcom/android/gallery3d/a/b;->i:Lcom/android/gallery3d/app/cl;

    .line 31
    new-instance v0, Lcom/android/gallery3d/a/bz;

    invoke-direct {v0}, Lcom/android/gallery3d/a/bz;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/a/b;->j:Lcom/android/gallery3d/a/bz;

    .line 32
    iget-object v0, p0, Lcom/android/gallery3d/a/b;->j:Lcom/android/gallery3d/a/bz;

    const-string v1, "/combo/*"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/a/bz;->i(Ljava/lang/String;I)V

    .line 33
    iget-object v0, p0, Lcom/android/gallery3d/a/b;->j:Lcom/android/gallery3d/a/bz;

    const-string v1, "/combo/*/*"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/a/bz;->i(Ljava/lang/String;I)V

    .line 34
    iget-object v0, p0, Lcom/android/gallery3d/a/b;->j:Lcom/android/gallery3d/a/bz;

    const-string v1, "/local/image/more"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/a/bz;->i(Ljava/lang/String;I)V

    .line 35
    return-void
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/a/dd;)Lcom/android/gallery3d/a/bj;
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 40
    invoke-virtual {p1}, Lcom/android/gallery3d/a/dd;->gx()[Ljava/lang/String;

    move-result-object v1

    .line 41
    array-length v0, v1

    if-ge v0, v3, :cond_0

    .line 42
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

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/a/b;->i:Lcom/android/gallery3d/app/cl;

    invoke-interface {v0}, Lcom/android/gallery3d/app/cl;->du()Lcom/android/gallery3d/a/ao;

    move-result-object v2

    .line 46
    iget-object v0, p0, Lcom/android/gallery3d/a/b;->j:Lcom/android/gallery3d/a/bz;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/a/bz;->s(Lcom/android/gallery3d/a/dd;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 60
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 49
    :pswitch_0
    new-instance v0, Lcom/android/gallery3d/a/bp;

    iget-object v3, p0, Lcom/android/gallery3d/a/b;->i:Lcom/android/gallery3d/app/cl;

    aget-object v1, v1, v4

    invoke-virtual {v2, v1}, Lcom/android/gallery3d/a/ao;->q(Ljava/lang/String;)[Lcom/android/gallery3d/a/r;

    move-result-object v1

    invoke-direct {v0, p1, v3, v1}, Lcom/android/gallery3d/a/bp;-><init>(Lcom/android/gallery3d/a/dd;Lcom/android/gallery3d/app/cl;[Lcom/android/gallery3d/a/r;)V

    goto :goto_0

    .line 53
    :pswitch_1
    new-instance v0, Lcom/android/gallery3d/a/bp;

    iget-object v3, p0, Lcom/android/gallery3d/a/b;->i:Lcom/android/gallery3d/app/cl;

    aget-object v1, v1, v4

    invoke-virtual {v2, v1}, Lcom/android/gallery3d/a/ao;->q(Ljava/lang/String;)[Lcom/android/gallery3d/a/r;

    move-result-object v1

    invoke-direct {v0, p1, v3, v1}, Lcom/android/gallery3d/a/bp;-><init>(Lcom/android/gallery3d/a/dd;Lcom/android/gallery3d/app/cl;[Lcom/android/gallery3d/a/r;)V

    goto :goto_0

    .line 57
    :pswitch_2
    new-instance v0, Lcom/android/gallery3d/a/w;

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/a/ao;->q(Ljava/lang/String;)[Lcom/android/gallery3d/a/r;

    move-result-object v2

    aget-object v1, v1, v4

    invoke-direct {v0, p1, v2, v1}, Lcom/android/gallery3d/a/w;-><init>(Lcom/android/gallery3d/a/dd;[Lcom/android/gallery3d/a/r;Ljava/lang/String;)V

    goto :goto_0

    .line 46
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
