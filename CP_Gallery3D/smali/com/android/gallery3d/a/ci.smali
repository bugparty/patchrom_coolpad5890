.class public abstract Lcom/android/gallery3d/a/ci;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaSource"


# instance fields
.field private Gp:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/gallery3d/a/ci;->Gp:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public abstract a(Lcom/android/gallery3d/a/dd;)Lcom/android/gallery3d/a/bj;
.end method

.method public a(Ljava/util/ArrayList;Lcom/android/gallery3d/a/bu;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 78
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v4, :cond_2

    .line 79
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/cg;

    .line 80
    iget-object v1, v0, Lcom/android/gallery3d/a/cg;->jy:Lcom/android/gallery3d/a/dd;

    invoke-virtual {v1}, Lcom/android/gallery3d/a/dd;->gw()Lcom/android/gallery3d/a/bj;

    move-result-object v2

    .line 81
    if-nez v2, :cond_1

    .line 83
    :try_start_0
    iget-object v1, v0, Lcom/android/gallery3d/a/cg;->jy:Lcom/android/gallery3d/a/dd;

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/a/ci;->a(Lcom/android/gallery3d/a/dd;)Lcom/android/gallery3d/a/bj;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 88
    :goto_1
    if-eqz v1, :cond_0

    .line 89
    iget v2, v0, Lcom/android/gallery3d/a/cg;->id:I

    move-object v0, v1

    check-cast v0, Lcom/android/gallery3d/a/ax;

    invoke-interface {p2, v2, v0}, Lcom/android/gallery3d/a/bu;->a(ILcom/android/gallery3d/a/ax;)V

    .line 78
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 84
    :catch_0
    move-exception v1

    .line 85
    const-string v5, "MediaSource"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cannot create media object: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/gallery3d/a/cg;->jy:Lcom/android/gallery3d/a/dd;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Lcom/android/gallery3d/a/bx;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    move-object v1, v2

    goto :goto_1

    .line 92
    :cond_2
    return-void
.end method

.method public di()J
    .locals 2

    .prologue
    .line 54
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public dj()J
    .locals 2

    .prologue
    .line 58
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public e(Landroid/net/Uri;)Lcom/android/gallery3d/a/dd;
    .locals 1
    .parameter

    .prologue
    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/gallery3d/a/ci;->Gp:Ljava/lang/String;

    return-object v0
.end method

.method public m(Lcom/android/gallery3d/a/dd;)Lcom/android/gallery3d/a/dd;
    .locals 1
    .parameter

    .prologue
    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method
